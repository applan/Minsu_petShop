<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../includes/header_admin.jsp"%>
<style>
.admin_main {
	padding-top: 5%;
}
.table-box{
 margin: 50px auto;
 
}
.table-row{
 display: table;
 width: 80%;
 margin: 10px auto;
 font-family: sans-serif;
 background: transparent;
 padding: 12px 0;
 color: #555;
 font-size 13px;
 box-shadow: 0 1px 4px 0 rgba(0,0,50,0.3);
}
.table-cell{
 display: table-cell;
 width: 30%;
 text-align: center;
 padding: 4px 0;
 border-right: 1px solid #d6d4d4;
 vertical-align: middle;
}
.table-head{
 background: #8665f7;
 box-shadow: none;
 color: #fff;
 font-weight: 600;
}
.table .table-cell{
  border-right: none;
}
.last-cell{
   border-right: none;
}
.first-cell{
  text-align: left;
  padding-left: 10px;
}
</style>


<div class="admin_main">
	<div
		style="padding-bottom: 3%; display: flex; justify-content: space-around;">
		<table border="5px solid">
			<tr>
				<td><img src="resources/img/member_ad.png" class="img-rounded"
					style="height: 100px; width: 110px;"></td>
				<td style="text-align: center; width: 200px; height: 100px;"><h2>회원
						수</h2>
					<h4>${count_member}</h4></td>
			</tr>
		</table>
		<table border="5px solid">
			<tr>
				<td><img src="resources/img/debit-card.png" class="img-rounded"
					style="height: 100px; width: 110px;"></td>
				<td style="text-align: center; width: 200px; height: 100px;"><h2>게시판
						요청 수</h2>
					<h4>${count_request}</h4></td>
			</tr>
		</table>
	</div>

	<div>
		<p>
			<strong>오늘의 목표 매출액 까지</strong> <span class="pull-right text-muted">${result_money}%
				Complete</span>
		</p>
		<div class="progress progress-striped active">
			<div class="progress-bar progress-bar-success" role="progressbar"
				aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"
				style="width: ${result_money}%">
				<span class="sr-only">${result_money}% Complete (success)</span>
			</div>
		</div>
	</div>
</div>

<div class="table-box">
<div class="table-row table-head">
  <div class="table-cell first-cell">
     <p>Easy Tutorials</p>
  </div>
  <div class="table-cell">
     <p>Likes</p>
  </div>
  <div class="table-cell">
     <p>Comments</p>
  </div>
</div>
<div class="table-row">
  <div class="table-cell first-cell">
     <p>Digital Web</p>
  </div>
  <div class="table-cell">
     <p>420</p>
  </div>
  <div class="table-cell last-cell">
     <p>95</p>
  </div>
</div>
</div>
<%@include file="../includes/footer_admin.jsp"%>