package com.spring.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.domain.Ajax_cartVO;
import com.spring.domain.CartVO;
import com.spring.mapper.Ajax_cartMapper;

@Service
public class Ajax_cartServiceImpl implements Ajax_cartService {

	@Inject
	private Ajax_cartMapper mapper;
	
	@Override
	@Transactional
	public CartVO modifyCart(Ajax_cartVO ajVO) {
		int result =  mapper.modifyCart(ajVO);
		if(result >0) {
			return mapper.getCartInfo(ajVO.getCartno());
		}
		return null;
	}


}
