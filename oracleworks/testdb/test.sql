-- test 테이블 생성
CREATE TABLE test(
    action VARCHAR2(1000)
);

INSERT INTO test VALUES ('계정 및 권한부여를 수행합니다.');

SELECT * FROM test;

DROP TABLE test;

commit;