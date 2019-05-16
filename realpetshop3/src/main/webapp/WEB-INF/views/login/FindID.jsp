<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../includes/header.jsp"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- <link rel="stylesheet" href="/resources/css/gd_common.css" /> -->

<link rel="stylesheet" href="/resources/css/style.css" />

<div class="container">
	<div class="no-gutters py-5 row">
		<div class="col-1 col-sm-4"></div>
		<div class="col-10 col-sm-4">
			<div class="text-center">
				<!-- 본문 시작 : start -->
				<!-- <img src="/resources/img/logo.png" style="width: 300px; margin-left: 130px;" /> -->
				<form class="formFindId idfind" id="formFindId" method="post">
					<!-- method="post" novalidate="novalidate"-->
					<p class="p">
						<i class="fas fa-dog"></i>
					</p>
					<label for="username" class="sr-only"></label> 
					<input type="text" id="username" name="username" class="form-control name" placeholder="이름" required
						autofocus>
							
					<input type="hidden" value="${vo.userid}" id="userid" name="userid" class="form-control" placeholder="이름" required
						autofocus>
						
						<label for="email" class="sr-only"></label> 
						<input type="email" id="email" name="email" class="form-control email"
						placeholder="가입한 이메일 주소" required>
					
					<button type="submit"
						class="btn btn-primary btn-block btn-lg gradient"><a href="findfindfinduserid" style="color:#fff">아이디 찾기</a></button>

					<!-- 				<p class="dn caution-msg1">일치하는 회원정보가 없습니다. 다시 입력해 주세요.</p>
 -->
					
					<div class="foo">
						<div>
							<h6>
								|<a href="PasswordRelivalance" style="color: black;">비밀번호 찾기</a>|
								<a href="login1" style="color: black;">로그인하기</a>|
							</h6>
						</div>
					</div>
					<div>
						<p class="mt-5 mb-3 text-muted">© 2019-01-10~2019-06-20</p>
					</div>
				</form>
			</div>
		</div>
		<div class="col-1 col-sm-4"></div>
	</div>
</div>
<script>
$(".gradient").click(function(e){
	e.preventDefault();
	if($(".name").val().trim() === ""){
		alert("이름을 입력해주세요");
		return;
	}
	if($(".email").val().trim() === ""){
		alert("이메일을 입력해주세요");
		return;
	}
	
	$(".idfind").submit();
});
</script>
<%@include file="../includes/footer.jsp"%>


