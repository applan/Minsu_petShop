package com.spring.controller;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.domain.EmailVO;
import com.spring.domain.GoodsVO;
import com.spring.service.EmailService;
import com.spring.service.MinsuService;
import com.spring.service.MinsuServiceImpl;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class MinsuController {

	@GetMapping("/email") 
	public String emailPage() {
		// 이메일 페이지  호출
		log.info("email...");
		return "management/email";
	}

	@GetMapping("emailresult")
	// 이메일 결과 페이지 호출
	public String emailResult(String result) {
		return "management/emailresult";
	}
	
	@PostMapping("/sendEmail")
	public String sendEmail(EmailVO vo,Model model) {
		log.info("sendEmail...");
		// 이메일 전송
		EmailService emailService = new EmailService();
		try {
			emailService.sendImage(vo);
		
		} catch (MessagingException e) {
			e.printStackTrace();
			model.addAttribute("result","false"); // 전송 성공시 result에 false 가져감
			return "management/emailresult";
		};
		model.addAttribute("result","true"); // 전송 성공시 result에 true 가져감
		return "management/emailresult";
	}
	
	@GetMapping("adminChoicePage")
	// admin 페이지 호출
	public String adminChoicePage(Model model) {
		log.info("adminChoicePage...");
		
		model.addAttribute("result_money", 200);  // 매출 목표치 표시를 위해 가져감 
		return "management/adminChoicePage_main";
	}
	@GetMapping("adminChoicePage_meber")
	public String adminChoicePage_memeber() {
		// admin_회원관리 페이지 호출
		log.info("adminChoicePage_member...");
		
		return "management/adminChoicePage_member";
	}
	@GetMapping("adminChoicePage_delete")
	public String adminChoicePage_delete() {
		// admin_상품관리 페이지 호출
		log.info("adminChoicePage_goodsPage...");
		
		return "management/adminChoicePage_delete";
	}
	@GetMapping("adminChoicePage_enrollment")
	public String adminChoicePage_enrollment() {
		// admin_상품등록 페이지 호출
		log.info("adminChoicePage_enrollment...");
		
		return "management/adminChoicePage_enrollment";
	}
	@PostMapping("adminChoicePage_enrollment")
	public String adminChoicePage_enrollment(GoodsVO vo,RedirectAttributes red) {
		log.info("adminChoicePage_enrollment_insert...");
		log.info(vo.toString());
		MinsuServiceImpl enrollmentService = new MinsuServiceImpl();
		int result = enrollmentService.insertGoods(vo);
		
		if(result >0) {
			red.addAttribute("result_en","true");
		}else {
			red.addAttribute("result_en","false");
			return "redirect:management/adminChoicePage_enrollment";
		}
		return "redirect:management/adminChoicePage_delete";
	}
}
