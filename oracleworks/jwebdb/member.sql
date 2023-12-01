-- jweb, member ���̺� ����
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
VALUES (seq_mno.NEXTVAL, 'khit', 'm1234567', '����', 'khit@gmail.com', '��');

COMMIT;

SELECT * FROM member ORDER BY mno;

-- id�� 'khit'�� ȸ���� ����
SELECT * FROM member WHERE id = 'khit';

-- id�� passwd�� ��ġ�ϴ� ȸ�� ã��
SELECT * FROM member WHERE id = 'khit' and passwd ='m1234567';

