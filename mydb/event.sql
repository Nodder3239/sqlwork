-- event ���̺� ����
CREATE TABLE event(
    event_no    NUMBER PRIMARY KEY,     -- �̺�Ʈ ��ȣ
    event_name  VARCHAR2(50) NOT NULL,  -- �̺�Ʈ �̸�
    start_date  VARCHAR2(20) NOT NULL,  -- ������
    end_date    VARCHAR2(20) NOT NULL   -- ������
);

DROP TABLE event;

-- �ڵ� �Ϸù�ȣ
CREATE SEQUENCE seq_eno NOCACHE;



COMMIT;