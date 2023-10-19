-- ROWNUM(�ο��ȣ, ���ȣ)
-- �� ���� �����ϰ� ���� �� ���, SUDO COLUMN�̶� ��

CREATE TABLE ex_score(
    name VARCHAR2(10),
    score number(3)
);

INSERT INTO ex_score VALUES('���ϳ�', 94);
INSERT INTO ex_score VALUES('���ϳ�', 85);
INSERT INTO ex_score VALUES('���ϳ�', 100);
INSERT INTO ex_score VALUES('���ϳ�', 97);
INSERT INTO ex_score VALUES('���ϳ�', 87);
INSERT INTO ex_score VALUES('���ϳ�', 87);
INSERT INTO ex_score VALUES('���ϳ�', 91);
INSERT INTO ex_score VALUES('���ϳ�', 77);
INSERT INTO ex_score VALUES('���ϳ�', 80);
INSERT INTO ex_score VALUES('���ϳ�', 95);

SELECT * FROM ex_score;

-- 1���� 5����� ���� ���
SELECT ROWNUM, name, score FROM ex_score
WHERE ROWNUM <= 5;

-- 2���� 6����� ������ ��� (�Ұ�)
-- NOWNUM�� 1���� �����ؾ� ��
SELECT ROWNUM, name, score FROM ex_score
WHERE ROWNUM <= 6 AND ROWNUM >= 2;

-- 1���� 6����� ������ ���
SELECT ROWNUM, name, score FROM ex_score
WHERE ROWNUM <= 6 AND ROWNUM >= 1;

-- ������ �������� �����Ͽ� �˻��Ͻÿ�
SELECT * FROM ex_score
ORDER BY score DESC;

-- ������ ���� ������ 5���� �˻��Ͻÿ�
SELECT ROWNUM, name, score 
FROM (SELECT * FROM ex_score ORDER BY score DESC) 
WHERE ROWNUM <= 5;

/*
    �������
    1. FROM�� ���̺��
    2. WHERE, GROUP BY
    3. SELECT ��
    4. ORDER ��
*/

-- ���� ����
SELECT 
    name, 
    score, 
    RANK() OVER(ORDER BY score DESC) ����1,
    DENSE_RANK() OVER(ORDER BY score DESC) ����2
FROM ex_score;



COMMIT;

DROP TABLE ex_score;