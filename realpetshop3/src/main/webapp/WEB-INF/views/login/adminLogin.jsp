<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp" %>

<div class="row" style="padding-left: 700px;">
  <div class="text-center"><!--  style="padding-left: 250px;" -->
    <form class="form-signin" style="margin-left: 100px; margin-top: 70px;">
  <div>
  <div class="img-class">
  	<img src="resources/img/logo.png" style="width:300px;"/>
  	</div>
  </div>
  <h1 class="h3 mb-3 font-weight-normal" >로그인</h1>
  <label for="userid" class="sr-only">userid</label>
  <input type="text" id="userid" class="form-control" placeholder="Userid" required autofocus >
  <label for="password" class="sr-only">Password</label>
  <input type="password" id="password" class="form-control" placeholder="Password" required>
  <div class="checkbox mb-3">
    <label>
      <input type="checkbox" value="remember-me"> Remember me
    </label>
  </div>
  <button class="btn btn-lg btn-primary btn-block" type="submit" style="background-color:red; border-color:red;" >관리자 로그인</button>
	<div>
		<h1> </h1>
	</div>
  <div class="foo">
	
	<div>
  	<h6>|<a href="FindID" style="color:black;">아이디 찾기</a> | 
  	<a href="PasswordRelivalance" style="color:black;">비밀번호 찾기</a> | 
  	<a href="SignUp" style="color:black;">회원가입</a>|</h6>
	</div> 
  </div>
	<div>
	<p class="mt-5 mb-3 text-muted">&copy; 2019-01-10~2019-06-20</p>
	</div>
</form>
</div>
</div>

<%@include file="../includes/footer.jsp" %>