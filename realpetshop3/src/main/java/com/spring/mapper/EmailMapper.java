package com.spring.mapper;

import java.util.List;

import com.spring.domain.UserVO;

public interface EmailMapper {
	public List<UserVO> getListCheckEmail(String no);
}
