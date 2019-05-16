package com.spring.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.domain.SearchVO;
import com.spring.mapper.SearchMapper;

@Service
public class SearchServiceImpl implements SearchService {
	@Inject
	private SearchMapper mapper;
	
	@Override
	public List<SearchVO> getSearch() {
		return mapper.SearchName();
		
	}

}
