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
		<div id="jb-sidebar">
			<p class="categorygoods text-center" style="margin-bottom: -10px;">
				카테고리<i class="fas fa-bone"
					style="margin-left: 10px; color: #DE6868;"></i>
			</p>
			<div class="border-line"></div>
			<ul>
				<li class="ul_a"><label class="checkboxContainer"><input
						type="checkbox" /><span class="checkmark"></span>
						<p class="text">전체
						<p></label></li>
				<li class="ul_a"><label class="checkboxContainer"><input
						type="checkbox" /><span class="checkmark"></span>
						<p class="text">사료
						<p></label></li>
				<li class="ul_a"><label class="checkboxContainer"><input
						type="checkbox" /><span class="checkmark"></span>
						<p class="text">간식
						<p></label></li>
				<li class="ul_a"><label class="checkboxContainer"><input
						type="checkbox" /><span class="checkmark"></span>
						<p class="text">장난감
						<p></label></li>
				<li class="ul_a"><label class="checkboxContainer"><input
						type="checkbox" /><span class="checkmark"></span>
						<p class="text">건강식품
						<p></label></li>
				<li class="ul_a"><label class="checkboxContainer"><input
						type="checkbox" /><span class="checkmark"></span>
						<p class="text">용품
						<p></label></li>
				<li class="ul_a"><label class="checkboxContainer"><input
						type="checkbox" /><span class="checkmark"></span>
						<p class="text">하우스
						<p></label></li>
				<li class="ul_a"><label class="checkboxContainer"><input
						type="checkbox" /><span class="checkmark"></span>
						<p class="text">이동장
						<p></label></li>
				<li class="ul_a"><label class="checkboxContainer"><input
						type="checkbox" /><span class="checkmark"></span>
						<p class="text">의료
						<p></label></li>
				<li class="ul_a"><label class="checkboxContainer"><input
						type="checkbox" /><span class="checkmark"></span>
						<p class="text">액세사리
						<p></label></li>
			</ul>
		</div>
	</div>
	<c:forEach var="i" begin="0" end="20">
		<div id="jb-content">
			<img
				src="https://www.petbox.kr/data/goods/18/12/51//16771/register_main_028.jpg"
				alt="" class="h2img" />
			<h4 style="font-family: 'jua', sans-serif;">
				<a href="#" style="color: #262626;">제품 이름</a>
			</h4>
			<div style="text-align: left; color: #ff6c2a; margin-right: 10px;">
				<b style="font-size: 20px;">펫샵가</b> <strong class="item_price">
					<div style="color: #333;">46,000원</div>
				</strong>
				<div style="height: 22px; margin-top: 5px;">
					<span id="date_out"
						style="font-size: 14px; color: #00891A; letter-spacing: -2px;">월요일
						04/29 출고 예정</span>
				</div>
			</div>
			<p style="text-align: left; font-style: italic !important; font-size: 14px;">
				<i class="fas fa-bolt" style="color: #1C53EA;"></i> 당일배송
			</p>
			<div style="display: flex;"></div>
			<div class="card-read-more">
				<div class="overlay-right">
					<button type="button" class="btn btn-primary btn-sm gradient"
						title="Quick Shop">
						<i class="far fa-eye"></i>
					</button>
					<button type="button" class="btn btn-primary btn-sm gradient"
						title="Add to Wishlist">
						<i class="fas fa-heart"></i>
					</button>
					<button type="button" class="btn btn-primary btn-sm gradient"
						title="Add to Cart">
						<i class="fas fa-shopping-cart"></i>
					</button>
				</div>
			</div>
		</div>
	</c:forEach>
	<div id="jb-footer"></div>
</div>
<%@include file="../includes/footer.jsp"%>







