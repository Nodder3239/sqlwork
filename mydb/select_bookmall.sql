SELECT * FROM orders;
DESC orders;


-- ��� �Լ� - ����(COUNT), �հ�(SUM), ���(AVG), �ִ밪(MAX), �ּҰ�(MIN)
-- COUNT(*) : '*' - Į����
-- COUNT(saleprice)
SELECT COUNT (orderid) AS ���ǸŰǼ� FROM orders;

SELECT SUM (saleprice) AS ���Ǹž�, AVG (saleprice) AS ��վ� FROM orders;

-- ������ �ֹ��� ������ ���Ǹž��� ���
-- �׷����� ������ ��� - GROUP BY Į����
-- HAVING �� ��� - GROUP BY ������ ������ ���� �� ���
SELECT custid, COUNT(*) AS ��������, SUM (saleprice) AS ���Ǹž� FROM orders 
GROUP BY custid
HAVING COUNT(*) >= 3;
    --AND SUM(saleprice) > 35000;

-- ���� �߿��� �ִ� ����, ���� ���� �˱�
SELECT MAX (price) �ְ���, MIN (price) �������� FROM book;

SELECT * FROM customer;

-- '3�� ��(�Ȼ�)'�� �ֹ��� ������ �� �Ǹž� ���ϱ�
SELECT sum(saleprice) AS ���Ǹž� from orders
WHERE custid = 3;

-- ����(Join) 
-- ���� ����(EQUI JOIN): equal(=)�� ����ϴ� ����
-- ���̺�A.Į���� = ���̺�B.Į���� (Į�� - �⺻Ű�� �ܷ�Ű)
-- ���� �̸��� ���� �ֹ��� ������ �ǸŰ����� �˻��Ͻÿ�(customer, orders ����)
SELECT customer.name, orders.saleprice FROM customer, orders
WHERE customer.custid = orders.custid;

-- ��Ī ��� ����
-- �� �̸��� 1�� ����(��������), �ֹ� ���ݺ� �������� 2�� ����
SELECT cus.name, ord.saleprice FROM customer cus, orders ord
WHERE cus.custid = ord.custid
order by cus.name, ord.saleprice desc;

-- 3�� ���� ���̵�� �����̸��� �ֹ� ����
SELECT custid, bookname, saleprice FROM orders, book 
WHERE orders.bookid = book.bookid
AND orders.custid = 3;

SELECT customer.custid, book.bookname, orders.saleprice FROM orders, customer, book 
WHERE orders.custid = customer.custid
AND orders.bookid = book.bookid 
AND customer.name = '�Ȼ�';


SELECT COUNT (*) AS �Ѱ���, COUNT(phone) AS ��ȭ��ȣ FROM customer;