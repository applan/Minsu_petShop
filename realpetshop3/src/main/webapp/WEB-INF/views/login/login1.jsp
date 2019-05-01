<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../includes/header.jsp"%>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/resources/css/style.css" />

<div class="container">
	<div class="no-gutters pt-5 row">
		<div class="col-1 col-sm-4"></div>
		<div class="col-10 col-sm-4">
			<div class="text-center">
				<form class="form-signin" method="post">
					<!-- <div>
					<div class="img-class">
						<a href="adminLogin"><img src="resources/img/logo.png" style="width:300px;"/></a>
					</div>
				</div> -->
					<p class="p">
						<i class="fas fa-user-circle"></i>
					</p>
					<label for="userid" class="sr-only"></label> <input type="text"
						id="userid" name="userid" class="form-control" placeholder="아이디" required	autofocus> 
						<label for="password" class="sr-only"></label>
					<input type="password" id="password" name="current_password" class="form-control"
						placeholder="패스워드" required>



					<button type="submit"
						class="btn btn-primary btn-block btn-lg gradient">로그인
					</button>

					<div class="foo">
						<div>
							<h6>
								|<a href="/FindID" style="color: black;">아이디 찾기</a>|<a
									href="/PasswordRelivalance" style="color: black;">비밀번호 찾기</a>|<a
									href="/SignUp" style="color: black;">회원가입</a>|
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
<%@include file="../includes/footer.jsp"%>