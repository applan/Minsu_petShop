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

<link rel="stylesheet" href="/resources/css/style.css" />

<div class="container">
	<div class="no-gutters py-5 row">
		<div class="col-1 col-sm-4"></div>
		<div class="col-10 col-sm-4">
			<div class="text-center">
				<form class="formFindId" id="formFindId" method="post">

					<p class="p">
						<i class="fas fa-dog"></i>
					</p>
					<label for="userid" class="sr-only"></label> 
					<input type="text"
						id="userid" name="userid" class="form-control" value="${userid}" readonly="readonly" required autofocus> 


				<label for="username" class="sr-only">이름</label> 
					<input type="text"
						id="username" name="username" class="form-control" value="${username}" readonly="readonly" required autofocus> 

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


<%@include file="../includes/footer.jsp"%>
<script src="/resources/js/jquery.validate.js"></script>
<script src="/resources/js/findid.js"></script>
