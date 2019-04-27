package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class LoginController {

	@GetMapping("/login1")
	public String login() {
		log.info("로그인 폼");
		
		return "login/login1";
	}
	
	
	@GetMapping("/FindID")
	public String findid() {
		
		return "login/FindID";
	}
	
	@GetMapping("/PasswordRelivalance")
	public String passwordrelivalance() {
		
		return "login/PasswordRelivalance";
	}
	
	@GetMapping("/SignUp")
	public String signup() {
		
		return "login/SignUp";
	}
	
	@GetMapping("/SellerLogin")
	public String sellerlogin() {
		
		return "login/SellerLogin";
	}
	
	@GetMapping("/adminLogin")
	public String adminlogin() {
		log.info("관리자");
		return "login/adminLogin";
	}
	
	@GetMapping("/EditPersonalInformation")
	public String EditPersonalInformation() {
		log.info("개인정보수정");
		return "login/EditPersonalInformation";
	}
	
}
