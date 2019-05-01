<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../includes/header.jsp"%>
<link rel="stylesheet" href="/resources/css/style.css" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1">


<div class="container">
	<!-- <div><img src="resources/img/logo.png" style="width:300px; margin-left: 380px;"/></div> -->

	<form id="regist">
		<p class="user-plus">
			<i class="far fa-registered"></i>
		</p>
		<div class="form-group row justify-content-center">
			<div class="col-sm-3">
				<input type="text" name="userid" id="userid" class="form-control"
					placeholder="아이디" /> <small id="userid" class="text-info"></small>
			</div>
			<!-- </div>
		<div class="form-group row justify-content-center"> -->
			<div class="col-sm-3">
				<input type="text" name="username" id="username"
					class="form-control" placeholder="이름" /> <small id="username"
					class="text-info"></small>
			</div>
		</div>
		<div class="form-group row justify-content-center">
			<div class="col-sm-3">
				<input type="password" name="password" id="password"
					class="form-control" placeholder="비밀번호" /> <small id="password"
					class="text-info"></small>
			</div>
			<!-- </div>
		<div class="form-group row justify-content-center"> -->
			<div class="col-sm-3">
				<input type="password" name="confirm_password" id="confirm_password"
					class="form-control" placeholder="비밀번호 재입력" /> <small
					id="confirm_password" class="text-info"></small>
			</div>
		</div>
		<div class="form-group row justify-content-center">
			<div class="col-sm-6">
				<input type="text" name="addr" id="addr" class="form-control"
					placeholder="주소 입력" /> <small id="addr" class="text-info"></small>
			</div>
		</div>
		<div class="form-group row justify-content-center">
			<div class="col-sm-6 text-left">
				<div class="form-check form-check-inline">
					<input type="radio" id="cat" name="pet" value="고양이"
						class="form-check-input" />고양이
				</div>
				<div class="form-check form-check-inline">
					<input type="radio" id="dog" name="pet" value="강아지"
						class="form-check-input" />강아지
				</div>
				<small id="gender" class="text-info"></small>
			</div>
		</div>
		<div class="form-group row justify-content-center">
			<div class="col-sm-6 text-left">
				<input type="email" name="email" id="email" class="form-control"
					placeholder="example@gmail.com" /> 동의 <input type="checkbox" id=""
					name="" /> 비동의 <input type="checkbox" id="" name="" />
				<div>
					<p></p>
					<h6>동의시 이벤트 사항을 이메일로 보내줍니다.</h6>
				</div>
				<small id="email" class="text-info"></small>
			</div>

		</div>
		<div class="form-group text-center">
			<div class="no-gutters row text-center" style="width: 30%;">
				<div class="col-5 pr-1">
					<button type="button"
						class="btn btn-primary btn-block btn-lg gradient">가입
					</button>
				</div>
				<div class="col-1 pr-1"></div>
				<div class="col-5 pr-1">
					<button type="button" onclick='history.back()'
						class="btn btn-primary btn-block btn-lg gradient" type="submit">취소
					</button>
				</div>
			</div>
		</div>
	</form>
</div>

<%@include file="../includes/footer.jsp"%>
<script src="/resources/js/jquery.validate.js"></script>
<script src="/resources/js/signup.js"></script>