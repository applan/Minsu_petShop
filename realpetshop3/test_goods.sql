create table test_goods(
 goodsNum number(10) primary key,
 goodsName nvarchar2(40) not null,
 goodsId nvarchar2(40) not null,
 goodsMainUrl nvarchar2(2000) not null,
 goodsUrl nvarchar2(2000) ,
 goodsDate date DEFAULT sysdate,
 goodsInfo nvarchar2(200) ,
 goodsPrice number not null ,
 category varchar2(20) not null
);
create table test_goods_trash(
 goodsNum number(10) primary key,
 goodsName nvarchar2(40) not null,
 goodsId nvarchar2(40) not null,
 goodsMainUrl nvarchar2(2000) not null,
 goodsUrl nvarchar2(2000) ,
 goodsDate date DEFAULT sysdate,
 goodsInfo nvarchar2(200) ,
 goodsPrice number not null,
 category varchar2(20) not null,
 trashDate date default sysdate,
 printTrashDate nvarchar2(10)
);
drop table test_goods_trash;
insert into test_goods_trash(goodsNum, goodsName, goodsId, goodsMainUrl, goodsUrl, goodsDate, goodsInfo, goodsPrice)
values(1,
'새로운 상품이 왔습니다', 
'cms4861', 
'http://postfiles9.naver.net/20160205_296/bon24amc_1454666068969GKlx6_PNG/1.png?type=w1',
'http://mblogthumb1.phinf.naver.net/MjAxNjEyMTFfMTU4/MDAxNDgxNDQyODM4ODk1.mUa2qGI1TyFtZAfTGbRb_rbXai_4B2hdC6CQlN_SAwUg.okzeGpBHP6-fynL44YLmrKAjinpUk5sAVbhDcimenbog.JPEG.teamdable/%EB%B0%B0%EB%84%88%EA%B4%91%EA%B3%A0_%EB%84%A4%EC%9D%B4%ED%8B%B0%EB%B8%8C%EA%B4%91%EA%B3%A0.jpg?type=w800',
'2019-04-30',
'asdasdasd',
100000000
);

drop table test_goods_trash;

create table test_request_goods(
 goodsNum number(10) primary key,
 goodsName nvarchar2(40) not null,
 goodsId nvarchar2(40) not null,
 goodsMainUrl nvarchar2(2000) not null,
 goodsUrl nvarchar2(2000) ,
 goodsDate date DEFAULT sysdate,
 goodsInfo nvarchar2(200) ,
 goodsPrice number not null,
 category varchar2(20) not null
);

drop table test_request_goods;

create sequence goodsNum_resq;

create sequence goodsNum_sq;

drop table test_goods;
drop sequence goodsNum_sq;

select * from TEST_GOODS;

insert into test_goods values(goodsNum_sq.nextVal,
'강아지 사료', 
'김파파', 
'http://postfiles9.naver.net/20160205_296/bon24amc_1454666068969GKlx6_PNG/1.png?type=w1',
'http://mblogthumb1.phinf.naver.net/MjAxNjEyMTFfMTU4/MDAxNDgxNDQyODM4ODk1.mUa2qGI1TyFtZAfTGbRb_rbXai_4B2hdC6CQlN_SAwUg.okzeGpBHP6-fynL44YLmrKAjinpUk5sAVbhDcimenbog.JPEG.teamdable/%EB%B0%B0%EB%84%88%EA%B4%91%EA%B3%A0_%EB%84%A4%EC%9D%B4%ED%8B%B0%EB%B8%8C%EA%B4%91%EA%B3%A0.jpg?type=w800',
'2019-04-27',
'새로운 개 사료 추가 됌!',
1000
);
insert into test_request_goods values(goodsNum_resq.nextVal,
'새로운 상품이 왔습니다.', 
'cms4861', 
'http://postfiles9.naver.net/20160205_296/bon24amc_1454666068969GKlx6_PNG/1.png?type=w1',
'http://gdimg.gmarket.co.kr/641044863/still/600?ver=0',
'2019-05-22',
'asdsadsadsad 상품 등록해주세요~',
123123123,
'장난감'
);

drop table test_request_goods;
create sequence goodsNum_resq;
drop sequence goodsNum_resq;
create table test_user(
 userNum number(10) primary key,
 userId nvarchar2(40) not null,
 userName nvarchar2(40) not null,
 usercheck char not null
);
create table test_user_trashData(
 userNum number(10) primary key,
 userId nvarchar2(40) not null,
 userName nvarchar2(40) not null,
 usercheck char not null,
 trashDate date default sysdate,
 printTrashDate nvarchar2(10)
);

drop table test_user_trashData;

create sequence userNum_sq;


insert into test_user values(
userNum_sq.nextVal, 'cms4861', '최민수',1
);