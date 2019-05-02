create table cart_tbl(
	cartno number primary key,
	userno number not null,
	goodsnum number not null,
	goodsname varchar2(40) not null,
	amount number default 0,
	money number default 0,
	price number not null,
	goodsMainUrl nvarchar2(2000) not null,
	category varchar2(20) not null 
);

drop table cart_tbl;
-- 장바구니 테이블 시퀀스 생성 
create sequence seq_cart;

insert into CART_TBL(cartno,userno,goodsnum,goodsname,amount,price,goodsMainUrl,category) 
VALUES(seq_cart.nextVal,10,21,(select goodsName from TEST_GOODS where goodsNum = 21),
1,(select goodsPrice from TEST_GOODS where goodsNum = 21),(select goodsMainUrl from TEST_GOODS where goodsNum = 21),
(select category from TEST_GOODS where goodsNum = 21));

insert into CART_TBL(cartno,userno,goodsnum,goodsname,amount,price,goodsMainUrl,category) 
VALUES(seq_cart.nextVal,#{userno},#{goodsnum},(select goodsName from TEST_GOODS where goodsNum = #{goodsnum}),
1,(select goodsPrice from TEST_GOODS where goodsNum = #{goodsnum}),(select goodsMainUrl from TEST_GOODS where goodsNum = #{goodsnum}),
(select category from TEST_GOODS where goodsNum = #{goodsNum}));

-- 장바구니 테이블 제약조건 (외래키 ) 생성
alter table cart_tbl add constraint cart_userno_fk FOREIGN KEY(userno) REFERENCES pet_user(userno);
alter table cart_tbl add constraint cart_goodsNum_fk FOREIGN KEY(goodsNum) REFERENCES test_goods(goodsNum);

insert into cart_tbl(cartno,userno,goodsnum,amount) values(seq_cart.nextVal,17,1,2);

select * from cart_tbl;
