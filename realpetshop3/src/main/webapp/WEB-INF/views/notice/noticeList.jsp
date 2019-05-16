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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>


<!-- notice page -->


<p
	style="font-family: 'Jua', sans-serif; font-size: 50px; text-align: center; margin: 50px 0px 50px 0px; auto; display: inline-block; font-weight: 300; width: 100%; color: #2b2b2b">
	<i class="fas fa-bullhorn" style="color: #F23835;"></i>공지사항
</p>

<div class="noticeListPage container">
	<!-- /.row -->
	<div class="location_wrap">
		<div class="location_cont">
			<em><a href="#" class="local_home">HOME</a> &gt; 공지사항</em>
		</div>
	</div>
	<div class="border-line"></div>
	<div class="col-lg-12">
		<div class="panel panel-default">
			<!-- /.panel-heading -->
			<div class="panel-body">
				<table class="table table-striped table-bordered table-hover">
					<colgroup>
						<!-- 번호 -->
						<col style="width: 10%">
						<!-- 제목 -->
						<col style="width: 55%">
						<!-- 작성자 -->
						<col style="width: 15%">
						<!-- 작성일 -->
						<col style="width: 20%">
					</colgroup>
					<thead>
						<tr>
							<th>번 호</th>
							<th>제 목</th>
							<th>작성자</th>
							<th>작성일</th>
						</tr>
					</thead>
					<!-- 게시판 리스트 반복문 -->
					<c:forEach var="vo" items="${list}">
						<tr>
							<td>${vo.n_bno}</td>
							<td><a href="${vo.n_bno}" class="move">${vo.n_title}</a></td>
							<td>${vo.n_writer}</td>
							<td><fmt:formatDate pattern="yyyy-MM-dd" value="${vo.regdate}" /></td>
						</tr>
					</c:forEach>
				</table>
			</div>
			<!-- end panel-body -->
		</div>
		<!-- end panel -->
	</div>
</div>
<form id="actionForm" action="" method="get"></form>
<script>

$(function() {
	var actionForm=$("#actionForm");
	$(".move").click(
		function(e) {
			//태그의 기능 막기
			e.preventDefault();
			//bno 태그 추가
			actionForm.append("<input type='hidden' name='n_bno' value='"+$(this).attr("href")+"'>");
			//actionForm의 action을 변경
			actionForm.attr("action", "/noticeRead");
			actionForm.submit();
	});
});
</script>

<%@include file="../includes/footer.jsp"%>