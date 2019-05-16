<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="../includes/header_admin.jsp" %>
<style>
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
<div class="all_b">
<h1 style="font-family: 'Jua', sans-serif; font-size: 55px;">회원 관리</h1>
<table class="table ta">
  <thead class="thead-dark">
    <tr>
      <th scope="col">회원번호</th>
      <th scope="col">회원 아이디</th>
      <th scope="col">회원 이름</th>
      <th scope="col">광고 수신 여부</th>
      <th scope="col">회원 권한 상태</th>
      <th scope="col">회원 정보 삭제</th>
      <th scope="col">회원 정보 수정</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach var="list" items="${member_list}">
		<tr>
		  <td><a href="#" onclick="getMM(${list.userno})">${list.userno}</a></td>
		  <td>${list.userid}</td>
		  <td>${list.username}</td>
		  <c:if test="${list.checkResult}">
		   <td ><img src="resources/img/checked.png" class="checkimg"/></td>
          </c:if>
		  <c:if test="${!list.checkResult}">
		   <td >X</td>
          </c:if>
          <c:if test="${list.num == '1'}">
		   <td >관리자</td>
          </c:if>
		  <c:if test="${list.num == '2'}">
		   <td >판매자</td>
          </c:if>
		  <c:if test="${list.num == '3'}">
		   <td >구매자</td>
          </c:if>
		  <td><a href="delete_member?userno=${list.userno}"><img src="resources/img/delete-friend.png" class="checkimg_d"/></a></td>
		  <td><a href="modify_member?userno=${list.userno}"><img src="resources/img/icon_update.png" class="checkimg_d"/></a></td>
		</tr>
		</c:forEach>
		
  </tbody>
</table>
</div>
<script>
 function getMM(userno) {
	var url = "/getMe?userno="+userno;
	window.open(url, "Pet Shop", "width=800, height=700, toolbar=no, menubar=no, scrollbars=no, resizable=yes" );  
		
}
</script>
<%@include file="../includes/footer_admin.jsp" %>