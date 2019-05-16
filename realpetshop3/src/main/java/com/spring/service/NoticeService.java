package com.spring.service;

import java.util.List;

import com.spring.domain.NoticeVO;

public interface NoticeService {
	
	public void insert(NoticeVO vo);
	public List<NoticeVO> getList();
	public NoticeVO read(int n_bno);
	public int remove(int n_bno);
	public int update(NoticeVO li);
}
