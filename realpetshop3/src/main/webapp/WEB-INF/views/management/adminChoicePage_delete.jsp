<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> <!-- 날짜 format형식 출력 -->
<%@include file="../includes/header_admin.jsp" %>
<style>
 .all_b{
  padding-top: 20px;
 }
  .checkimg_d{
  width: 20px;
  height: 20px;
 }
 
</style>
<div class="all_b">
<h1 style="font-family: 'Jua', sans-serif; font-size: 55px;">상품 관리</h1>
<table class="table ta">
  <thead class="thead-dark">
    <tr>
      <th scope="col">상품 번호</th>
      <th scope="col">상품 이름</th>
      <th scope="col">상품 가격</th>
      <th scope="col">판매자 아이디</th>
      <th scope="col">최종 계약 기간</th>
      <th scope="col">상품 게시글 삭제</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach var="list" items="${delete_list}">
		<tr>
		  <td><a href="${list.goodsNum}">${list.goodsNum}</a></td>
		  <td>${list.goodsName}</td>
		  <td>${list.goodsPriceFormat} 원</td>
		  <td>${list.goodsId}</td>
		  <c:if test="${!empty list.goodsDate}">
		   <td >${list.goodsDate}</td>
          </c:if>
		  <c:if test="${empty list.goodsDate}">
		   <td ><img src="resources/img/infinite.png" class="checkimg_d"/></td>
          </c:if>
		  <td><a href="delete_goods?goodsNum=${list.goodsNum}"><img src="resources/img/delete_goods.png" class="checkimg_d"/></a></td>
		</tr>
		</c:forEach>
  </tbody>
</table>

</div>
<%@include file="../includes/footer_admin.jsp" %>