package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class NoticeController {
	
	@GetMapping("/event")
	public String event() {
		log.info("event page 호출...");
		return "/notice/event";
	}
	
	@GetMapping("/notice")
	public String notice() {
		log.info("notice page 호출...");
		return "/notice/notice";
		
		
	}
}
