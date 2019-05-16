<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../includes/header.jsp"%>
<link rel="stylesheet" href="/resources/css/style.css" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/css?family=Black+Han+Sans"
	rel="stylesheet">

<div id="jb-container" class="searchform">
	<div id="jb-header">
		<p>
			<i class="fas fa-paw"></i>PET GOODS<i class="fas fa-paw"></i>
		</p>
	</div>
	<div class="border-line-line" style="margin-bottom: 50px;"></div>
	<div id="sidebar">
	<input type="hidden" id="result" value="${reus}" />
	<input type="hidden" id="userno" value="${vo5.userno}"/>
		<div id="jb-sidebar">
			<p class="categorygoods text-center" style="margin-bottom: -10px;">
				카테고리<i class="fas fa-bone"
					style="margin-left: 10px; color: #DE6868;"></i>
			</p>
			<div class="border-line"></div>
			<ul>
				<!-- <li class="ul_a">
						<p class="text" style="text-align: center;">카테고리
						<p></li> -->
				<li class="ul_a"><label class="checkboxContainer"><input
						type="checkbox" name="test_check" value="A" id="A"/><span class="checkmark"></span>
						<p class="text" >사료
						<p></label></li>
				<li class="ul_a"><label class="checkboxContainer"><input
						type="checkbox" name="test_check" value="B" id="B"/><span class="checkmark"></span>
						<p class="text">간식
						<p></label></li>
				<li class="ul_a"><label class="checkboxContainer"><input
						type="checkbox" name="test_check" value="C" id="C"/><span class="checkmark"></span>
						<p class="text">장난감
						<p></label></li>
				<li class="ul_a"><label class="checkboxContainer"><input
						type="checkbox" name="test_check" value="D" id="D"/><span class="checkmark"></span>
						<p class="text">건강식품
						<p></label></li>
				<li class="ul_a"><label class="checkboxContainer"><input
						type="checkbox" name="test_check" value="E" id="E"/><span class="checkmark"></span>
						<p class="text">용품
						<p></label></li>
				<li class="ul_a"><label class="checkboxContainer"><input
						type="checkbox" name="test_check" value="F" id="F"/><span class="checkmark"></span>
						<p class="text">하우스
						<p></label></li>
				<li class="ul_a"><label class="checkboxContainer"><input
						type="checkbox" name="test_check" value="G" id="G"/><span class="checkmark"></span>
						<p class="text">이동장
						<p></label></li>
				<li class="ul_a"><label class="checkboxContainer"><input
						type="checkbox" name="test_check" value="H" id="H"/><span class="checkmark"></span>
						<p class="text">의료
						<p></label></li>
				<li class="ul_a"><label class="checkboxContainer"><input
						type="checkbox" name="test_check" value="I" id="I"/><span class="checkmark"></span>
						<p class="text">액세사리
						<p></label></li>
			</ul>
		</div>
	</div>
    <div id="wr">
    

    </div>
	<div id="jb-footer"></div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="/resources/js/search.js"></script>
<script>

</script>
<%@include file="../includes/footer.jsp"%>