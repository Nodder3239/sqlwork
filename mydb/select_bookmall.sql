SELECT * FROM orders;
DESC orders;


-- 통계 함수 - 개수(COUNT), 합계(SUM), 평균(AVG), 최대값(MAX), 최소값(MIN)
-- COUNT(*) : '*' - 칼럼명
-- COUNT(saleprice)
SELECT COUNT (orderid) AS 총판매건수 FROM orders;

SELECT SUM (saleprice) AS 총판매액, AVG (saleprice) AS 평균액 FROM orders;

-- 고객별로 주문한 도서의 총판매액을 계산
-- 그룹으로 묶을때 사용 - GROUP BY 칼럼명
-- HAVING 절 사용 - GROUP BY 절에서 조건이 있을 때 사용
SELECT custid, COUNT(*) AS 도서수량, SUM (saleprice) AS 총판매액 FROM orders 
GROUP BY custid
HAVING COUNT(*) >= 3;
    --AND SUM(saleprice) > 35000;

-- 도서 중에서 최대 가격, 최저 가격 알기
SELECT MAX (price) 최고가격, MIN (price) 최저가격 FROM book;

SELECT * FROM customer;

-- '3번 고객(안산)'이 주문한 도서의 총 판매액 구하기
SELECT sum(saleprice) AS 총판매액 from orders
WHERE custid = 3;

-- 조인(Join) 
-- 동등 조인(EQUI JOIN): equal(=)을 사용하는 조인
-- 테이블A.칼럼명 = 테이블B.칼럼명 (칼럼 - 기본키와 외래키)
-- 고객의 이름과 고객이 주문한 도서의 판매가격을 검색하시오(customer, orders 조인)
SELECT customer.name, orders.saleprice FROM customer, orders
WHERE customer.custid = orders.custid;

-- 별칭 사용 조인
-- 고객 이름별 1차 정렬(오름차순), 주문 가격별 내림차순 2차 정렬
SELECT cus.name, ord.saleprice FROM customer cus, orders ord
WHERE cus.custid = ord.custid
order by cus.name, ord.saleprice desc;

-- 3번 고객의 아이디와 도서이름과 주문 가격
SELECT custid, bookname, saleprice FROM orders, book 
WHERE orders.bookid = book.bookid
AND orders.custid = 3;

SELECT customer.custid, book.bookname, orders.saleprice FROM orders, customer, book 
WHERE orders.custid = customer.custid
AND orders.bookid = book.bookid 
AND customer.name = '안산';


SELECT COUNT (*) AS 총고객수, COUNT(phone) AS 전화번호 FROM customer;