package com.spring.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.domain.Ajax_cartVO;
import com.spring.domain.CartVO;
import com.spring.service.Ajax_cartService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class AjaxController_cart {

	@Inject
	private Ajax_cartService service;
	
	@PostMapping("/amountM")
	@ResponseBody
	public CartVO amountM(@RequestBody Ajax_cartVO ajVO,Model model) {
		
		
		
		CartVO vo = service.modifyCart(ajVO);
		long goodstotal = vo.getPrice() * vo.getAmount();
		vo.setMoney(String.format("%,d", goodstotal)); 
		vo.setTotals(goodstotal);
		return vo;
	}
}
