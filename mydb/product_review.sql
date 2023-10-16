-- product_review ���̺� ����
-- CLOB(Character Large OBject) - �ſ� ū ���ڿ� �ڷ���(4GB)
CREATE TABLE product_review(
    review_no       NUMBER PRIMARY KEY,     -- �����ȣ
    product_code     CHAR(6) NOT NULL,       -- ��ǰ�ڵ�
    member_id       VARCHAR2(20) NOT NULL,  -- ȸ�����̵�
    content         CLOB NOT NULL,          -- ���䳻��
    regdate         DATE DEFAULT SYSDATE,   -- �ۼ���
    FOREIGN KEY(product_code) REFERENCES product(product_code)  -- �ܷ�Ű
);
-- �ڵ� ����(NOCACHE - �ʱ�ȭ�ϸ� 1���� ����)
CREATE SEQUENCE seq_rno NOCACHE;

INSERT INTO product_review(review_no, product_code, member_id, content)
VALUES (seq_rno.NEXTVAL, '100001', 'today10', '�������ε� ������ ���� �ִ� ��...');
INSERT INTO product_review(review_no, product_code, member_id, content)
VALUES (seq_rno.NEXTVAL, '100001', 'cloud100', '�����̶� ���� ���ϳ׿�!');
INSERT INTO product_review(review_no, product_code, member_id, content)
VALUES (seq_rno.NEXTVAL, '100002', 'sky123', '������ �� ���ϴ�.');

commit;
SELECT * FROM product_review;

DROP SEQUENCE seq_review;

-- ��ǰ �ڵ� '100001'�̰�, ȸ�� ���̵� 'cloud100' ��ǰ�� ������ ����Ͻÿ�
SELECT * FROM product_review 
WHERE product_code = '100001' AND member_id = 'cloud100';