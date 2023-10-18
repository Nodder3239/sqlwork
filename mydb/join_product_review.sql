-- ���� ����
-- product, product_review
SELECT * FROM product;
SELECT * FROM product_review;

-- ���䰡 �ִ� ��ǰ�� ������ �˻��Ͻÿ�
-- ���� ���̺� product_name Į���� ���
SELECT b.review_no,
       b.product_code,
       a.product_name,
       b.content,
       b.regdate
FROM product a, product_review b 
WHERE a.product_code = b.product_code;

-- ANSI(�̱���ȸ) ���� - STANDARD JOIN
-- ��������
SELECT b.review_no,
       b.product_code,
       a.product_name,
       b.content,
       b.regdate
FROM product a JOIN product_review b 
 ON a.product_code = b.product_code;


-- �ܺ�����(LEFT, RIGHT ����)
-- ������ ������ ������� ��� ��ǰ�� ������ �˻��Ͻÿ�
SELECT b.review_no,
       b.product_code,
       a.product_name,
       b.content
FROM product a LEFT JOIN product_review b 
 ON a.product_code = b.product_code;

-- ���䰡 ���� ��ǰ�� ������ �˻��Ͻÿ�
SELECT a.product_name "��ǰ �ıⰡ ���� ��ǰ"
FROM product a LEFT JOIN product_review b 
 ON a.product_code = b.product_code
 WHERE review_no is null;
 
-- ��ǰ ���� ���̺� product_name Į�� �߰�
-- ��Į�� �������� : �� Į���� ��ȯ��, SELECT ������ ���
SELECT a.review_no, 
       a.product_code,
       (SELECT b.product_name FROM product b 
        WHERE a.product_code = b.product_code) product_name,
       a.content,
       a.member_id
FROM product_review a;

