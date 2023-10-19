-- ���� ����(Sub Query): �μ�����(��ø ����)
-- SELECT�� ���ο� �� SELECT���� ������

-- ���� �� ���� ���� ������ �˻��Ͻÿ�
SELECT MAX(price) FROM book;

-- ������ ��������
-- ���� �� ���� ��� ������ �̸��� �˻��Ͻÿ�
SELECT bookname FROM book WHERE price = (SELECT MAX(price) FROM book);

-- ������ ��������(IN)
-- ������ ������ ���� �ִ� ���� �̸� ���
SELECT name FROM customer WHERE custid IN (SELECT custid FROM orders);

-- ������ ������ ���� ���� ���� �̸� ���
SELECT name FROM customer WHERE custid NOT IN (SELECT custid FROM orders);


-- ���� ��� : customer, orders
-- ������ ������ ���� �ִ� ���� �̸��� �˻��Ͻÿ�
SELECT name FROM customer WHERE custid IN (SELECT custid FROM orders);
SELECT DISTINCT cus.name FROM customer cus, orders ord WHERE ord.custid = cus.custid;

-- FROM���� �ִ� �������� - �ζ��κ� ��� ��
-- ���� �̸��� �� ���� �Ǹž� �˻�(customer, orders)
-- �׷캰 : GROUP BY
-- ��, �� ��ȣ�� 2 ������

-- ���� ����
SELECT cs.name, SUM(od.saleprice) total FROM customer cs, orders od 
WHERE cs.custid = od.custid AND cs.custid <=2
GROUP BY cs.name 
HAVING SUM(od.saleprice) >= 30000;

/*
    ���� ����
    1. FROM�� ���̺��
    2. WHERE, GROUP BY
    3. SELECT��
    4. ORDER��
*/

-- ���� ����
SELECT cs.name, SUM(od.saleprice) 
FROM (SELECT * FROM customer WHERE custid <=2) cs, 
      orders od 
WHERE cs.custid = od.custid GROUP BY cs.name;

SELECT * FROM product;
SELECT * FROM product_review;

-- ��Į�� ��������
-- ��ǰ ���� ���̺� �ִ� ��ǰ �̸� �˻�
SELECT a.product_code, 
       (SELECT b.product_name FROM product b 
        WHERE a.product_code = b.product_code) product_name,
       a. member_id, 
       a.content
FROM product_review a; 