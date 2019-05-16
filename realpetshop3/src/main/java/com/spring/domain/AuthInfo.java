package com.spring.domain;

import lombok.Data;

//로그인 할때
@Data
public class AuthInfo {
	//userno 추가
	private int userno;
	private String userid;
	private String current_password;
	private String username;
	private String email;
	private String addr;
	private String num;
	private String cat;
	private String dog;
	private String emailcheck;
}
