package com.spring.domain;

import lombok.Data;

@Data
public class UserVO {
	private int userno;
	private String userid;
	private String password;
	private String confirm_password;
	private String username;
	private String addr;
	private String email;
	private String cat;
	private String dog;
	private String emailcheck;
	private String num;
	private boolean checkResult;

}
