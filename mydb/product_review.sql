-- product_review 테이블 생성
-- CLOB(Character Large OBject) - 매우 큰 문자열 자료형(4GB)
CREATE TABLE product_review(
    review_no       NUMBER PRIMARY KEY,     -- 리뷰번호
    product_code     CHAR(6) NOT NULL,       -- 상품코드
    member_id       VARCHAR2(20) NOT NULL,  -- 회원아이디
    content         CLOB NOT NULL,          -- 리뷰내용
    regdate         DATE DEFAULT SYSDATE,   -- 작성일
    FOREIGN KEY(product_code) REFERENCES product(product_code)  -- 외래키
);
-- 자동 순번(NOCACHE - 초기화하면 1부터 시작)
CREATE SEQUENCE seq_rno NOCACHE;

INSERT INTO product_review(review_no, product_code, member_id, content)
VALUES (seq_rno.NEXTVAL, '100001', 'today10', '무소음인데 소음이 조금 있는 듯...');
INSERT INTO product_review(review_no, product_code, member_id, content)
VALUES (seq_rno.NEXTVAL, '100001', 'cloud100', '무선이라 정말 편하네요!');
INSERT INTO product_review(review_no, product_code, member_id, content)
VALUES (seq_rno.NEXTVAL, '100002', 'sky123', '게임할 맛 납니다.');

commit;
SELECT * FROM product_review;

DROP SEQUENCE seq_review;

-- 상품 코드 '100001'이고, 회원 아이디가 'cloud100' 상품의 정보를 출력하시오
SELECT * FROM product_review 
WHERE product_code = '100001' AND member_id = 'cloud100';