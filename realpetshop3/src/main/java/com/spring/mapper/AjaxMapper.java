package com.spring.mapper;

import java.util.List;

import com.spring.domain.GoodsVO;

public interface AjaxMapper {
	 public List<GoodsVO> getList(List<String> list);
	 public List<GoodsVO> getListAll();
	 public int countGoods(List<String> list);
	 public int countGoodsAll();
}
