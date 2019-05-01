package com.spring.controller;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.domain.AuthInfo;
import com.spring.domain.LoginVO;
import com.spring.domain.UserVO;
import com.spring.domain.passwordVO;
import com.spring.domain.sessionVO;
import com.spring.service.PasswordService;
import com.spring.service.UserService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@SessionAttributes("info")
public class LoginController {

	
	@Autowired
	private UserService service;
	
	@GetMapping("/login1") 
	  public String login(HttpSession session) { 
		  log.info("로그인 폼");
		  
		  if(session.getAttribute("vo5")!=null) {
			  return "redirect:/";
		  }
		  
		  
		  return "/login/login1";
	  }
	
	
	@PostMapping("/login1")
	public String login(HttpSession session, LoginVO vo, Model model, RedirectAttributes rttr) {
		log.info("로그인 정보 가져오기 ....");
		//로그인 시도
		AuthInfo info = new AuthInfo();
		log.info(info.getUserid()+" "+info.getCurrent_password());
		
		info=service.selectMember(vo);
		
		sessionVO vo5 = new sessionVO();
		
		vo5.setNum(info.getNum());
		vo5.setUserno(info.getUserno());
		
		if(info!=null) {
			log.info(vo.getNum());
			if("1".equals(vo5.getNum())) {
				//관리자 페이지 만들어주기
				session.setAttribute("vo5",vo5);
				return "redirect:EditPersonalInformation";
			}
			else if("2".equals(vo5.getNum())) {
				//판매자 페이지
				session.setAttribute("vo5",vo5);
				return "redirect:FindID";
			}
			else if("3".equals(vo5.getNum())) {
				//구매자 페이지
				session.setAttribute("vo5",vo5);
				return "redirect:/";
			}
			
		}
		return "login/SignUp";
	}
	
	@GetMapping("/SignUp")
	public String signup() {
		log.info("가입 요청.....");
		
		return "login/SignUp";
		
	}

	//회원가입
	@PostMapping("/SignUp")
	public String signUp(@ModelAttribute("vo")UserVO vo, Model model) {
		log.info("회원가입 요청...");
		
		log.info(vo.getUserid());
		log.info(vo.getPassword());
		log.info(vo.getUsername());
		log.info(vo.getAddr());
		log.info(vo.getEmail());
		log.info(vo.getNum());
		
			return "SignUp";
	}
	//중복아이디 검사 
	//http://localhost:8083/login/checkId
	//userid / post방식
	@ResponseBody
	@PostMapping("/checkId")
	public String checkId(String userid) {
		log.info("중복 아이디 검사    "+userid);	
		UserVO dupId=service.selectById(userid);
		//dupId가 널이 아니면 이미 사용중인 아이디 
		if(dupId!=null)
			return "false";
		return "true";//널이면 사용할 수 있는 아이디		
	}	
	
	
	//로그아웃
	@GetMapping("/logout")
	public String logout(SessionStatus status, HttpSession session) {
		log.info("로그아웃...");
		//세션해제
		//HttpSession : invalidate(), removeAttribute()
		//SessionStatus : setComplete()
		//session.invalidate();
		//status.setComplete();
		
		
		return "/login/logout";
		//return "index";
			
	}

	//회원 탈퇴
	@GetMapping("/DeleteId")
	public String leave(@ModelAttribute("info")AuthInfo info, SessionStatus status, Model model) {
		//userid가 일치하는 회원 탈퇴
		
		log.info("회원 탈퇴.." +info.getUserid());
		
		
		int result = service.deleteMember(info);
		
		if(result>0) {
		
		log.info("탈퇴 :"+info.getUserid());	
		model.addAttribute("info", info);
		status.setComplete();
		}
		return "redirect:login1";
	}
	
