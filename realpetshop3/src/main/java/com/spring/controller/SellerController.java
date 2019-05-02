package com.spring.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.spring.domain.GoodsVO;
import com.spring.service.SellerService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class SellerController {

	@Inject
	private SellerService service;
	
	@GetMapping("/requestPage")
	public String requestPage(Model model) {
		log.info("requestPage.....");
		SimpleDateFormat mSimpleDateFormat = new SimpleDateFormat ( "yyyy-MM-dd", Locale.KOREA );
		Date currentTime = new Date ();
		String mTime = mSimpleDateFormat.format ( currentTime );
		model.addAttribute("toDay",mTime);
		return "seller/requestPage";
		               
	}
	
	@PostMapping("/requestPage")
	public String requestPage(GoodsVO vo,Model model) {
		log.info("requestPage.....");
		int result = service.inserReq(vo);
		if(result >0) {
			model.addAttribute("result_requestG", "true");
		}else {
			model.addAttribute("result_requestG", "false");
		}
		return "management/result_Page";
		
	}
}
