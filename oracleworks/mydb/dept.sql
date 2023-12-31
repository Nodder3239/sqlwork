--
CREATE TABLE dept(
    deptid NUMBER PRIMARY KEY,     -- 기본키   
    deptname VARCHAR2(20) NOT NULL,     -- NULL 불허
    location VARCHAR2(20) NOT NULL
);

INSERT INTO dept(deptid, deptname, location)
VALUES (10, '전산팀', '서울');
INSERT INTO dept(deptid, deptname, location)
VALUES (20, '관리팀', '인천');
INSERT INTO dept(deptid, deptname, location)
VALUES (30, '마케팅팀', '수원');

SELECT * FROM dept; 

COMMIT;

-- 부서 이름에서 팀을 제외한 이름을 출력하시오
SELECT SUBSTR(deptname, 1, LENGTH(deptname)-1) as 팀명 FROM dept;
SELECT REPLACE(deptname, '팀', '') as 팀명 FROM dept;