-- user ���� : test, ��� : pwtest

CREATE USER c##test IDENTIFIED by pwtest;

-- CREATE SESSION ������ ������ ���� ����
-- SESSION ����(�α��� - ����) �ο�
GRANT CREATE SESSION TO c##test;

-- DB�� ���̺� ���� ���� �ο�
GRANT CREATE TABLE, RESOURCE TO c##test;

-- ������ ������ ��� ���� �ο� - DML(����, ��ȸ, ����, ����)
GRANT CONNECT, DBA TO c##test;