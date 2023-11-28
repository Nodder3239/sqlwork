-- student ���̺� ����
CREATE TABLE student(
    sid         NUMBER PRIMARY KEY,
    username    VARCHAR2(20) NOT NULL,
    univ        VARCHAR2(40),
    birth       VARCHAR2(20),
    email       VARCHAR2(40) NOT NULL UNIQUE
);

CREATE SEQUENCE seq_sid NOCACHE;

INSERT INTO student (sid, username, univ, birth, email)
values (seq_sid.NEXTVAL, '�쿵��', '�Ѱ����б�', '1991-10-01', 'hanriver@naver.com');


SELECT * FROM student;
COMMIT;

DROP SEQUENCE seq_sid;
DROP TABLE student;