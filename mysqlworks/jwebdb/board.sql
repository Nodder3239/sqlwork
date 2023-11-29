-- db 생성
use jwebdb;

create table board(
	boardNo     int PRIMARY KEY auto_increment,
    username    VARCHAR(30) NOT NULL,
    bTitle      VARCHAR(100) NOT NULL,
    bContent    LONGTEXT NOT NULL,
    bOption     int,
    bWDate		DATE,
    bWTime		TIME
);


insert into board(username, bTitle, bContent, bOption, bWDate, bWTime)
values ('이름', '제목', '내용', 0, now(), now());

select * from board;

drop table board;