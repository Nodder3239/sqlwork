-- ��(VIEW) ����
-- �ּҿ� '���ѹα�'�� �����ϴ� ����� ������ �並 ����ÿ�
CREATE VIEW vw_customer
AS SELECT * FROM customer
    WHERE address LIKE '���ѹα�%';
    
SELECT * FROM vw_customer;

-- VIEW ����
DROP VIEW vw_customer