-- ROWNUM(로우번호, 행번호)
-- 행 수를 제한하고 싶을 때 사용, SUDO COLUMN이라도 함

CREATE TABLE ex_score(
    name VARCHAR2(10),
    score number(3)
);

INSERT INTO ex_score VALUES('김하나', 94);
INSERT INTO ex_score VALUES('고하나', 85);
INSERT INTO ex_score VALUES('이하나', 100);
INSERT INTO ex_score VALUES('박하나', 97);
INSERT INTO ex_score VALUES('정하나', 87);
INSERT INTO ex_score VALUES('최하나', 87);
INSERT INTO ex_score VALUES('윤하나', 91);
INSERT INTO ex_score VALUES('임하나', 77);
INSERT INTO ex_score VALUES('장하나', 80);
INSERT INTO ex_score VALUES('함하나', 95);

SELECT * FROM ex_score;

-- 1부터 5행까지 정보 출력
SELECT ROWNUM, name, score FROM ex_score
WHERE ROWNUM <= 5;

-- 2부터 6행까지 데이터 출력 (불가)
-- NOWNUM은 1부터 시작해야 함
SELECT ROWNUM, name, score FROM ex_score
WHERE ROWNUM <= 6 AND ROWNUM >= 2;

-- 1부터 6행까지 데이터 출력
SELECT ROWNUM, name, score FROM ex_score
WHERE ROWNUM <= 6 AND ROWNUM >= 1;

-- 점수를 내림차순 정렬하여 검색하시오
SELECT * FROM ex_score
ORDER BY score DESC;

-- 점수가 높은 순으로 5명을 검색하시오
SELECT ROWNUM, name, score 
FROM (SELECT * FROM ex_score ORDER BY score DESC) 
WHERE ROWNUM <= 5;

/*
    실행순서
    1. FROM절 테이블명
    2. WHERE, GROUP BY
    3. SELECT 절
    4. ORDER 절
*/

-- 성적 순위
SELECT 
    name, 
    score, 
    RANK() OVER(ORDER BY score DESC) 순위1,
    DENSE_RANK() OVER(ORDER BY score DESC) 순위2
FROM ex_score;



COMMIT;

DROP TABLE ex_score;