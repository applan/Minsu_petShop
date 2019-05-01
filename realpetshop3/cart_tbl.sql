create table cart_tbl(
	cartno number primary key,
	userno number not null,
	goodsnum number not null,
	goodsname varchar2(10) not null,
	amount number default 0,
	money number default 0,
	price number,
	goodsMainUrl nvarchar2(2000) not null
);

-- 장바구니 테이블 시퀀스 생성 
create sequence seq_cart;

-- 장바구니 테이블 제약조건 (외래키 ) 생성
alter table cart_tbl add constraint cart_userno_fk FOREIGN KEY(userno) REFERENCES pet_user(userno);
alter table cart_tbl add constraint cart_goodsNum_fk FOREIGN KEY(goodsNum) REFERENCES goods_tbl(goodsNum);

insert into cart_tbl(cartno,userno,goodsnum,amount) values(seq_cart.nextVal,17,1,2);

select * from cart_tbl;
