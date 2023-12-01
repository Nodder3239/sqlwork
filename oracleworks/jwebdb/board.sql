-- �Խ���
CREATE TABLE board (
    bno         NUMBER PRIMARY KEY,
    title       VARCHAR2(100),
    content     CLOB,
    createdate  TIMESTAMP DEFAULT SYSTIMESTAMP,
    modifydate  TIMESTAMP,
    hit         NUMBER DEFAULT 0,
    filename    VARCHAR2(50),
    id          VARCHAR2(20) NOT NULL,
    FOREIGN KEY(id) REFERENCES member(id) ON DELETE CASCADE    
);

CREATE SEQUENCE seq_bno NOCACHE;

INSERT INTO board(bno, title, content, id)
VALUES (seq_bno.NEXTVAL, '������', '�۳����Դϴ�.', 'khit');

SELECT * FROM board ORDER BY bno;

COMMIT;

-- ��ȣ�� 1���� �Խñ��� ��ȸ���� 1 ����
UPDATE board SET hit = hit+1 WHERE bno = 1;