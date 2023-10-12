-- 뷰(VIEW) 생성
-- 주소에 '대한민국'을 포함하는 고객들로 구성된 뷰를 만드시오
CREATE VIEW vw_customer
AS SELECT * FROM customer
    WHERE address LIKE '대한민국%';
    
SELECT * FROM vw_customer;

-- VIEW 삭제
DROP VIEW vw_customer