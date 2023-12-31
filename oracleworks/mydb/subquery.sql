-- 서브 쿼리(Sub Query): 부속질의(중첩 쿼리)
-- SELECT문 내부에 또 SELECT문이 존재함

-- 도서 중 가장 높은 가격을 검색하시오
SELECT MAX(price) FROM book;

-- 단일행 서브쿼리
-- 도서 중 가장 비싼 도서의 이름을 검색하시오
SELECT bookname FROM book WHERE price = (SELECT MAX(price) FROM book);

-- 다중형 서브쿼리(IN)
-- 도서를 구매한 적이 있는 고객의 이름 출력
SELECT name FROM customer WHERE custid IN (SELECT custid FROM orders);

-- 도서를 구매한 적이 없는 고객의 이름 출력
SELECT name FROM customer WHERE custid NOT IN (SELECT custid FROM orders);


-- 조인 방식 : customer, orders
-- 도서를 구매한 적이 있는 고객의 이름을 검색하시오
SELECT name FROM customer WHERE custid IN (SELECT custid FROM orders);
SELECT DISTINCT cus.name FROM customer cus, orders ord WHERE ord.custid = cus.custid;

-- FROM절에 있는 서브쿼리 - 인라인뷰 라고도 함
-- 고객의 이름과 그 고객의 판매액 검색(customer, orders)
-- 그룹별 : GROUP BY
-- 단, 고객 번호가 2 이하임

-- 동등 조인
SELECT cs.name, SUM(od.saleprice) total FROM customer cs, orders od 
WHERE cs.custid = od.custid AND cs.custid <=2
GROUP BY cs.name 
HAVING SUM(od.saleprice) >= 30000;

/*
    실행 순서
    1. FROM절 테이블명
    2. WHERE, GROUP BY
    3. SELECT절
    4. ORDER절
*/

-- 서브 쿼리
SELECT cs.name, SUM(od.saleprice) 
FROM (SELECT * FROM customer WHERE custid <=2) cs, 
      orders od 
WHERE cs.custid = od.custid GROUP BY cs.name;

SELECT * FROM product;
SELECT * FROM product_review;

-- 스칼라 서브쿼리
-- 상품 리뷰 테이블에 있는 상품 이름 검색
SELECT a.product_code, 
       (SELECT b.product_name FROM product b 
        WHERE a.product_code = b.product_code) product_name,
       a. member_id, 
       a.content
FROM product_review a; 