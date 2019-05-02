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
	
	@GetMapping("/event1")
	public String event1() {
		log.info("event1 호출");
		return "/notice/event1";
	}
	@GetMapping("/event2")
	public String event2() {
		log.info("event2 호출");
		return "/notice/event2";
	}
	@GetMapping("/event3")
	public String event3() {
		log.info("event3 호출");
		return "/notice/event3";
	}
	
	@GetMapping("/notice")
	public String notice() {
		log.info("notice page 호출...");
		return "/notice/notice";
	}
}
