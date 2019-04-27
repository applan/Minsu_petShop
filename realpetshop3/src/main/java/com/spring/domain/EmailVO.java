package com.spring.domain;

import lombok.Data;

@Data
public class EmailVO {
 private String host = "smtp.naver.com";
 private final String user = "cms4861";
 private final String password = "blizard23@23";
 
 private String to;
 private String subject;
 private String text;
 private String imglink;
 
}
