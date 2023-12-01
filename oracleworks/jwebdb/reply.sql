-- reply 테이블 생성
CREATE TABLE reply (
    rno         NUMBER PRIMARY KEY,
    bno         NUMBER NOT NULL,
    rcontent    VARCHAR2(2000) NOT NULL,
    replyer     VARCHAR2(20) NOT NULL,
    rdate       TIMESTAMP DEFAULT SYSTIMESTAMP,
    rupdate     TIMESTAMP,
    FOREIGN KEY (bno) REFERENCES board(bno) ON DELETE CASCADE
);