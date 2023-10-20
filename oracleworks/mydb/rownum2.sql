
SELECT * FROM drink;

-- ���̺� ����(����)
CREATE TABLE drink2 AS
SELECT * FROM drink;

SELECT * FROM drink2;

-- ��ͺ���(INSERT INTO ~ SELECT) : VALUES ��� ����
INSERT INTO drink2 SELECT * FROM drink2;

-- ROWNUM (SUDO COLUMN - ������ ������ Į��)
SELECT ROWNUM, drink_code, drink_name FROM drink2
WHERE ROWNUM >= 1 AND ROWNUM <= 10;
-- WHERE ROWNUM >= 11 AND ROWNUM <= 20; -- 1�� ���ԵǾ�� �˻��� ��

-- FROM �� �������� ��� - �ζ��κ�
-- �� rn�� ����ϴ°�? ROWNUM�� 1�� �־�� �˻��� �ǹǷ� rn�̶�� ����(��Ī) ���
SELECT * 
FROM (SELECT ROWNUM rn, drink_code, drink_name FROM drink2)
-- WHERE ROWNUM >= 11 AND ROWNUM <= 20; -- ROWNUM ��� - �˻� �� ��
WHERE rn >= 11 AND rn <= 20; -- ��Ī(����) ���� �˻���
