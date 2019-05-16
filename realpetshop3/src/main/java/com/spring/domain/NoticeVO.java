package com.spring.domain;

import java.util.Date;

import lombok.Data;

@Data
public class NoticeVO {
	private int n_bno;
	private String n_title;
	private String n_content;
	private String n_writer;
	private Date regdate;
}
