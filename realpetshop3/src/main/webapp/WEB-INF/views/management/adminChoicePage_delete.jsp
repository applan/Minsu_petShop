<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../includes/header_admin.jsp" %>
<style>
 .all_b{
  padding-top: 20px;
 }
</style>
<div class="all_b">
<h1>회원 관리</h1>
<table class="table ta">
  <thead class="thead-dark">
    <tr>
      <th scope="col">회원번호</th>
      <th scope="col">회원 아이디</th>
      <th scope="col">회원 이름</th>
      <th scope="col">광고 수신 여부</th>
      <th scope="col">회원 정보 삭제</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Larry</td>
      <td>the Bird</td>
      <td>@twitter</td>
    </tr>
  </tbody>
</table>
</div>
<%@include file="../includes/footer_admin.jsp" %>