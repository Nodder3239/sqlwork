-- emp 테이블
CREATE TABLE emp(
    empno       NUMBER(3) primary key,  --사원번호
    ename       VARCHAR(20) not null,   --사원이름
    gender      VARCHAR(6) not null,    --성별
    salary      NUMBER(10),             --급여
    hire_date   VARCHAR2(20) not null   --입사일
);

-- 자료 생성
INSERT INTO emp VALUES (100, '이강', '남자', 3000000, '2019-01-01');
INSERT INTO emp VALUES (101, '김산', '여자', 2500000, '2020-05-15');
INSERT INTO emp VALUES (102, '오상식', '남자', 5000000, '2015-02-22');
INSERT INTO emp VALUES (103, '박신입', '여자', null, '2023-10-01');

COMMIT;

SELECT * FROM emp;
-- 급여가 가장 많은 사원의 이름과 급여를 검색하시오
-- 서브쿼리(subquery), 중첩쿼리(메인쿼리, 서브쿼리)
SELECT ename, salary FROM emp WHERE salary = (SELECT MAX(salary) FROM emp);

-- 급여가 가장 많은 사원과 가장 적은 사원의 이름과 급여를 검색하시오
SELECT ename, salary FROM emp 
WHERE salary = (SELECT MAX(salary) FROM emp) 
   OR salary = (SELECT MIN(salary) FROM emp);

-- 1. 사원을 입사일 순으로 정렬하시오(오름차순 정렬)
SELECT * FROM emp ORDER BY hire_date;

-- 2. 사원을 급여 순으로 정렬하시오(오름차순 정렬)
SELECT * FROM emp ORDER BY salary;

-- 3. 급여가 300만원 이하인 사원을 급여가 많은 순으로 정렬하시오
SELECT * FROM emp WHERE salary <= 3000000 ORDER BY salary DESC;

-- 4. 급여가 없는 사원을 검색하시오
SELECT * FROM emp WHERE salary is null;

-- 5. 사원의 총 수를 구하시오
SELECT COUNT(*) as 사원수 FROM emp;

-- 6. 사원의 급여 합계와 평균을 구하시오
SELECT SUM(salary) as 급여합계, AVG(salary) as 평균 FROM emp;

-- 7. 이름이 김산인 사원의 성별을 남자로 변경하시오
UPDATE emp SET gender = '남자' WHERE ename = '김산';

-- 8. 이름이 오상식인 사원을 삭제하시오
DELETE FROM emp WHERE ename = '오상식';

ROLLBACK;

-- 반올림 : ROUND(숫자, 자리수)
SELECT 
    ename 사원이름, 
    salary 급여, 
    ROUND(salary/30, 1) 결과1,
    ROUND(salary/30, 0) 결과2,
    ROUND(salary/30, -1) 결과3
FROM emp;