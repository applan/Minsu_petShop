package com.spring.domain;

import lombok.Data;

@Data
public class EmailVO {
 private String host = "smtp.naver.com";
 private final String user = "cms4861"; //보내는 사람
 private final String password = "blizard23@23"; // 보내는 사람 네이버 비밀번호 
 
 private String to; // 받는사람
 private String subject; // 제목
 private String text; // 내용
 private String imglink; // 이미 링크 
 
}
