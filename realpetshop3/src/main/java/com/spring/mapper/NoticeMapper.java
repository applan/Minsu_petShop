package com.spring.mapper;

import java.util.List;

import com.spring.domain.NoticeVO;

public interface NoticeMapper {
	
	public void insert(NoticeVO vo);
	public List<NoticeVO> getList();
	public NoticeVO read(int n_bno);
	public int remove(int n_bno);
	public int update(NoticeVO li);
}
