package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.domain.CartVO;
import com.spring.mapper.CartMapper;

@Service
public class CartServiceImpl implements CartService {

	@Autowired
	private CartMapper mapper;

	@Override
	public int insertCart(CartVO vo) {
		return mapper.insertCart(vo);
	}

	@Override
	public List<CartVO> listCart(int userno) {

		return mapper.listCart(userno);
	}

	@Override
	public int deleteCart(int cartno) {
		return mapper.deleteCart(cartno);
	}

	@Override
	public int modifyCart(CartVO vo) {
		return mapper.modifyCart(vo);
	}

	@Override
	public int sumMoney(int userno) {
		return mapper.sumMoney(userno);
	}

	@Override
	public int countCart(int goodsNum, int userno) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateCart(CartVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	

	

}