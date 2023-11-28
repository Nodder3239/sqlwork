-- db 생성
create database jwebdb;

use jwebdb;

-- student 테이블 생성
create table student(
	sid         int PRIMARY KEY auto_increment,
    username    VARCHAR(20) NOT NULL,
    univ        VARCHAR(40),
    birth       VARCHAR(20),
    email       VARCHAR(40) NOT NULL UNIQUE
);

insert into student(username, univ, birth, email)
values ('우영우', '한강대학교', '1991-10-01', 'hanriver@naver.com');

select * from student;
commit;

drop table student;
