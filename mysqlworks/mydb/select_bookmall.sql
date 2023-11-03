-- bookmall select
use mydb;

select * from book;

-- 도서를 이름 순으로 정렬
select * from book order by bookname;

-- 도서를 가격 순으로 정렬
select * from book order by price desc;

-- 도서 이름에 '축구'가 포함된 출판사를 검색
select publisher from book where bookname like '%축구%';

-- 도서 이름에 '축구'가 포함되고 가격이 10000원 이상인 도서 검색
select * from book where bookname like '%축구%' and price >= 10000;

-- 도서 테이블에 있는 중복된 이름은 제외하고 모든 출판사를 검색
select distinct publisher from book;

-- 가격이 10000원 이상이고 20000원 이하인 도서 검색
select * from book where price >= 10000 and price <= 20000;
select * from book where price between 10000 and 20000;

-- 가격이 13000원이 아닌 도서 검색
select * from book where price != 13000;
select * from book where price <> 13000;

select * from customer;

-- 고객을 이름 순으로 정렬하시오(오름차순) asc
select * from customer order by name;

-- 전화번호가 없는 고객을 검색하시오
select * from customer where phone = '';

-- 주소가 대한민국인 고객을 검색하시오
select * from customer where address like '%대한민국%';

-- 주소가 대한민국이 아닌 고객을 검색하시오
select * from customer where address not like '%대한민국%';

-- 고객의 총 인원을 구하시오
select count(*) as 총인원 from customer;

-- 도서 가격이 가장 높은 도서를 검색하시오
select * from book where price = (select max(price) from book);

-- 주문 테이블에서 주문가격의 총 판매액과 평균액을 구하시오
select sum(saleprice) as 총판매액, round(avg(saleprice), 0) as 평균액 from orders;

-- 고객 별로 주문한 도서의 총 판매액을 계산
-- 출력 : 고객 아이디, 총 판매액
select custid, count(*) 도서수량, sum(saleprice) 총판매액 from orders group by custid;

-- 도서를 3권 이상 산 자료를 검색하시오
select custid, count(*), sum(saleprice) from orders group by custid having count(*) >= 3;

-- 도서를 3권 이상 산 고객의 이름을 검색하시오
select b.name from orders a, customer b where a.custid = b.custid group by a.custid having count(*) >= 3;