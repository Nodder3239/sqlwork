-- 게시판 테이블
CREATE TABLE boards(
    bno         NUMBER PRIMARY KEY,
    btitle      VARCHAR2(100) NOT NULL,
    bcontent    CLOB NOT NULL,      -- CLOB(Character Large Of Byte), 최대 4GB
    bwriter     VARCHAR2(50) NOT NULL,
    bdate       DATE DEFAULT SYSDATE,
    bfilename   VARCHAR2(50),
    bfiledata   BLOB        -- BLOB(Binary Large Of Byte), 최대 4GB
);

-- 시퀀스 생성
CREATE SEQUENCE seq_bno NOCACHE;

-- 게시글 추가
INSERT INTO boards(bno, btitle, bcontent, bwriter)
VALUES (seq_bno.NEXTVAL, 'smartPhone', '삼성 갤럭시 S21입니다', 'today');

INSERT INTO boards(bno, btitle, bcontent, bwriter, bdate, bfilename, bfiledata)
VALUES (seq_bno.NEXTVAL, 'smartPhone', '삼성 갤럭시 S21입니다', 'today', SYSDATE, NULL, NULL);

SELECT * FROM boards ORDER BY bno DESC;

COMMIT;
ROLLBACK;

SELECT * FROM boards
WHERE bwriter = 'sky123'
ORDER BY bno DESC;

-- 글번호 5번의 제목을 '아이폰'으로 변경
UPDATE boards set btitle='아이폰 15'
, bcontent = '아이폰 15입니다'
where bno=5;

DROP TABLE boards;
DELETE FROM boards WHERE bno = 6;
UPDATE boards set bno=5 where bno=7;

DELETE FROM boards WHERE bno = 1;
