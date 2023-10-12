-- 고객 테이블 생성
CREATE TABLE customer(
    custid      NUMBER PRIMARY KEY,
    name        VARCHAR2(40) NOT NULL,
    address     VARCHAR2(50),
    phone       VARCHAR2(20)
);