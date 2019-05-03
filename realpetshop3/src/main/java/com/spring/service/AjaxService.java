package com.spring.service;

import java.util.List;

import com.spring.domain.GoodsVO;

public interface AjaxService {
 public List<GoodsVO> getList(List<String> list);
 public List<GoodsVO> getListAll();
 public int countGoods(List<String> list);
 public int countGoodsAll();
}
