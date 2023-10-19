-- emp ���̺�
CREATE TABLE emp(
    empno       NUMBER(3) primary key,  --�����ȣ
    ename       VARCHAR(20) not null,   --����̸�
    gender      VARCHAR(6) not null,    --����
    salary      NUMBER(10),             --�޿�
    hire_date   VARCHAR2(20) not null   --�Ի���
);

-- �ڷ� ����
INSERT INTO emp VALUES (100, '�̰�', '����', 3000000, '2019-01-01');
INSERT INTO emp VALUES (101, '���', '����', 2500000, '2020-05-15');
INSERT INTO emp VALUES (102, '�����', '����', 5000000, '2015-02-22');
INSERT INTO emp VALUES (103, '�ڽ���', '����', null, '2023-10-01');

COMMIT;

SELECT * FROM emp;
-- �޿��� ���� ���� ����� �̸��� �޿��� �˻��Ͻÿ�
-- ��������(subquery), ��ø����(��������, ��������)
SELECT ename, salary FROM emp WHERE salary = (SELECT MAX(salary) FROM emp);

-- �޿��� ���� ���� ����� ���� ���� ����� �̸��� �޿��� �˻��Ͻÿ�
SELECT ename, salary FROM emp 
WHERE salary = (SELECT MAX(salary) FROM emp) 
   OR salary = (SELECT MIN(salary) FROM emp);

-- 1. ����� �Ի��� ������ �����Ͻÿ�(�������� ����)
SELECT * FROM emp ORDER BY hire_date;

-- 2. ����� �޿� ������ �����Ͻÿ�(�������� ����)
SELECT * FROM emp ORDER BY salary;

-- 3. �޿��� 300���� ������ ����� �޿��� ���� ������ �����Ͻÿ�
SELECT * FROM emp WHERE salary <= 3000000 ORDER BY salary DESC;

-- 4. �޿��� ���� ����� �˻��Ͻÿ�
SELECT * FROM emp WHERE salary is null;

-- 5. ����� �� ���� ���Ͻÿ�
SELECT COUNT(*) as ����� FROM emp;

-- 6. ����� �޿� �հ�� ����� ���Ͻÿ�
SELECT SUM(salary) as �޿��հ�, AVG(salary) as ��� FROM emp;

-- 7. �̸��� ����� ����� ������ ���ڷ� �����Ͻÿ�
UPDATE emp SET gender = '����' WHERE ename = '���';

-- 8. �̸��� ������� ����� �����Ͻÿ�
DELETE FROM emp WHERE ename = '�����';

ROLLBACK;

-- �ݿø� : ROUND(����, �ڸ���)
SELECT 
    ename ����̸�, 
    salary �޿�, 
    ROUND(salary/30, 1) ���1,
    ROUND(salary/30, 0) ���2,
    ROUND(salary/30, -1) ���3
FROM emp;