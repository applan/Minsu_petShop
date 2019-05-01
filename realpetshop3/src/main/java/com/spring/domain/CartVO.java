package com.spring.domain;

import lombok.Data;

@Data
public class CartVO {
	private int cartno; // 카트 번호
	private int userno; //유저번호
	private int goodsnum; // 상품  번호  -----
	private String goodsname; //상품명
	private int price; //가격
	private int amount; // 수량
	private String money; // 한 상품의 토탈 가격
	private String goodsMainUrl; //메인 이미지 url
	

}
