package com.spring.mapper;

import com.spring.domain.Ajax_cartVO;
import com.spring.domain.CartVO;

public interface Ajax_cartMapper {
	  public int modifyCart(Ajax_cartVO ajVO);
	  public CartVO getCartInfo(int cartno);
}
