package com.spring.controller;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.domain.GoodsVO;
import com.spring.service.AjaxService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class AjaxController {
  
	@Inject
	private AjaxService service;
	
	@PostMapping("/search_attr")
	@ResponseBody
	public List<GoodsVO> getList(@RequestParam (value = "valueArr")String value,Model model){
		log.info("das"+value.toString());
		String[] st = value==null? new String[] {} : value.split("");
		List<String> list = new ArrayList<String>();
		for(int i=0; i<st.length; i++) {
			list.add(st[i]);
		}
		List<GoodsVO> resultList = service.getList(list);
		int resultCount = service.countGoods(list);
		model.addAttribute("resultCount", resultCount);
		return resultList;
	}
	@GetMapping("/search_attrAll")
	@ResponseBody
	public List<GoodsVO> getList(Model model){
		List<GoodsVO> resultList = service.getListAll();
		int resultCount = service.countGoodsAll();
		model.addAttribute("resultCount", resultCount);
		return resultList;
	}
	
	

}














