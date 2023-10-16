-- event 테이블 생성
CREATE TABLE event(
    event_no    NUMBER PRIMARY KEY,     -- 이벤트 번호
    event_name  VARCHAR2(50) NOT NULL,  -- 이벤트 이름
    start_date  VARCHAR2(20) NOT NULL,  -- 시작일
    end_date    VARCHAR2(20) NOT NULL   -- 종료일
);

DROP TABLE event;

-- 자동 일련번호
CREATE SEQUENCE seq_eno NOCACHE;



COMMIT;