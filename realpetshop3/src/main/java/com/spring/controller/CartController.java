package com.spring.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.domain.AuthInfo;
import com.spring.domain.CartVO;
import com.spring.service.CartService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/cart/*")
@SessionAttributes("info")
public class CartController {
	
	@Autowired
	private CartService service;
	
	
	//장바구니 추가
	@GetMapping("/insertCart")
	public void insertCart() {
		log.info("장바구니추가..");
		/* return "/cart/cart"; */
	}
	@PostMapping("/insertCart")
	public String insertCart(@ModelAttribute("info")AuthInfo info,
			CartVO vo,SessionStatus status,RedirectAttributes rttr) {
		log.info("장바구니...");
		int userno=info.getUserno();
		int count=service.countCart(vo.getGoodsnum(), userno);
		
		if(count==0) {
			service.insertCart(vo);
		}else {
			//존재하면 추가하는거
			service.updateCart(vo);
		}
			//상품페이지 (장바구니 담았던~ 그 제품 페이지로 바로 보여주기)
		return "redirect:goods";
	}
	
	
	
	//장바구니 리스트 보여주기
	@GetMapping("/cart2")
	public void listCart() {
		log.info("listCart 보여주기..");
	}
	//장바구니 리스트 보여주기
	@GetMapping("/cart3")
	public String listCart3(int goodsNum) {
		log.info("listCart 보여주기..으아아암나안망"+goodsNum);
		// db 
		
		return "redirect:/cart/cart2";
		
	}
	
	
	@PostMapping("/cart2")
	public ModelAndView listCart(ModelAndView mav,int userno) {
		
		Map<String, Object> map =new HashMap<String, Object>();
		List<CartVO> list =service.listCart(userno);
		
		int sumMoney = service.sumMoney(userno);
		
		map.put("list",list); //장바구니 정보를 map에 저장
		map.put("count",list.size());  //장바구니 상품 유무
		map.put("sumMoney",sumMoney); //장바구니 전체 금액
		
		mav.setViewName("cart/cartList");
		mav.addObject("map",map);
		
		return mav;		
	}
	
	//장바구니 삭제
	@GetMapping("/deleteCart")
	public void deleteCart() {
		log.info("장바구니 삭제..");
	}
	
	@PostMapping("/deleteCart")
	public String deleteCart(int cartno) {
		service.deleteCart(cartno);	
		return "redirect:cart1";	
	}
	
	//장바구니 안에서 수량 수정!!!
	
	@GetMapping("/modifyCart")
	public void modifyCart() {
		log.info("장바구니 안에서 수량 수정...");
	}
	
	@PostMapping("/modifyCart")
	public String modifyCart(@RequestParam int[] amount,
			@RequestParam int[] goodsNum,@ModelAttribute("info")AuthInfo info,
			SessionStatus status) {
		int userno=info.getUserno();
		
		for(int i=0; i<amount.length; i++) {
			CartVO vo=new CartVO();
			vo.setUserno(userno);
			vo.setAmount(amount[i]);
			vo.setGoodsnum(goodsNum[i]);
			service.modifyCart(vo);
		}
		return "/cart/cart2";		
	}
	
	
	
	
	


	
	

}
