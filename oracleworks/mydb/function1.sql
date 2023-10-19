-- ���� Ÿ�� ���� �Լ�
-- ���밪 ���ϱ� : ABS()
-- ���� ���̺� : dual
SELECT ABS(-10) FROM dual;

-- �ݿø� : ROUND(����, �ڸ���)
SELECT ROUND(127.67, 1) FROM dual;  -- �Ҽ� ù°�ڸ�
SELECT ROUND(127.67, 0) FROM dual;  -- 0�� �ڸ�
SELECT ROUND(127.67, -1) FROM dual; -- 1�� �ڸ��� �ݿø�
SELECT ROUND(127.67, -2) FROM dual; -- 10�� �ڸ��� �ݿø�

-- ����(����) : TRUNC(����, �ڸ���), FLOOR(����) - ������ �����Ѵ�
SELECT TRUNC(127.67, 1) FROM dual;  -- �Ҽ� ù°�ڸ����� ǥ��(���� ����)
SELECT TRUNC(127.67, 0) FROM dual;  -- 
SELECT TRUNC(127.67, -1) FROM dual;
SELECT TRUNC(127.67, -2) FROM dual;

-- �ŵ����� : POWER(��, ����)
SELECT POWER(2, 3) FROM dual;

-- ���� Ÿ��
-- �ҹ��ڷ� �����ϱ� : LOWER('�빮��')
-- �빮�ڷ� �����ϱ� : UPPER('�ҹ���')
SELECT LOWER('ABCD') FROM dual;
SELECT UPPER('abcd') FROM dual;

-- ���ڿ��� �Ϻκ��� ���� : SUBSTR(���ڿ�, �ε���, �ڸ���)
SELECT SUBSTR('abcd', 1, 2) FROM dual;

-- ���ڿ��� ã�� �ٲٱ� : REPLACE(���ڿ�, ����������, �����Ĺ���)
SELECT REPLACE('abcd', 'c', 'e') FROM dual;

-- ���ڿ��� ���� : LENGTH()
SELECT LENGTH('abcd') FROM dual;

-- ����ŷ
-- LPAD(���ڿ�, ����, Ư������) - ���ʺ��� Ư�����ڷ� ä��
-- RPAD(���ڿ�, ����, Ư������) - �����ʺ��� Ư�����ڷ� ä��
SELECT LPAD('today', 10, '*') FROM dual;
SELECT RPAD('today', 10, '*') FROM dual;

-- �ֹ����̺�
-- ���� ��� �ֹ� �ݾ��� �ݿø�
SELECT *
FROM orders;

SELECT custid as ����ȣ,
       SUM(saleprice) as �հ�ݾ�,
       COUNT(saleprice) as �ֹ��Ǽ�,
       ROUND(AVG(saleprice), 2) as ����ֹ��ݾ� 
FROM orders GROUP BY custid;

-- �������̺�
-- å ������ ���� ��
-- å ������ ����Ʈ �� : �ѱ� - 3byte, ����, Ư������ - 1byte
SELECT *
FROM book;

SELECT bookname, 
    LENGTH(bookname) AS ���ڼ�, 
    LENGTHB(bookname) AS ����Ʈ�� 
FROM book;

-- '�౸'�� '��'�� �����Ͽ� �˻�
SELECT bookname,
    REPLACE(bookname, '�౸', '��') as bookname
FROM book;

-- �� ���̺�
-- �� �̸��� ���� ���� ���� ���� �ο� ��
SELECT SUBSTR(name, 1, 1) AS ��,
    COUNT(*) AS �ο�
FROM customer
GROUP BY SUBSTR(name, 1, 1);