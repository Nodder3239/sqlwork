-- ���� ����(Sub Query): �μ�����(��ø ����)
-- SELECT�� ���ο� �� SELECT���� ������

-- ���� �� ���� ���� ������ �˻��Ͻÿ�
SELECT MAX(price) FROM book;

-- ���� �� ���� ��� ������ �̸��� �˻��Ͻÿ�
SELECT bookname FROM book WHERE price = (SELECT MAX(price) FROM book);

-- ������ ������ ���� �ִ� ���� �̸��� �˻��Ͻÿ�
SELECT name FROM customer WHERE custid IN (SELECT custid FROM orders);
SELECT DISTINCT cus.name FROM customer cus, orders ord WHERE ord.custid = cus.custid;