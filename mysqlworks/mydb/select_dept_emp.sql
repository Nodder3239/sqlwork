

select * from department;
select * from employee;

-- 삽입 오류 : 부서 테이블에 아이디가 30이 없어서 에러
insert into employee values(106, '양신입', 25, null, 30);

-- 급여가 400만원 이상이고, 부서 번호가 10인 사원을 검색하시오
select * from employee where sal >= 4000000 and deptid = 10;

-- 급여가 많은 순으로 정렬하시오
select * from employee order by sal desc;

-- 급여가 없는 사원을 검색하시오
select * from employee where sal is null;

-- 사원의 총 인원, 급여 총액과 급여 평균을 구하시오
select count(*) "총 인원", sum(sal) "급여 총액", round(avg(sal), 0) "급여 평균" from employee;
 
-- 부서별 급여 총액을 구하시오
select deptid, sum(sal) from employee group by deptid;
 
-- 부서 이름을 포함한 사원의 모든 정보를 검색하시오(조인)
select a.deptname, b.* from department a, employee b where a.deptid = b.deptid;
select a.deptname, b.* from department a join employee b on a.deptid = b.deptid;
select a.deptname, b.* from department a join employee b using (deptid);

-- 부서별, 부서 이름별 급여 총액
select a.deptid, a.deptname, sum(b.sal), round(avg(b.sal), -2)
from department a join employee b 
on a.deptid = b.deptid 
group by deptid, deptname
with rollup;

-- 최고 급여와 최저급여를 받는 사원의 정보를 검색하세요
select * from employee 
where sal = (select max(sal) from employee) or sal = (select min(sal) from employee);

-- '백두산' 사원의 급여를 4300000원으로 수정하세요
-- 이름이 중복될 수 있으므로 기본키를 기준으로만 수정
update employee set sal = 4300000 where empid = 102;

-- 사원의 급여 순위를 구하시오
select *, rank() over(order by sal desc), dense_rank() over(order by sal desc) 
from employee 
order by sal desc; 