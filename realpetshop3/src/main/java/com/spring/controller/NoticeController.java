package com.spring.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.spring.domain.NoticeVO;
import com.spring.service.NoticeService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class NoticeController {
	
	@Inject
	private NoticeService service;

	@GetMapping("/event")
	public String event() {
		log.info("event page 호출...");
		return "notice/event";
	}

	@GetMapping("/event1")
	public String event1() {
		log.info("event1 호출");
		return "notice/event1";
	}

	@GetMapping("/event2")
	public String event2() {
		log.info("event2 호출");
		return "notice/event2";
	}

	@GetMapping("/event3")
	public String event3() {
		log.info("event3 호출");
		return "notice/event3";
	}

	@GetMapping("/notice")
	public String notice() {
		log.info("notice page 호출...");
		return "notice/notice";
	}

	@PostMapping("/notice")
	public String insert(NoticeVO vo) {
		log.info("공지사항 게시글 등록...");
		service.insert(vo);
		return "redirect:noticeList_Admin";
	}

	@GetMapping("/noticeList")
	public String noticeList(Model model) {
		log.info("게시글 목록 보여주기.....");
		List<NoticeVO> list = service.getList();
		model.addAttribute("list", list);
		return "notice/noticeList";
	}

	@GetMapping("/noticeList_Admin")
	public String noticeListAdmin(Model model) {
		log.info("게시글 목록 보여주기.....");
		List<NoticeVO> list = service.getList();
		model.addAttribute("list", list);
		return "notice/noticeList_Admin";
	}

	// 글번호를 받아서 글번호에 해당하는 내용 가져온 후
	// read.jsp에 보여주기
	@GetMapping(value = { "/noticeRead" })
	public String read(int n_bno, Model model) {
		log.info("read..." + n_bno);
		NoticeVO vo = service.read(n_bno);
		model.addAttribute("vo", vo);
		return "notice/noticeRead";
	}

	@GetMapping(value = { "/noticeRead_Admin"})
	public String readAdmin(int n_bno, Model model) {
		log.info("read..." + n_bno);
		NoticeVO vo = service.read(n_bno);
		model.addAttribute("vo", vo);
		return "notice/noticeRead_Admin";
	}
	
	@GetMapping(value = {"noticeUpdate_Admin" })
	public String updateAdmin(int n_bno, Model model) {
		log.info("update..." + n_bno);
		NoticeVO vo = service.read(n_bno);
		model.addAttribute("vo", vo);
		return "notice/noticeUpdate_Admin";
	}

	@GetMapping("/noticeRemove_Admin")
	public String remove(int n_bno) {
		log.info("remove...." + n_bno);
		service.remove(n_bno);

		return "redirect:noticeList_Admin";
	}

	@PostMapping("/noticeUpdate_Admin")
	public String modifyAdmin(NoticeVO li, Model model) {
		log.info("수정 페이지 호출");
		int result=service.update(li);
		model.addAttribute("vo", result);
		return "redirect:noticeList_Admin";
	}
	
	
}
