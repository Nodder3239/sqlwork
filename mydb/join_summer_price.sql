-- 계절학기 수강료, 등록 테이블
SELECT * FROM summer_price;
SELECT * FROM summer_register;

-- 학생의 모든 수강정보를 검색하시오
SELECT b.sid,
       b.subject,
       a.price
FROM summer_price a, summer_register b
WHERE a.subject = b.subject;


INSERT INTO summer_register values (301, 'Python');

-- 과목별 수강료 합계를 구하시오
SELECT b.subject, SUM(price)
FROM summer_price a, summer_register b
WHERE a.subject = b.subject
GROUP BY b.subject;

-- 과목별 수강료 합계 및 전체 총계를 구하시오
-- ROLLUP(), CUBE()
-- NVL(과목, '총계') : 과목이 NULL이면 '총계' 출력
SELECT NVL(b.subject, '총계'), SUM(price)
FROM summer_price a, summer_register b
WHERE a.subject = b.subject
GROUP BY ROLLUP (b.subject);