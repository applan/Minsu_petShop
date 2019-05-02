create table pet_user(
	userno number(10,0) primary key,
	userid nvarchar2(20) unique not null,
	password nvarchar2(50) not null,
	username nvarchar2(20) not null,
	addr nvarchar2(50) not null,
	email nvarchar2(50) unique not null,
	emailcheck char(1) default '0',
	cat nvarchar2(10), 
	dog nvarchar2(10),
	num nvarchar2(10) default '3'
);
create table pet_user_trash(
	userno number(10,0) primary key,
	userid nvarchar2(20) unique not null,
	password nvarchar2(50) not null,
	username nvarchar2(20) not null,
	addr nvarchar2(50) not null,
	email nvarchar2(50) unique not null,
	emailcheck nvarchar2(10) default '0',
	cat nvarchar2(10), 
	dog nvarchar2(10),
	num nvarchar2(10) default '3',
    trashDate date default sysdate
);

select * from pet_user;

create sequence rno_seq;

drop table pet_user;
drop sequence rno_seq;

insert into pet_user(userno,userid,password,username,addr,email,emailcheck,cat,dog,num) 
values(rno_seq.nextVal,'jang1234','1234qwer!','관리자','코리아아이티','applan_siepe@naver.com','1','dog','cat','1');

insert into pet_user(userno,userid,password,username,addr,email,emailcheck,cat,dog,num) 
values(rno_seq.nextVal,'jang12345','1234qwer!','판매자1','코리아아이티','cms4861@naver.com','0','dog','cat','2');
insert into pet_user(userno,userid,password,username,addr,email,emailcheck,cat,dog,num) 
values(rno_seq.nextVal,'jang12346','1234qwer!','판매자2','코리아아이티','applan_siepe@naver.com','1','dog','cat','2');

insert into pet_user(userno,userid,password,username,addr,email,emailcheck,cat,dog,num) 
values(rno_seq.nextVal,'jang123','1234qwer!','판매자1','코리아아이티','applan_siepe@naver.com','0','dog','cat','3');

select trim(num) from pet_user;