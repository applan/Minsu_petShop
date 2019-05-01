package com.spring.controller;


import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.spring.domain.GoodsVO;
import com.spring.service.MinsuService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class GoodsVIewController {
     
	@Inject
	private MinsuService service;
	
	@GetMapping("/GoodsInfoView")
	public String goGoodsInfoView(Model model) {
		log.info("GoodsInfoView....");
		GoodsVO vo = service.getGood(20);
		
		if(vo == null) {
			return "redirect:/";
		}else {
		  vo.setGoodsPriceFormat(String.format("%,d", vo.getGoodsPrice()));
		}
		
		
		model.addAttribute("vo", vo);
		return "/goods/GoodsInfoView";
	}
}
