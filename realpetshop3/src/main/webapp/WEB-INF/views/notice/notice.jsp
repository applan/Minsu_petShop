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
<div class="container text-left">
	<div class="notice_page">
		<div class="location_cont">
			<em><a href="#" class="local_home">HOME</a> &gt; 공지사항</em>
		</div>
		<div class="page-header">
			<div class="border-line"></div>
			<p>공지사항</p>
		</div>
		<!-- /.col-lg-12 -->
		<div class="panel panel-default">
			<div class="panel-body">
				<form action="" method="post" role="form">
					<div class="form-group row">
						<div class="col-8 notice_title">
							<h4>제목</h4>
							<input name="n_title" required="required">
						</div>
						<div class="col-4 notice_writer">
							<h4>글쓴이</h4>
							<input name="n_writer" required="required">
						</div>
					</div>
					<div class="notice_content">
						<h4>내용</h4>
						<textarea name="n_content" required="required"></textarea>
					</div>
					<div class="notice_btn text-right">
						<button type="submit" class="btn btn-primary btn-lg gradient">글쓰기</button>
						<button type="button" onclick="history.back()" class="btn btn-primary btn-lg gradient">취소</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<%@include file="../includes/footer.jsp"%>