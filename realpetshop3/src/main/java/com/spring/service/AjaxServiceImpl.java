package com.spring.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.domain.GoodsVO;
import com.spring.mapper.AjaxMapper;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class AjaxServiceImpl implements AjaxService {

	@Inject
	private AjaxMapper mapper;
	
	@Override
	public List<GoodsVO> getList(List<String> list) {
		log.info("ㅇ암ㄴ언마어남ㅇ");
		return mapper.getList(list);
	}

	@Override
	public int countGoods(List<String> list) {
		return mapper.countGoods(list);
	}

	@Override
	public List<GoodsVO> getListAll() {
		return mapper.getListAll();
	}

	@Override
	public int countGoodsAll() {
		return mapper.countGoodsAll();
	}

}
