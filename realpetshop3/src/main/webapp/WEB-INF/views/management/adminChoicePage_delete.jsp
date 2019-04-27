<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<h1>상품 관리</h1>
<table class="table ta">
  <thead class="thead-dark">
    <tr>
      <th scope="col">상품 번호</th>
      <th scope="col">상품 이름</th>
      <th scope="col">판매자 아이디</th>
      <th scope="col">남은 기간</th>
      <th scope="col">상품 게시글 삭제</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
      <td><a href=""><img src="resources/img/delete_goods.png" class="checkimg_d"/></a></td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
      <td><a href=""><img src="resources/img/delete_goods.png" class="checkimg_d"/></a></td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Larry</td>
      <td>the Bird</td>
      <td>@twitter</td>
      <td><a href=""><img src="resources/img/delete_goods.png" class="checkimg_d"/></a></td>
    </tr>
  </tbody>
</table>
</div>
<%@include file="../includes/footer_admin.jsp" %>