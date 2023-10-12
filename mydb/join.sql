-- ���� : �� ���̺��� ���� �����Ͽ� ����ϴ� ���
-- ��������(Equi join) : ���� ������ ��Ȯ�� ��ġ�ϴ� ��쿡 ��� ���
-- �ܺ�����(Outer join) : ���� ������ ��Ȯ�� ��ġ���� �ʾƵ� ��� ����� ���

-- ��(customer)�� ���� �ֹ�(orders)�� ���� �����͸� ��� �˻��Ͻÿ�
-- �� �̸����� ����(�ڵ����� �׷�ȭ ��)
SELECT cus.name, ord.saleprice FROM customer cus, orders ord 
WHERE cus.custid = ord.custid ORDER BY cus.name;

-- ���� : '������' ���� �ֹ������� �˻��Ͻÿ�
SELECT cus.name, ord.saleprice FROM customer cus, orders ord 
WHERE cus.custid = ord.custid AND cus.name = '������' ORDER BY saleprice;

-- ���� �ֹ� �ݾ��� �Ѿ��� ���(GROUP BY�� ���)
-- �迬�� ���� �ֹ� �ѱݾ��� ���(HAVING���� ����)
SELECT cus.name, SUM(ord.saleprice) FROM customer cus, orders ord 
WHERE cus.custid = ord.custid GROUP BY cus.name
HAVING cus.name = '�迬��' ORDER BY cus.name;

-- �ֹ����� ���� �����͵� ��� �˻�
-- ������ ��ġ���� ���� ���̺� +�� �־���
SELECT cus.name, ord.saleprice FROM customer cus, orders ord 
WHERE cus.custid = ord.custid(+) ORDER BY cus.name;

-- ���� �̸�, �ֹ��� ���� �̸�, �ֹ���, �ֹ��ݾ�
SELECT cus.name, bk.bookname, ord.orderdate, ord.saleprice
FROM customer cus, book bk, orders ord
WHERE cus.custid = ord.custid AND bk.bookid = ord.bookid; -- �⺻Ű = �ܷ�Ű

-- ǥ�� ����(ANSI JOIN)
-- ���� ����(INNER JOIN)
-- ��(customer)�� ���� �ֹ�(orders)�� ���� ������ �� 
-- ���� �̸��� ���� �ֹ��� ������ �ǸŰ����� �˻��Ͻÿ�
SELECT cus.name, ord.saleprice FROM customer cus INNER JOIN orders ord
    ON cus.custid = ord.custid;
    
-- �ܺ� ����(OUTER JOIN)
-- JOIN ���ǿ� �����ϴ� �����Ͱ� �ƴϾ ����ϴ� ���
-- ��(customer)�� ���� �ֹ�(orders)�� ���� ������ �� �ֹ����� ���� �����͸� �����Ͽ�
-- ���� �̸��� ���� �ֹ��� ������ �ǸŰ����� �˻��Ͻÿ�

SELECT cus.name, ord.saleprice
FROM customer cus LEFT OUTER JOIN orders ord
    ON cus.custid = ord.custid
ORDER BY cus.name;