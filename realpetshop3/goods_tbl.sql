create table goods_tbl(
 goodsNum number(10) primary key,
 goodsName nvarchar2(40) not null,
 goodsId nvarchar2(40) not null,
 goodsMainUrl nvarchar2(2000) not null,
 goodsUrl nvarchar2(2000),
 goodsDate date DEFAULT sysdate,
 goodsInfo nvarchar2(200),
 goodsPrice number not null
);

insert into goods_tbl(goodsNum,goodsName,goodsId,goodsMainUrl,goodsUrl,goodsDate,goodsInfo,goodsPrice) 
values(goodsNum_sq.nextVal,'강아지 사료', 
'김파파', 
'http://postfiles9.naver.net/20160205_296/bon24amc_1454666068969GKlx6_PNG/1.png?type=w1',
'http://mblogthumb1.phinf.naver.net/MjAxNjEyMTFfMTU4/MDAxNDgxNDQyODM4ODk1.mUa2qGI1TyFtZAfTGbRb_rbXai_4B2hdC6CQlN_SAwUg.okzeGpBHP6-fynL44YLmrKAjinpUk5sAVbhDcimenbog.JPEG.teamdable/%EB%B0%B0%EB%84%88%EA%B4%91%EA%B3%A0_%EB%84%A4%EC%9D%B4%ED%8B%B0%EB%B8%8C%EA%B4%91%EA%B3%A0.jpg?type=w800',
'2019-04-27',
'새로운 개 사료 추가 됌!',
25000
);


create sequence goodsNum_sq;

drop table goods_tbl;
drop sequence goodsNum_sq;

select * from goods_tbl;

insert into goods_tbl values(goodsNum_sq.nextVal,
'강아지 사료', 
'김파파', 
'http://postfiles9.naver.net/20160205_296/bon24amc_1454666068969GKlx6_PNG/1.png?type=w1',
'http://mblogthumb1.phinf.naver.net/MjAxNjEyMTFfMTU4/MDAxNDgxNDQyODM4ODk1.mUa2qGI1TyFtZAfTGbRb_rbXai_4B2hdC6CQlN_SAwUg.okzeGpBHP6-fynL44YLmrKAjinpUk5sAVbhDcimenbog.JPEG.teamdable/%EB%B0%B0%EB%84%88%EA%B4%91%EA%B3%A0_%EB%84%A4%EC%9D%B4%ED%8B%B0%EB%B8%8C%EA%B4%91%EA%B3%A0.jpg?type=w800',
'2019-04-27',
'새로운 개 사료 추가 됌!'
);


