package com.spring.controller;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.spring.domain.CartVO;
import com.spring.domain.ShopVO;
import com.spring.service.CartService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class PaymentController {
	@Inject
	CartService service;
	
	@GetMapping("/payment")
	public String payment() {
		log.info("결제 화면 부르기");
		return "/payment/payment";
	}
	@GetMapping("/paymentfail")
	public String paymentfail() {
		log.info("결제 실패!!");
		return "/payment/paymentfail";
	}
	@GetMapping("/backpage")
	public String backpage() {
		log.info("이전 화면으로 돌아갑니다");
		return "/payment/backpage";
	}
	@GetMapping("/paymentsuccess")
	public String paymentsuccess(Model model) {
		log.info("결제 성공!!");
		return "/payment/paymentsuccess";
	}
	@GetMapping("/home")
	public String home() {
		log.info("홈 화면으로 돌아갑니다");
		return "/home";
	}
	@GetMapping("/monthpay")
	public String monthpay() {
		log.info("정기결제 화면 부르기");
		return "payment/monthpay";
	}
	@GetMapping("/cart3")
	public String cart3(HttpSession session,int userno) {
		log.info("주문 결제화면");
		List<CartVO> list =service.listCart(userno);
		long realtotal = 0;
		int size =0;
		if(!list.isEmpty()) {
			for(int i=0; i<list.size(); i++) {
			
				long goodstotal = list.get(i).getPrice() * list.get(i).getAmount();
				list.get(i).setMoney(String.format("%,d", goodstotal));
				realtotal += goodstotal;
				list.get(i).setTotals(goodstotal);
			}
			size=list.size();
		}
		session.setAttribute("list", list);
		session.setAttribute("Totl", realtotal);
		session.setAttribute("size", size);
		return "cart/cart3";
	}
	@GetMapping("/success")
	public String success(){
		log.info("결제완료");
		return "payment/success";
	}
	
}
