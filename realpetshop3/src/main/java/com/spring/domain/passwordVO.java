package com.spring.domain;

import lombok.Data;

@Data
public class passwordVO {
 private String host = "smtp.naver.com";
 private final String user = "cms4861";
 private final String passwordd = "blizard23@23";
 
 

 private String subject;
 private String text;
 private String password;
 private String current_password;
 private String new_password;
 private String userid;
 private String email;
 private String num;
private int getRandom;
 
 
}
