package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.domain.NoticeVO;
import com.spring.mapper.NoticeMapper;

@Service
public class NoticeServiceImpl implements NoticeService{
	
	@Autowired
	private NoticeMapper mapper;
	
	@Override
	public void insert(NoticeVO vo) {
		mapper.insert(vo); 
	}

	@Override
	public List<NoticeVO> getList() {
		return mapper.getList();
	}

	@Override
	public NoticeVO read(int n_bno) {
		return mapper.read(n_bno);
	}

	@Override
	public int remove(int n_bno) {
		return mapper.remove(n_bno);
	}

	@Override
	public int update(NoticeVO li) {
		return mapper.update(li);
	}

}
