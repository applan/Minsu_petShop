package com.spring.mapper;

import java.util.List;

import com.spring.domain.GoodsVO;
import com.spring.domain.GoodsVO_Trash;
import com.spring.domain.UserChangeVO;
import com.spring.domain.UserVO;
import com.spring.domain.UserVO_Trash;

public interface MinsuMapper {

	public int insert(GoodsVO vo);
	public List<GoodsVO> getList_delete();
	public int countRequest();
	public int countMember();
	public List<UserVO> getList_member();
	public List<GoodsVO> getList_request();
	public GoodsVO getRequestInfo(int goodsNum);
	public int delete_goods(int goodsNum);
	public int delete_members(int userno);

    // trash담당 
	// 휴지통에 넣기
	public int insertTrash_members(UserVO vo);
	public int insertTrash_goods(GoodsVO vo);
	
	public UserVO getMember(int userno);
	public GoodsVO getGood(int goodsNum);
	
	public List<UserVO_Trash> getList_member_trash(); 
	public List<GoodsVO_Trash> getList_goods_trash();
	
	public int permanently_Delete_member(int userno);
	public int permanently_Delete_goods(int goodsNum);
	
	public UserVO_Trash getMember_Trash(int userno);
	public GoodsVO_Trash getGoods_Trash(int goodsNum);
	
	public int Reinsert_goods(GoodsVO vo);
	public int Reinsert_members(UserVO vo);
	
	// 권한 담당 
	public int modify_authority(UserChangeVO vo);
}
