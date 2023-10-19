-- 은행 계좌 테이블 생성
CREATE TABLE account(
    ano         VARCHAR2(20) PRIMARY KEY,
    owner       VARCHAR2(20) NOT NULL,
    balance     NUMBER NOT NULL
);

INSERT INTO account VALUES ('11-11-111', '이상현', 10000);

commit;

SELECT * FROM account;

UPDATE account 
SET balance = balance + 20000,
    owner = '박대박'
where owner = '왕대박';

ROLLBACK;