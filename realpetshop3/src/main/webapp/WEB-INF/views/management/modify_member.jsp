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
      <th scope="col">권한 상태</th>
    </tr>
  </thead>
  <tbody>
		<tr>
		  <td><a href="${UserVO_Info.userno}">${UserVO_Info.userno}</a></td>
		  <td>${UserVO_Info.userid}</td>
		  <td>${UserVO_Info.username}</td>
		  <c:if test="${UserVO_Info.num == '1'}">
		   <td >관리자</td>
          </c:if>
		  <c:if test="${UserVO_Info.num == '2'}">
		   <td >판매자</td>
          </c:if>
		  <c:if test="${UserVO_Info.num == '3'}">
		   <td >구매자</td>
          </c:if>
		</tr>
  <form action="" method="post">
   <select name="num_change" >
     <option value="3">구매자</option>
     <option value="2">판매자</option>
     <option value="1">관리자</option>
   </select>
   <input type="hidden" name="userno" value="${UserVO_Info.userno}"/>
   <input type="submit" value="권한 부여" />
  </form>
  </tbody>
</table>
</div>
<%@include file="../includes/footer_admin.jsp" %>