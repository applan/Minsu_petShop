<%@page import="com.spring.domain.ShopVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% int resultTo = Integer.parseInt(request.getParameter("resultTo")); %>
<!DOCTYPE html>


<html lang="en"><head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v3.8.5">
    <title></title>
    <script type="text/javascript">
window.opener.location.href='/success';
window.close();
</script>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.3/examples/cover/">

    <!-- Bootstrap core CSS -->
<link href="/resources/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">


    <style>
       
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }
      .vi2 table{
        margin: auto 20%; 
        
        
      }
      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
    <!-- Custom styles for this template -->
    <link href="/resources/css/cover.css" rel="stylesheet">
  </head>
  <body class="text-center">
    <div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
  <header class="masthead mb-auto">
    <div class="inner">
      <h3 class="masthead-brand"></h3>
      <nav class="nav nav-masthead justify-content-center">
         </nav>
    </div>
  </header>

    <main role="main" class="inner cover">
    <div class="vi2">
<h2>이용해주셔서 대단히 감사합니다</h2>
<table border="1px solid">
<tr align="center">
		<th class="pn">상품명</th>
		<th>이용 기간</th>
		<th>결제 수단</th>
		<th>결제 결과</th>
		<th>결제 금액</th>
	</tr>
	<tr>

	<tr>
		<th colspan="4">합 계</th>
		<td><%= resultTo %>원</td>
	</tr>
	<tr>
	<td colspan="5" align="center">
	<button id="button-click" onclick="button_click();">메인페이지로 이동</button></td>
	</tr>
</table>
    </div>
<script>
function button_click() {
	alert("메인페이지로 돌아갑니다.");
	location.href='/home';
}
</script>
  </main>

  <footer class="mastfoot mt-auto">
    <div class="inner">
      <p>Cover template for <a href="https://getbootstrap.com/">Bootstrap</a>, by <a href="https://twitter.com/mdo">@mdo</a>.</p>
    </div>
  </footer>
</div>


</body></html>