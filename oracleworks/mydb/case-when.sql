-- ���� ó�� �Լ�
CREATE TABLE Mytest(
    class   VARCHAR2(1), -- ��
    name    VARCHAR2(6)  -- �̸�
);

INSERT INTO Mytest VALUES ('A', '����');
INSERT INTO Mytest VALUES ('A', '����');
INSERT INTO Mytest VALUES ('A', '����');
INSERT INTO Mytest VALUES ('B', '����');
INSERT INTO Mytest VALUES ('B', '����');
INSERT INTO Mytest VALUES ('C', '����');
INSERT INTO Mytest VALUES ('C', '����');

COMMIT;
SELECT * FROM Mytest;

CREATE TABLE Mytest2(
    Col1 NUMBER(1)
);

INSERT INTO Mytest2 VALUES (NULL);
INSERT INTO Mytest2 VALUES (0);
INSERT INTO Mytest2 VALUES (NULL);
INSERT INTO Mytest2 VALUES (0);
INSERT INTO Mytest2 VALUES (NULL);



--�� �� �ο��� ���
SELECT class ��, COUNT(name) �ο���
FROM Mytest
GROUP BY class;

-- �� �� �ο���(�ߺ� �̸� ���� ��) ���
SELECT class ��, COUNT(DISTINCT name) �ο���
FROM Mytest
GROUP BY class;

-- DECODE(Į����, ����, ��, ����)�� �̿��� �ο� �� ���
SELECT COUNT(DECODE(class, 'A', 1)) A,
        COUNT(DECODE(class, 'B', 1)) B,
        COUNT(DECODE(class, 'C', 1)) C
FROM Mytest;

-- ���� ����(IF ~ ELSE�� ����)
/*
    CASE
        WHEN ����1 THEN ���1
        WHEN ����2 THEN ���2
        ELSE ���3
    END Į����
*/
SELECT 
    COUNT(CASE WHEN class='A' THEN 1 END) A,
    COUNT(CASE WHEN class='B' THEN 1 END) B,
    COUNT(CASE WHEN class='C' THEN 1 END) C
FROM Mytest;

-- Mytest2 ���� ó��
SELECT * FROM Mytest2;

-- COL1�� �����Ͱ� NULL�̸� 0���� ǥ����
SELECT COL1, 
    DECODE(Col1, NULL, -1, Col1) DATA1,
    CASE WHEN COL1 IS NULL THEN -1 ELSE Col1 END DATA2
FROM Mytest2;