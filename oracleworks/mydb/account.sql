-- ���� ���� ���̺� ����
CREATE TABLE account(
    ano         VARCHAR2(20) PRIMARY KEY,
    owner       VARCHAR2(20) NOT NULL,
    balance     NUMBER NOT NULL
);

INSERT INTO account VALUES ('11-11-111', '�̻���', 10000);

commit;

SELECT * FROM account;

UPDATE account 
SET balance = balance + 20000,
    owner = '�ڴ��'
where owner = '�մ��';

ROLLBACK;