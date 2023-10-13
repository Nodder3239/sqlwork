-- 숫자 타입 내장 함수
-- 절대값 구하기 : ABS()
-- 제공 테이블 : dual
SELECT ABS(-10) FROM dual;

-- 반올림 : ROUND(숫자, 자리수)
SELECT ROUND(127.67, 1) FROM dual;  -- 소수 첫째자리
SELECT ROUND(127.67, 0) FROM dual;  -- 0의 자리
SELECT ROUND(127.67, -1) FROM dual; -- 1의 자리로 반올림
SELECT ROUND(127.67, -2) FROM dual; -- 10의 자리로 반올림

-- 버림(내림) : TRUNC(숫자, 자리수), FLOOR(숫자) - 정수로 내림한다
SELECT TRUNC(127.67, 1) FROM dual;  -- 소수 첫째자리까지 표시(이후 버림)
SELECT TRUNC(127.67, 0) FROM dual;  -- 
SELECT TRUNC(127.67, -1) FROM dual;
SELECT TRUNC(127.67, -2) FROM dual;

-- 거듭제곱 : POWER(밑, 지수)
SELECT POWER(2, 3) FROM dual;

-- 문자 타입
-- 소문자로 변경하기 : LOWER('대문자')
-- 대문자로 변경하기 : UPPER('소문자')
SELECT LOWER('ABCD') FROM dual;
SELECT UPPER('abcd') FROM dual;

-- 문자열의 일부분을 추출 : SUBSTR(문자열, 인덱스, 자리수)
SELECT SUBSTR('abcd', 1, 2) FROM dual;

-- 문자열을 찾아 바꾸기 : REPLACE(문자열, 변경전문자, 변경후문자)
SELECT REPLACE('abcd', 'c', 'e') FROM dual;

-- 문자열의 길이 : LENGTH()
SELECT LENGTH('abcd') FROM dual;

-- 마스킹
-- LPAD(문자열, 길이, 특정문자) - 왼쪽부터 특정문자로 채움
-- RPAD(문자열, 길이, 특정문자) - 오른쪽부터 특정문자로 채움
SELECT LPAD('today', 10, '*') FROM dual;
SELECT RPAD('today', 10, '*') FROM dual;

-- 주문테이블
-- 고객별 평균 주문 금액을 반올림
SELECT *
FROM orders;

SELECT custid as 고객번호,
       SUM(saleprice) as 합계금액,
       COUNT(saleprice) as 주문건수,
       ROUND(AVG(saleprice), 2) as 평균주문금액 
FROM orders GROUP BY custid;

-- 도서테이블
-- 책 제목의 글자 수
-- 책 제목의 바이트 수 : 한글 - 3byte, 영어, 특수문자 - 1byte
SELECT *
FROM book;

SELECT bookname, 
    LENGTH(bookname) AS 글자수, 
    LENGTHB(bookname) AS 바이트수 
FROM book;

-- '축구'를 '농구'로 변경하여 검색
SELECT bookname,
    REPLACE(bookname, '축구', '농구') as bookname
FROM book;

-- 고객 테이블
-- 고객 이름별 같은 성을 가진 고객의 인원 순
SELECT SUBSTR(name, 1, 1) AS 성,
    COUNT(*) AS 인원
FROM customer
GROUP BY SUBSTR(name, 1, 1);