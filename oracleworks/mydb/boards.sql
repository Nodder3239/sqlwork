-- �Խ��� ���̺�
CREATE TABLE boards(
    bno         NUMBER PRIMARY KEY,
    btitle      VARCHAR2(100) NOT NULL,
    bcontent    CLOB NOT NULL,      -- CLOB(Character Large Of Byte), �ִ� 4GB
    bwriter     VARCHAR2(50) NOT NULL,
    bdate       DATE DEFAULT SYSDATE,
    bfilename   VARCHAR2(50),
    bfiledata   BLOB        -- BLOB(Binary Large Of Byte), �ִ� 4GB
);

-- ������ ����
CREATE SEQUENCE seq_bno NOCACHE;

-- �Խñ� �߰�
INSERT INTO boards(bno, btitle, bcontent, bwriter)
VALUES (seq_bno.NEXTVAL, 'smartPhone', '�Ｚ ������ S21�Դϴ�', 'today');

INSERT INTO boards(bno, btitle, bcontent, bwriter, bdate, bfilename, bfiledata)
VALUES (seq_bno.NEXTVAL, 'smartPhone', '�Ｚ ������ S21�Դϴ�', 'today', SYSDATE, NULL, NULL);

SELECT * FROM boards ORDER BY bno DESC;

COMMIT;
ROLLBACK;

SELECT * FROM boards
WHERE bwriter = 'sky123'
ORDER BY bno DESC;

-- �۹�ȣ 5���� ������ '������'���� ����
UPDATE boards set btitle='������ 15'
, bcontent = '������ 15�Դϴ�'
where bno=5;

DROP TABLE boards;
DELETE FROM boards WHERE bno = 6;
UPDATE boards set bno=5 where bno=7;

DELETE FROM boards WHERE bno = 1;