package com.spring.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.domain.GoodsVO;
import com.spring.domain.GoodsVO_Trash;
import com.spring.domain.UserChangeVO;
import com.spring.domain.UserVO;
import com.spring.domain.UserVO_Trash;
import com.spring.mapper.MinsuMapper;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class MinsuServiceImpl implements MinsuService {

	@Inject
	private MinsuMapper mapper;
	
	@Override
	public int insert(GoodsVO vo) {
		return mapper.insert(vo);
	}

	@Override
	public List<GoodsVO> getList_delete() {
		return mapper.getList_delete();
	}

	@Override
	public List<UserVO> getList_member() {
		return mapper.getList_member();
	}
	
	
	@Override
	@Transactional
	public int delete_goods(int goodsNum) {
		GoodsVO vo = mapper.getGood(goodsNum);
		if(vo.getGoodsDate() != null) {vo.setGoodsDate(vo.getGoodsDate().substring(0, 10));}

		mapper.insertTrash_goods(vo);
		return mapper.delete_goods(goodsNum);
	}

	@Override
	public List<GoodsVO> getList_request() {
		return mapper.getList_request();
	}

	@Override
	public GoodsVO getRequestInfo(int goodsNum) {
		return mapper.getRequestInfo(goodsNum);
	}

	@Override
	public int countRequest() {
		return mapper.countRequest();
	}

	@Override
	public int countMember() {
		return mapper.countMember();
	}

	@Override
	@Transactional
	public int delete_members(int userno) {
		UserVO vo = mapper.getMember(userno);
		mapper.insertTrash_members(vo);
		return mapper.delete_members(userno);
	}

	@Override
	public List<GoodsVO_Trash> getList_goods_trash() {
		return mapper.getList_goods_trash();
	}

	@Override
	public List<UserVO_Trash> getList_member_trash() {
		return mapper.getList_member_trash();
	}

	@Override
	public int permanently_Delete_member(int userno) {
		return mapper.permanently_Delete_member(userno);
	}

	@Override
	public int permanently_Delete_goods(int goodsNum) {
		return mapper.permanently_Delete_goods(goodsNum);
	}

	@Override
	@Transactional
	public int restore_member(int userno) {
		UserVO_Trash vo = mapper.getMember_Trash(userno);
        UserVO invo = new UserVO();
        invo.setUserno(vo.getUserno());
        invo.setUserid(vo.getUserid());
        invo.setPassword(vo.getPassword());
		invo.setUsername(vo.getUsername());
		invo.setAddr(vo.getAddr());
		invo.setEmail(vo.getEmail());
		invo.setEmailcheck(vo.getEmailcheck());
		if(vo.getCat() != null)invo.setCat(vo.getCat());
		if(vo.getDog() != null)invo.setDog(vo.getDog());
		if(vo.getNum() != null)invo.setNum(vo.getNum());
		mapper.Reinsert_members(invo);
		return mapper.permanently_Delete_member(userno);
	}

	@Override
	@Transactional
	public int restore_goods(int goodsNum) {
		GoodsVO_Trash vo = mapper.getGoods_Trash(goodsNum);
		GoodsVO invo = new GoodsVO();
		invo.setGoodsNum(vo.getGoodsNum());
		invo.setGoodsName(vo.getGoodsName());
		invo.setGoodsId(vo.getGoodsId());
		invo.setGoodsMainUrl(vo.getGoodsMainUrl());
		if(vo.getGoodsUrl() != null) {invo.setGoodsUrl(vo.getGoodsUrl());}
		if(vo.getGoodsDate() != null) {invo.setGoodsDate(vo.getGoodsDate().substring(0,10));}
		if(vo.getGoodsInfo() != null) {invo.setGoodsInfo(vo.getGoodsInfo());}
		invo.setGoodsPrice(vo.getGoodsPrice());
		mapper.Reinsert_goods(invo);
		return mapper.permanently_Delete_goods(goodsNum);
	}

	@Override
	public int modify_authority(UserChangeVO vo) {
		return mapper.modify_authority(vo);
	}

	@Override
	public UserVO getUserInfo(int userno) {
		return mapper.getMember(userno);
	}

	@Override
	public GoodsVO getGood(int goodsNum) {
		return mapper.getGood(goodsNum);
	}





	
	

}
