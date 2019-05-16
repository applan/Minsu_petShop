package com.spring.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.domain.GoodsVO;
import com.spring.mapper.SellerMapper;

@Service
public class SellerServiceImpl implements SellerService {

	@Inject
	private SellerMapper mapper;
	
	@Override
	public int inserReq(GoodsVO vo) {
		return mapper.inserReq(vo);
	}

}
