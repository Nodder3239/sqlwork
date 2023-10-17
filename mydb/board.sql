-- �ڹ� �Խ��� ������ board ���̺� ����
CREATE TABLE board(
    bno         NUMBER PRIMARY KEY,
    btitle      VARCHAR2(100) NOT NULL,
    bcontent    CLOB NOT NULL,      -- CLOB(Character Large Of Byte), �ִ� 4GB
    bwriter     VARCHAR2(50) NOT NULL,
    bdate       DATE DEFAULT SYSDATE
);

CREATE SEQUENCE seq NOCACHE;

INSERT INTO board(bno, btitle, bcontent, bwriter)
VALUES (seq.NEXTVAL, '���� �λ�', '�ȳ��ϼ���~ ������ �ݰ����ϴ�.', 'today10');
INSERT INTO board(bno, btitle, bcontent, bwriter)
VALUES (seq.NEXTVAL, '���� ����', 'õ�� ������ û���մϴ�.', 'admin0000');

select * from board
ORDER BY bno DESC;

commit;
