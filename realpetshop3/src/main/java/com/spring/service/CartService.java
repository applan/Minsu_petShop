package com.spring.service;

import java.util.List;

import com.spring.domain.CartVO;

public interface CartService {
	//장바구니 추가
	public int insertCart(CartVO vo);
	//장바구니 목록
	public List<CartVO> listCart(int userno);
	//장바구니 삭제
	public int deleteCart(int cartno);
	//장바구니 수정
	public int modifyCart(CartVO vo);
	//장바구니 금액 합계
	public int sumMoney(int userno);
	
	//장바구니 상품 확인
	public int countCart(int goodsNum, int userno);
	//장바구니 상품 수량 변경
	public int updateCart(CartVO vo);
	

}
