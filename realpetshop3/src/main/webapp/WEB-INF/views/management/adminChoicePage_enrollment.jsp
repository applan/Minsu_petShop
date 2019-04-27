<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../includes/header_admin.jsp" %>
<style>
 .all_b{
  padding-top: 20px;
 }
</style>

<div class="all_b">
	<div style="display: flex; justify-content: space-between;">
		<div>
			<h1>상품 등록</h1>
		</div>
		<div>
			<button type="button" class="btn btn-success" style="margin-top: 20px; height: 40px; margin-right: 480px;">등록</button>
		</div>
	</div>
		<div style="padding-right:55%;">
			<input type="text" class="form-control" placeholder="상품 제목을 입력해주세요" >
		</div>
			<br />
			<br />
		<div style="height: 400px">
			<textarea class="form-control " rows="3" placeholder="상품 정보를 입력해주세요" style="resize: none; width: 70%; height: 400px"></textarea>
		</div>
		
</div>
<%@include file="../includes/footer_admin.jsp" %>