<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../includes/header.jsp"%>

<link rel="stylesheet" href="/resources/css/style.css" />

<div class="container">
	<div class="no-gutters py-5 row">
		<div class="col-1 col-sm-4"></div>
		<div class="col-10 col-sm-4">
			<div class="text-center">
				<form class="formFindId" id="formFindId">

					<p class="p">
						<i class="fas fa-dog"></i>
					</p>
					<label for="userid" class="sr-only">아이디</label> 
					<input type="text"
						id="userid" name="userid" class="form-control" value="${userid}" readonly="readonly" required autofocus> 


				<label for="username" class="sr-only">이름</label> 
					<input type="text"
						id="username" name="username" class="form-control" value="${username}" readonly="readonly" required autofocus> 

            <div class="btn" style="border-left-width: 90px;">
                <button type="button" class="skinbtn default fi-pw find-id btn-find-password" id="pwd"
                onclick = "location.href = 'PasswordRelivalance'"
                style="background-color: red; border-color: red; color:white;"><em>비밀번호 찾기</em></button>
                <button type="button" class="skinbtn default fi-login find-id btn-login" 
                onclick = "location.href = 'login1'"
                style="background-color: red; border-color: red; color:white;"><em>로그인하기</em></button>
            </div>
        </div>		
				</form>
			</div>
		</div>
		<div class="col-1 col-sm-4"></div>
	</div>



<%@include file="../includes/footer.jsp"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="/resources/js/jquery.validate.js"></script>
<script src="/resources/js/findid.js"></script>
