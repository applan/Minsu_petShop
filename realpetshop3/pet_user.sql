create table pet_user(
	userno number(10,0) primary key,
	userid nvarchar2(20) unique not null,
	password nvarchar2(50) not null,
	username nvarchar2(20) not null,
	addr nvarchar2(50) not null,
	email nvarchar2(50) unique not null,
	emailcheck char(1) default '0',
	cat varchar2(10), 
	dog varchar2(10),
	num varchar2(10) default '3'
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

create table cart_tbl(
   cartno number primary key,
   userno number not null,
   goodsnum number not null,
   goodsname varchar2(10) not null,
   amount number default 0,
   money number default 0,
   price number,
   goodsMainUrl nvarchar2(2000) not null,
   CATEGORY VARCHAR2(20) not null
);

select * from pet_user;

create sequence rno_seq;

drop table pet_user;
drop sequence rno_seq;

insert into pet_user(userno,userid,password,username,addr,email,emailcheck,cat,dog,num) 
values(rno_seq.nextVal,'jang1234','1234qwer!','관리자','코리아아이티','applan_siepe@naver.com','1','cat','dog','1');

insert into pet_user(userno,userid,password,username,addr,email,emailcheck,cat,dog,num) 
values(rno_seq.nextVal,'jang12345','1234qwer!','판매자1','코리아아이티','cms4861@naver.com','0','cat','dog','2');
insert into pet_user(userno,userid,password,username,addr,email,emailcheck,cat,dog,num) 
values(rno_seq.nextVal,'jang12346','1234qwer!','판매자2','코리아아이티','w@naver.com','1','cat','dog','2');

insert into pet_user(userno,userid,password,username,addr,email,emailcheck,cat,dog,num) 
values(rno_seq.nextVal,'jang123','1234qwer!','판매자1','코리아아이티','wkd_wo_gus@naver.com','0','cat','dog','3');

insert into pet_user(userno,userid,password,username,addr,email,emailcheck,cat,dog,num) 
values(rno_seq.nextVal,'jang12344','1234qwer!','판매자1','코리아아이티','wkdwogus55@gmail.com','0','cat','dog','3');
select trim(num) from pet_user;