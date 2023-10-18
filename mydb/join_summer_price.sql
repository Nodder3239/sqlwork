-- �����б� ������, ��� ���̺�
SELECT * FROM summer_price;
SELECT * FROM summer_register;

-- �л��� ��� ���������� �˻��Ͻÿ�
SELECT b.sid,
       b.subject,
       a.price
FROM summer_price a, summer_register b
WHERE a.subject = b.subject;


INSERT INTO summer_register values (301, 'Python');

-- ���� ������ �հ踦 ���Ͻÿ�
SELECT b.subject, SUM(price)
FROM summer_price a, summer_register b
WHERE a.subject = b.subject
GROUP BY b.subject;

-- ���� ������ �հ� �� ��ü �Ѱ踦 ���Ͻÿ�
-- ROLLUP(), CUBE()
-- NVL(����, '�Ѱ�') : ������ NULL�̸� '�Ѱ�' ���
SELECT NVL(b.subject, '�Ѱ�'), SUM(price)
FROM summer_price a, summer_register b
WHERE a.subject = b.subject
GROUP BY ROLLUP (b.subject);