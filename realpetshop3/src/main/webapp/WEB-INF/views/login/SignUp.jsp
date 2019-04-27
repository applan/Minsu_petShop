<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp" %>







<div style="background-color:white;">

<div class="container">
<div><img src="resources/img/logo.png" style="width:300px; margin-left: 380px;"/></div>

<form id="regist" >	<!-- method="post" -->
	<div class="form-group row justify-content-center">
		<label for="userid" class="col-sm-2 col-form-label">아이디</label>
		<div class="col-sm-6">			
			<input type="text" name="userid" id="userid" class="form-control" placeholder="아이디를 입력하세요"/>
			 <small id="userid" class="text-info"></small>	
		</div>
	</div>
	<div class="form-group row justify-content-center">
		<label for="pass1" class="col-sm-2 col-form-label">비밀번호</label>
		<div class="col-sm-6">	
			<input type="password" name="password" id = "password" class="form-control" placeholder="비밀번호를 입력하세요"/>
			<small id="password" class="text-info"></small>	
		</div>
	</div>	
	<div class="form-group row justify-content-center">
		<label for="pass2" class="col-sm-2 col-form-label">비밀번호 확인 </label>
		<div class="col-sm-6">	
			<input type="password" name="confirm_password" id = "confirm_password" class="form-control" placeholder="비밀번호를 다시 입력하세요"/>
			<small id="confirm_password" class="text-info"></small>
		</div>	
	</div>	
	<div class="form-group row justify-content-center">
		<label for="name" class="col-sm-2 col-form-label">이름 </label>
		<div class="col-sm-6">	
			<input type="text" name="username" id="username" class="form-control" placeholder="이름을 입력하세요"/>
			<small id="username" class="text-info"></small>
		</div>	
	</div>
	<div class="form-group row justify-content-center">
		<label for="pass3" class="col-sm-2 col-form-label">주소</label>
		<div class="col-sm-6">	
			<input type="text" name="addr" id="addr" class="form-control" placeholder="주소를 입력하세요"/>
			<small id="addr" class="text-info"></small>
		</div>	
	</div>
	<div class="form-group row justify-content-center">
	<label for="pass2" class="col-sm-2 col-form-label">성별 </label>
	  <div class="col-sm-6">		
			<div class="form-check form-check-inline">		
				<input type="radio" id="gender" name="gender" value="남" class="form-check-input"/>남				
		  	</div>	
		  	<div class="form-check form-check-inline">
				<input type="radio"  name="gender" value="여" class="form-check-input"/>여				
			</div>
			<small id="gender" class="text-info"></small>
		</div>
	</div>		
	<div class="form-group row justify-content-center">
		<label for = "email" class="col-sm-2 col-form-label">이메일</label>
		<div class="col-sm-6">	
			<input type="email" name="email" id="email" class="form-control" placeholder="example@gmail.com"/>
			동의 <input type="checkbox" id="" name=""/>
			비동의 <input type="checkbox" id="" name=""/>
			<div>
				<p></p>
				<h6>동의시 이벤트 사항을 이메일로 보내줍니다.</h6>
			</div>
			<small id="email" class="text-info"></small>		
		</div>	
	
	</div>
	<div class="form-group text-center" style="padding-right:50px; padding-top: 5px;]">		
		<button type="submit" class="btn btn-primary" style="background-color: red; border-color:red;">입력</button>
	    <button type="reset" class="btn btn-secondary" style="background-color: red; border-color:red; color:white;">취소</button>		
	</div>
			
</form>
</div>
</div>
<%@include file="../includes/footer.jsp" %>
<script src="/resources/js/jquery.validate.js"></script>
<script src="/resources/js/signup.js"></script>