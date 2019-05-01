package com.spring.service;

import com.spring.domain.AuthInfo;
import com.spring.domain.ChangeVO;
import com.spring.domain.LoginVO;
import com.spring.domain.UserVO;
import com.spring.domain.passwordVO;
import com.spring.domain.sessionVO;

public interface UserService {
	public UserVO selectById(String userid);
	public int registMember(UserVO vo);
	public AuthInfo selectMember(LoginVO vo);
	public int deleteMember(AuthInfo info);
	public int updateMember(ChangeVO vo);
	public UserVO useridfind(UserVO vo);
	public int passwordfind(passwordVO vo);
	
	public AuthInfo edit(sessionVO vo5);
}

