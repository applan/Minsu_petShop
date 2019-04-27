package com.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.domain.GoodsVO;
import com.spring.mapper.MinsuMapper;

@Service
public class MinsuServiceImpl  implements MinsuService{
    
	 @Autowired
	 private MinsuMapper mapper;
	
	@Override
	public int insertGoods(GoodsVO vo) {
		return mapper.insertGoods(vo);
	}
  
}
