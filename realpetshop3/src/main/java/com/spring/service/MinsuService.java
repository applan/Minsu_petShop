package com.spring.service;

import java.util.List;

import com.spring.domain.GoodsVO;
import com.spring.domain.GoodsVO_Trash;
import com.spring.domain.UserChangeVO;
import com.spring.domain.UserVO;
import com.spring.domain.UserVO_Trash;

public interface MinsuService {

	public int insert(GoodsVO vo); // insert(시퀀스 이용)
	public List<GoodsVO> getList_delete(); // goods리스트 가져오기
	public int countRequest(); // 요청 갯수
	public int countMember();  // 유저 명수
	public List<UserVO> getList_member(); // 유저 목록 가져오기
	public List<GoodsVO> getList_request(); // 요청 목록 가져오기
	public GoodsVO getRequestInfo(int goodsNum); // goodsNum에 해당하는 요청 정보 가져오기
	public UserVO getUserInfo(int userno); // userno에 해당하는 유저 정보 가져오기
	public int delete_goods(int goodsNum); // goodsNum에 해당하는 상품 삭제
	public int delete_members(int userno); // userno에 해당하는 유저 삭제
	public List<GoodsVO_Trash> getList_goods_trash(); // 쓰래기통 속 상품 정보 가져오기
	public List<UserVO_Trash> getList_member_trash(); // 쓰래기통 속 유저 정보 가져오기
	public int permanently_Delete_member(int userno); // 쓰래기통 속 유저 정보 영구 삭제
	public int permanently_Delete_goods(int goodsNum); // 쓰래기통 속 상품 정보 영구 삭제
	public int restore_member(int userno); // 쓰래기통 속 유저 정보 복원
	public int restore_goods(int goodsNum); // 쓰래기통 속 상품 정보 복원 
	public int modify_authority(UserChangeVO vo); // 유저 권한 변경 
    public GoodsVO getGood(int goodsNum); // goodsNum을 이용해 상품 가져오기
}
