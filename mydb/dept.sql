--
CREATE TABLE dept(
    deptid NUMBER PRIMARY KEY,     -- �⺻Ű   
    deptname VARCHAR2(20) NOT NULL,     -- NULL ����
    location VARCHAR2(20) NOT NULL
);

INSERT INTO dept(deptid, deptname, location)
VALUES (10, '������', '����');
INSERT INTO dept(deptid, deptname, location)
VALUES (20, '������', '��õ');
INSERT INTO dept(deptid, deptname, location)
VALUES (30, '��������', '����');

SELECT * FROM dept; 

COMMIT;

-- �μ� �̸����� ���� ������ �̸��� ����Ͻÿ�
SELECT SUBSTR(deptname, 1, LENGTH(deptname)-1) as ���� FROM dept;
SELECT REPLACE(deptname, '��', '') as ���� FROM dept;