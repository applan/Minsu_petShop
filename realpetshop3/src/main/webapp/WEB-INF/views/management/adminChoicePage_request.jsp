<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> <!-- 날짜 format형식 출력 -->
<%@include file="../includes/header_admin.jsp" %>
<style>
 .all_b{
  padding-top: 20px;
 }
  .checkimg_in{
  width: 20px;
  height: 20px;
 }
 
</style>
<div class="all_b">
<h1 style="font-family: 'Jua', sans-serif; font-size: 55px;">상품  등록 요청</h1>
<table class="table ta">
  <thead class="thead-dark">
    <tr>
      <th scope="col">상품 번호</th>
      <th scope="col">상품 이름</th>
      <th scope="col">요구 상품 가격</th>
      <th scope="col">판매자 아이디</th>
      <th scope="col">요구 최종 계약 기간</th>
      <th scope="col">요구 상품 상세 정보</th>
    </tr>
  </thead>
  
  <tbody>
    <c:forEach var="list" items="${request_list}">
		<tr>
		  <td><a href="${list.goodsNum}">${list.goodsNum}</a></td>
		  <td>${list.goodsName}</td>
		  <td>${list.goodsPriceFormat}</td>
		  <td>${list.goodsId}</td>
		  <td>${list.goodsDate}</td>
		  <td class="t"><a href="/adminChoicePage_trash?goodNum=${list.goodsNum}"><img src="resources/img/icon_info.png" class="checkimg_in" role="${list.goodsNum}"/></a></td>
		  <td class="t"><a href="/delete?goodNum=${list.goodsNum}"><img src="resources/img/delete.png" class="checkimg_in" role="${list.goodsNum}"/></a></td>
		</tr>
		</c:forEach>
  </tbody>
</table>

</div>
<script>
 $(function() {
	$(".checkimg_in").click(function(e) {
		
		e.preventDefault();
		
		var goodsnum = $(this).attr("role");
		var url = "goodsInfo?goodsNum="+goodsnum;
		window.open(url, "Pet Shop", "width=800, height=700, toolbar=no, menubar=no, scrollbars=no, resizable=yes" );  
		
	})
})
</script>
<%@include file="../includes/footer_admin.jsp" %>