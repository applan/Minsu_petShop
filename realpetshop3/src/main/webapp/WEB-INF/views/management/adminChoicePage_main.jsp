<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../includes/header_admin.jsp" %>
<style>
 .admin_main{
  padding-top: 5%;
 }
</style>


<div class="admin_main">
<div style="padding-bottom: 3%; display: flex; justify-content: space-around;">
<table border="5px solid" >
 <tr >
  <td><img src="resources/img/member_ad.png"  class="img-rounded" style=" height: 100px; width: 110px;"></td>
  <td style="text-align: center; width: 200px; height: 100px;"><h2>회원 수</h2><h4>10명</h4></td>
 </tr>
</table>
<table border="5px solid" >
 <tr >
  <td><img src="resources/img/debit-card.png"  class="img-rounded" style=" height: 100px; width: 110px;"></td>
  <td style="text-align: center; width: 200px; height: 100px;"><h2>게시판 요청 수</h2><h4>10명</h4></td>
 </tr>
</table>
</div>


<div>
    <p>
        <strong>오늘의 목표 매출액 까지</strong>
        <span class="pull-right text-muted">${result_money}% Complete</span>
    </p>
    <div class="progress progress-striped active">
        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: ${result_money}%">
            <span class="sr-only">${result_money}% Complete (success)</span>
        </div>
    </div>
</div>
</div>
<%@include file="../includes/footer_admin.jsp" %>