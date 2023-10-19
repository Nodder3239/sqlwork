-- ��¥ �ð� �Լ�
-- ���� ��¥ ���
SELECT SYSDATE FROM dual;

-- ���� ��¥ ���� ��ȯ
SELECT TO_CHAR(SYSDATE, 'yyyy') �⵵,
       TO_CHAR(SYSDATE, 'MM')   ��,
       TO_CHAR(SYSDATE, 'dd')   ��,
       TO_CHAR(SYSDATE, 'yyyy-MM-dd') ��¥
FROM dual;

-- ���� ��¥�� �ð�
SELECT SYSTIMESTAMP FROM dual;

-- �ð� ���� ��ȯ
SELECT TO_CHAR(SYSDATE, 'HH:MI:SS') �ð�,
       TO_CHAR(SYSTIMESTAMP, 'yyyy-MM-dd HH:MI:SS') 
FROM dual;

-- ���� ���ϰ� ����
-- ���� ��¥���� 10�� ��, ���� ��¥ ���
SELECT SYSDATE - 10 FROM dual;
SELECT SYSDATE + 10 FROM dual;

-- Ư�� ��¥���� 10�� ��, �� ���
-- TO_DATE(���ڿ� ��¥)
SELECT TO_DATE('2023-09-01') + 10 FROM dual;

-- ���� ���ϰ� ����
-- ADD_MONTH()
SELECT ADD_MONTHS(SYSDATE, 3) ��� FROM dual;
SELECT ADD_MONTHS(SYSDATE, -3) ��� FROM dual;
SELECT ADD_MONTHS(TO_DATE('2023/5/1'), 3) ��� FROM dual;

-- ���� �� ����ϱ�
-- MONTHS_BETWEEN(������, ������)
SELECT ROUND(MONTHS_BETWEEN(
    TO_DATE('2023-12-31'), TO_DATE('2023-1-1')), 0) �Ѱ�����
FROM dual;

-- orders ���̺��� ��¥ �ð� �Լ� ����ϱ�
-- ������ �ֹ��Ϸκ��� 10�� �� ������ Ȯ���Ѵ�
-- �� �ֹ��� Ȯ�����ڸ� ���Ͻÿ�
SELECT orderid �ֹ���ȣ,
       orderdate �ֹ���,
       TO_DATE(orderdate) + 10 Ȯ����
FROM orders;

-- �ֹ��Ͽ��� 3���� ���ϰ� ����
-- ���� �ֹ���ȣ�� 6���� 10������ ����Ͻÿ�
SELECT orderid �ֹ���ȣ,
       orderdate �ֹ���,
       ADD_MONTHS(orderdate, 3) ���ϱ���,
       ADD_MONTHS(orderdate, -3) ������
FROM orders
WHERE orderid BETWEEN 6 AND 10;

-- �ֹ���ȣ�� 10�� ������ �ֹ��Ϸκ��� ���ñ����� �� ���� ���� ���Ͻÿ�
SELECT orderid �ֹ���ȣ,
       orderdate �ֹ���,
       TRUNC(MONTHS_BETWEEN(
    SYSDATE, TO_DATE(orderdate)), 0) �Ѱ�����
FROM orders
WHERE orderid = 10;

-- ��ȯ �Լ� : TO_NUMBER() : ���ڸ� ���ڷ� ��ȯ����
SELECT TO_NUMBER('320') FROM DUAL;