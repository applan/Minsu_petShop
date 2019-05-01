<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="../includes/header_admin.jsp" %>
<style>
 .all_a{
  padding-top: 20px;
  padding-right: 
 }
 .all_b{
  padding-top: 20px;
  padding-right: 
 }
 .checkimg{
  width: 10px;
  height: 10px;
 }
 .checkimg_d{
  width: 20px;
  height: 20px;
 }
 .ta{
  margin-right: 90px;
 }
 
</style>
<div class="all_a">
<h1 style="font-family: 'Jua', sans-serif; font-size: 55px;">회원 관리 휴지통</h1>
<table class="table ta">
  <thead class="thead-dark">
    <tr>
      <th scope="col">회원번호</th>
      <th scope="col">회원 아이디</th>
      <th scope="col">회원 이름</th>
      <th scope="col">휴지통에 넣은 날짜</th>
      <th scope="col">회원 정보 영구 삭제</th>
      <th scope="col">복원</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach var="list" items="${trash_member_list}">
		<tr>
		  <td><a href="${list.userno}">${list.userno}</a></td>
		  <td>${list.userid}</td>
		  <td>${list.username}</td>
		  <td>${list.printTrashDate}</td>
		  <td><a href="permanently_Delete_user?userno=${list.userno}"><img src="resources/img/remove_member.png" class="checkimg_d"/></a></td>
		  <td><a href="refresh_user?userno=${list.userno}"><img src="resources/img/up.png" class="checkimg_d"/></a></td>
		</tr>
		</c:forEach>
  </tbody>
</table>
</div>
<div class="all_b">
<h1 style="font-family: 'Jua', sans-serif; font-size: 55px;">상품 관리 휴지통</h1>
<table class="table ta">
  <thead class="thead-dark">
    <tr>
      <th scope="col">상품 번호</th>
      <th scope="col">상품 이름</th>
      <th scope="col">상품 가격</th>
      <th scope="col">판매자 아이디</th>
      <th scope="col">휴지통에 넣은 날짜</th>
      <th scope="col">상품 정보 영구 삭제</th>
      <th scope="col">복원</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach var="list2" items="${trash_goods_list}">
		<tr>
		  <td><a href="${list2.goodsNum}">${list2.goodsNum}</a></td>
		  <td>${list2.goodsName}</td>
		  <td>${list2.goodsPriceFormat} 원</td>
		  <td>${list2.goodsId}</td>
		  <td>${list2.printTrashDate}</td>
		  <td><a href="permanently_Delete_goods?goodsNum=${list2.goodsNum}"><img src="resources/img/remove_goods.png" class="checkimg_d"/></a></td>
		  <td><a href="refresh_goods?goodsNum=${list2.goodsNum}"><img src="resources/img/up.png" class="checkimg_d"/></a></td>
		</tr>
		</c:forEach>
  </tbody>
</table>

</div>
<%@include file="../includes/footer_admin.jsp" %>