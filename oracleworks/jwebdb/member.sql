-- jweb, member 테이블 생성
CREATE TABLE member(
    mno     INT,
    id      VARCHAR2(20) NOT NULL UNIQUE,
    passwd  VARCHAR2(20) NOT NULL,
    name    VARCHAR2(30) NOT NULL,
    email   VARCHAR2(50),
    gender  VARCHAR2(6),
    joindate    TIMESTAMP DEFAULT SYSTIMESTAMP,
    PRIMARY KEY(mno)
);

CREATE SEQUENCE seq_mno NOCACHE;

INSERT INTO member(mno, id, passwd, name, email, gender)
VALUES (seq_mno.NEXTVAL, 'khit', 'm1234567', '김기용', 'khit@gmail.com', '남');

COMMIT;

SELECT * FROM member ORDER BY mno;

-- id가 'khit'인 회원의 정보
SELECT * FROM member WHERE id = 'khit';

-- id와 passwd가 일치하는 회원 찾기
SELECT * FROM member WHERE id = 'khit' and passwd ='m1234567';

