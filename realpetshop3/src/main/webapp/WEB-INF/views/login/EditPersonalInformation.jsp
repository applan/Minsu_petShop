
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="../includes/header.jsp" %>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<div style="background-color:white;">

<div class="container">
<div><img src="/resources/img/logo.png" style="width:300px; margin-left: 380px;"/></div>

<form class="registtt" id="registtt" method="post">	<!-- method="post" -->
	<div class="form-group row justify-content-center">
		<label for="userid" class="col-sm-2 col-form-label">아이디</label>
		<div class="col-sm-6">			
			<input type="text" name="userid" id="userid" class="form-control" 
			value="${info.userid}" readonly="readonly"/>
			 <small id="userid" class="text-info"></small>	
		</div>
	</div>
		<div class="form-group row justify-content-center">
		<label for="pass1" class="col-sm-2 col-form-label">현재 비밀번호</label>
		<div class="col-sm-6">	
			<input type="password" name="current_password" id = "current_password" class="form-control" placeholder="비밀번호를 입력하세요"/>
			<small id="current_password" class="text-info"></small>	
		</div>
	</div>	
	<div class="form-group row justify-content-center">
		<label for="pass2" class="col-sm-2 col-form-label">비밀번호 재설정 </label>
		<div class="col-sm-6">	
			<input type="password" name="new_password" id = "new_password" class="form-control" placeholder="수정할 비밀번호를 입력하세요"/>
			<small id="new_password" class="text-info"></small>
		</div>	
	</div>
	<div class="form-group row justify-content-center">
		<label for="pass2" class="col-sm-2 col-form-label">비밀번호 확인 </label>
		<div class="col-sm-6">	
			<input type="password" name="confirm_password" id = "confirm_password" class="form-control" placeholder="수정할 비밀번호를 다시 입력하세요"/>
			<small id="confirm_password" class="text-info"></small>
		</div>	
	</div>	
	<div class="form-group row justify-content-center">
		<label for="name" class="col-sm-2 col-form-label">이름 </label>
		<div class="col-sm-6">	
			<input type="text" name="username" id="username" class="form-control" 
			value="${info.username}" readonly="readonly"/>
			<small id="username" class="text-info"></small>
		</div>	
	</div>
	<div class="form-group row justify-content-center">
		<label for="pass3" class="col-sm-2 col-form-label">주소</label>
		<div class="col-sm-6">	
			<input type="text" name="new_addr" id="new_addr" class="form-control" 
			value="${info.addr}" placeholder="수정할 주소를 입력하세요"/>
			<small id="new_addr" class="text-info"></small>
		</div>	
	</div>
	<div class="form-group row justify-content-center">
	<label for="pass2" class="col-sm-2 col-form-label">애완동물</label>
	  <div class="col-sm-6">		
			<div class="form-check form-check-inline">		
				<input type="radio" id="cat" name="cat" value="cat" class="form-check-input"/>고양이			
		  	</div>				
		</div>
	</div>
	<div class="form-group row justify-content-center">
	  <div class="col-sm-6">		
		  	<div class="form-check form-check-inline">
				<input type="radio"  id="dog" name="dog" value="dog" class="form-check-input"/>강아지				
			</div>
			
		</div>
	</div>
	<div class="form-group row justify-content-center">
		<label for = "email" class="col-sm-2 col-form-label">이메일</label>
		<div class="col-sm-6">	
			<input type="email" name="new_email" id="new_email" class="form-control" 
			value="${info.email}" placeholder="example@gmail.com"/>
			동의 <input type="radio" id="emailcheck" name="emailcheck" value="1"/><!-- onclick="radio_check2" -->
			<div>
				<p></p>
				<h6>동의시 이벤트 사항을 이메일로 보내줍니다.</h6>
			</div>
			<small id="email" class="text-info"></small>		
		</div>	
	
	</div>
	<div class="form-group text-center" style="padding-right:50px; padding-top: 5px;">		
		<button type="submit" class="btn btn-primary" style="background-color: red; border-color:red;">수정</button>
	    <button type="reset" class="btn btn-secondary" style="background-color: red; border-color:red; color:white;">취소</button>		
		
		<!-- 실험용 -->
		<a href="DeleteId">회원탈퇴</a>
		
		
		
	</div>
			
</form>
</div>
</div>

<script type="text/javascript">
	$(document).ready(function(){
		var cat='${info.cat}';
		
		if(cat==='cat'){			
			$('input:radio[name="cat"]').prop("checked", true);
		}
	});
	$(document).ready(function(){
		var dog='${info.dog}';
		
		if(dog==='dog'){
			$('input:radio[name="dog"]').prop("checked", true);
			
		}
	});
	$(document).ready(function(){
		var emailcheck='${info.emailcheck}';
		
		if(emailcheck==='1'){
			$('input:radio[name="emailcheck"]').prop("checked", true);
		}
	});

</script>
<%@include file="../includes/footer.jsp" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="/resources/js/jquery.validate.js"></script>
<script src="/resources/js/editpersonalinformation.js"></script>

