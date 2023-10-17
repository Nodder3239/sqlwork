-- ���� �б� ���̺�
CREATE TABLE summer_class(
    sid     NUMBER,         -- �й�
    subject VARCHAR2(20),   -- ��������
    price   NUMBER          -- ������
);

INSERT INTO summer_class VALUES(100, 'C', 30000);
INSERT INTO summer_class VALUES(101, 'JAVA', 45000);
INSERT INTO summer_class VALUES(200, 'Python', 40000);
INSERT INTO summer_class VALUES(201, 'JAVA', 45000);

COMMIT;

-- �����б⸦ �����ϴ� �л��� �й��� �����ϴ� ������?
SELECT sid, subject FROM summer_class;

-- 'Python' ������ �������? - ���� �̻�
SELECT price FROM summer_class WHERE subject = 'Python';

-- C++ ���� ���� : ��û�� �л��� ���� - ���� �̻�
INSERT INTO summer_class VALUES(NULL, 'C++', 35000);

-- �л� 3��, Ʃ���� 4��
SELECT COUNT(*) �����ο� FROM summer_class; 
SELECT COUNT(sid) �����ο� FROM summer_class; 

-- JAVA �����ᰡ 45,000������ 40,000������ ����
UPDATE summer_class SET price = 40000 WHERE subject = 'JAVA';

-- ���� UPDATE���� ����ó��, �̻� ���� �߻�
-- 1�Ǹ� ����
UPDATE summer_class SET price = 40000 WHERE subject = 'JAVA' AND sid = 101;

-- JAVA �������?
SELECT price FROM summer_class WHERE subject = 'JAVA';

ROLLBACK;


-- �����б⸦ ��� �л� ���� �������� �Ѿ���?
SELECT COUNT(*) �л���, SUM(price) �������Ѿ� FROM summer_class;

-- 200�� �л��� ���� ���(����)
DELETE FROM summer_class WHERE sid = 200;

SELECT * FROM summer_class;