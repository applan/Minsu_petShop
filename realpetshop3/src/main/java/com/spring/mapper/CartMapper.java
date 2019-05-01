package com.spring.mapper;

import java.util.List;

import com.spring.domain.CartVO;

public interface CartMapper {
	public int insertCart(CartVO vo);		
	public List<CartVO> listCart(int userno);
	public int deleteCart(int cartno);
	public int modifyCart(CartVO vo);	
	public int sumMoney(int userno);
	public int countCart(int goodsNum, int userno);
	public int updateCart(CartVO vo);
}
