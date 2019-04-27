package com.spring.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.spring.domain.ShopVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class PaymentController {
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
		List<ShopVO> list = new ArrayList<ShopVO>();
		ShopVO vo=new ShopVO();
		vo.setProductname("개 사료");
		vo.setMonth("1");
		vo.setPaymentdata("카카오페이");
		vo.setResult(true);
		vo.setResult2(vo.isResult());
		vo.setMoney(10000);
		vo.setSummoney(vo.getMoney());
		list.add(vo);
		model.addAttribute("list",list);
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
}
