<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pet Shop</title>
</head>
<body>
 <table border="2px solid"> 
   <tr>
     <th>[회원 번호]</th>
     <td>${meVO.userno}</td>
   </tr>
   <tr>
     <th>[회원 이름]</th>
     <td>${meVO.username}</td>
   </tr>
   <tr>
     <th>[회원 아이디]</th>
     <td>${meVO.userid}</td>
   </tr>
   <tr>
     <th>[회원 주소]</th>
     <td>${meVO.addr}</td>
   </tr>
   <tr>
     <th>[회원 이메일]</th>
     <td>${meVO.email}</td>
   </tr>
   <tr>
     <th>[권한]</th>
     <c:if test="${meVO.num == '1'}">
		   <td >관리자</td>
     </c:if>
	  <c:if test="${meVO.num == '2'}">
			<td >판매자</td>
	  </c:if>
	  <c:if test="${meVO.num == '3'}">
		   <td >구매자</td>
      </c:if>
   </tr>

 </table>
</body>
</html>