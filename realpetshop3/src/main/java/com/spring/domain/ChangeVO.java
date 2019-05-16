package com.spring.domain;

import lombok.Data;

@Data
public class ChangeVO {
	//개인정보 변경
	private String userid;
	private String username;
	private String current_password;
	private String new_addr;
	private String new_password;
	private String confirm_password;
	private String dog;
	private String cat;
	private String emailcheck;
	private String new_email;
	private String num;
	
}