	//LoginVO	
	@GetMapping("/EditPersonalInformation")
	public String EditPersonalInformation(HttpSession session, Model model) {
		
		log.info("개인정보 수정...");
		AuthInfo info = new AuthInfo();
		sessionVO vo5 = (sessionVO)session.getAttribute("vo5");
		
		info = service.edit(vo5);
		
		model.addAttribute("info", info);

		return "/login/EditPersonalInformation";
	}


//	@PostMapping(value= "/EditPersonalInformation")
//	public String EditPersonalInformation1(@ModelAttribute("info")AuthInfo info, ChangeVO vo,
//			SessionStatus status, RedirectAttributes rttr, Model model) {
//		log.info("개인정보수정....");
//		//세션에서 userid 가져오기
//		//changePwd 폼에서 넘어오는 데이터 가져오기
//		//사용자가 비밀번호 변경 폼에서 입력한 현재 비밀번호와 userid를 넘겨
//		//존재하는 사용자인지 확인하기
//		LoginVO lvo = new LoginVO();
//		lvo.setUserid(info.getUserid());
//		lvo.setCurrent_password(vo.getCurrent_password());
//		lvo.setUsername(vo.getUsername());
//		lvo.setDog(vo.getDog());
//		lvo.setCat(vo.getCat());
//		lvo.setAddr(vo.getNew_addr());
//		lvo.setEmail(vo.getNew_email());
//		
//		rttr.addAttribute("info", info);
//		
//		AuthInfo info2 = service.selectMember(lvo);
//		//일치하는 사용자가 존재한다면 userid에 해당하는 사용자의 비밀번호 변경 해주기
//		//비밀번호 변경이 성공하면 현재 세션은 해제한 후
//		//메인 페이지로 이동하기
//		
//		if(info2!=null) {
//			vo.setUserid(info.getUserid());
//			int result = service.updateMember(vo);
//			if(result>0) {
//				if(!status.isComplete()) {
//					status.setComplete();
//				}
//				return "redirect:login1";
//			}
//		}
//		//현재 비밀번호가 틀려서 사용자가 존재하지 않는다면 비밀번호 변경 폼으로
//		//돌려서 비밀번호를 확인하라는 메세지창 보여주기
//		return "redirect:EditPersonalInformation";
//}
	
	@GetMapping("/emailresult")
	public String emailResult() {
		return "/login/emailresult";
	}
	@GetMapping("/FindID")
	public String findid() {
		log.info("아이디 찾기...");

		return "/login/FindID";
	}
	@GetMapping("/PasswordRelivalance")
	public String PasswordRelivalance() {
		log.info("비밀번호를 찾아보자");
		
		return "/login/PasswordRelivalance";
	}
	
	@PostMapping(value="/findfindfinduserid")
	public String useridfind(String username, String email,
			Model model, UserVO vo) {
		log.info("아이디 찾기dd"+vo.getUsername()+"GG"+vo.getEmail());
		
		UserVO vo1 = service.useridfind(vo);
		if(vo1!=null) {
//			System.out.println("<script>");
//			System.out.println("alert('vo2.getUserid()');");
//			System.out.println("</script>");
			model.addAttribute("username",vo1.getUsername());
			model.addAttribute("email",vo1.getEmail());
			model.addAttribute("userid",vo1.getUserid());
		}


		return "/login/findfindfinduserid";
		
	}
	
	@PostMapping(value="/PasswordRelivalance")
	public String PasswordRelivalance1(String password,UserVO vo1,RedirectAttributes rttr, Model model,
			passwordVO vo, BindingResult result) {
		log.info("sendeamil..."+vo1.getUserid()+"ㅎㅎ"+vo1.getEmail());
		rttr.addFlashAttribute("userid",vo1.getUserid());
		rttr.addFlashAttribute("email",vo1.getEmail());
		
//		int random=0;
//		char[] charSet = new char[] {
//				'0','1','2','3','4','5','6','7','8','9','A','@'
//		};
//		StringBuffer sb = new StringBuffer();
//		for(int i=0; i<6; i++) {
//			random = (int)(charSet.length * Math.random());
//			sb.append(charSet[random]);
//		}
		
		int random = (int)Math.floor((Math.random()*(99999-10000+1)))+10000;
		vo.setPassword(String.valueOf(random));
	
		if(vo1.getUserid().equals(vo.getUserid()) && vo1.getEmail().equals(vo.getEmail())) {
			int vo2 = service.passwordfind(vo);
			
			if(vo2>0) {
			String getRandom = Integer.toString(random);
			getRandom = vo.getPassword();
			log.info("getRandom"+getRandom);
			rttr.addAttribute("getRandom",getRandom);
			rttr.addAttribute("password",password);
			}
		}
		
		
		PasswordService service = new PasswordService();
		try {
			service.PasswordRelivalance(vo);
		} catch (AddressException e) {
			e.printStackTrace();
		} catch (MessagingException e) {
			e.printStackTrace();
			model.addAttribute("result","false");
			return "login/emailresult";
		};
		model.addAttribute("result","true");
		return "login/emailresult";
	}
}