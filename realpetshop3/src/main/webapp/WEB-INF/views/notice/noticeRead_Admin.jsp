<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="../includes/header.jsp"%>
<link rel="stylesheet" href="/resources/css/style.css" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1">
<div class="noticeReadPage container">
	<div class="location_cont">
		<em><a href="#" class="local_home">HOME</a> &gt; 공지사항</em>
	</div>
	<div class="border-line"></div>
	<p>공지사항</p>
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-body">
					<form action="" role="form">
						<div class="col-1 notice_bno">
							<label>번호</label> <input class="form-control" name="n_bno"
								readonly="readonly" value="${vo.n_bno}">
						</div>
						<div class="form-group row">
							<div class="col-8 notice_title">
								<label>제목</label> <input class="form-control" name="n_title"
									readonly="readonly" value="${vo.n_title}">
							</div>
							<div class="col-4 notice_writer">
								<label>글쓴이</label> <input class="form-control" name="n_writer"
									readonly="readonly" value="${vo.n_writer}">
							</div>
						</div>
						<div class="notice_content">
							<label>내용</label>
							<textarea class="form-control" rows="3" name="n_content"
								readonly="readonly">${vo.n_content}</textarea>
						</div>
						<button type="button" onclick="location.href='/noticeRemove_Admin?n_bno=${vo.n_bno}'" class="btn btn-danger">삭제</button>
						<button type="button" onclick="location.href='/noticeUpdate_Admin?n_bno=${vo.n_bno}'" class="btn btn-info">수정</button>
						<button type="button" onclick="location.href='/noticeList_Admin'" class="btn btn-primary gradient">목록</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>


<%@include file="../includes/footer.jsp"%>