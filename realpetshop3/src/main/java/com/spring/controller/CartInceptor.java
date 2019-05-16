package com.spring.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.spring.domain.sessionVO;

public class CartInceptor extends HandlerInterceptorAdapter {
	
	@Override
	 public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
	 
	  boolean masterFlag = false;
	 
	  System.out.println("Login Interceptor");
	  
	  HttpSession session = request.getSession();
	  sessionVO vo5 = (sessionVO)session.getAttribute("vo5");
	  session.setAttribute("vo5",vo5);
	  
	  if(request.getSession().getAttribute("vo5") != null) {
	            
	         
	    System.out.println("cart");      
	    masterFlag = true;
	       
	  } 
	  else if(request.getSession().getAttribute("vo5") == null){  
	          
	    System.out.println("cart!");     
	    response.sendRedirect(request.getContextPath()+"/");  
	    masterFlag = false;
	  }
	 
	  return masterFlag;
	 }
	 
	 @Override
	 public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,  ModelAndView modelAndView) throws Exception {
	       
	    super.postHandle(request, response, handler, modelAndView);
	 }
	 
	 @Override
	 public void afterCompletion(HttpServletRequest request,  HttpServletResponse response, Object handler, Exception ex) throws Exception {
	    super.afterCompletion(request, response, handler, ex);
	 } 
	} 

