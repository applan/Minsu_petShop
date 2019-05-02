create table notice_board(
	n_bno number(10,0),
	n_title varchar2(200) not null,
	n_content varchar2(2000) not null,
	n_writer varchar2(50) not null,
	regdate date default sysdate
);

drop table notice_board;

create sequence seq_notice_board;
drop sequence seq_notice_board;

insert into notice_board(n_bno,n_title,n_content,n_writer)
values(seq_notice_board.nextVal,'[회원혜택] 펫샵 회원등급 및 혜택 변경 안내','어쩌구저쩌구','오성은');


select * from NOTICE_BOARD;