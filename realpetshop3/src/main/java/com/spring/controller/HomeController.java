package com.spring.controller;


import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.domain.SearchVO;
import com.spring.service.SearchService;

import lombok.extern.slf4j.Slf4j;


@Slf4j
@Controller
public class HomeController {
	
	@Inject
	private SearchService service;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		
		
		return "home";
	}
	
	@GetMapping("/view")
	public void view() {
		log.info("main page 호출...");
	}
	@GetMapping("/search")
	public String search(Model model) {
		log.info("검색 화면 호출");

		//전체 리스트 가져오기
		List<SearchVO> list=service.getSearch();
		
		model.addAttribute("list", list);
		//컨트롤러에서 어느탭을 띄울 것인지 결정하여 보내기	
		
		return "search/search";
	}
	
}
