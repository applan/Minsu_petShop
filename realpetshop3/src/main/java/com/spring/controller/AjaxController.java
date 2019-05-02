package com.spring.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.domain.GoodsVO;

@Controller
public class AjaxController {
  
	
	@GetMapping
	@ResponseBody
	public List<GoodsVO> getList(){
		return null;
	}
}
