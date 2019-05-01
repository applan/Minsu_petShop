<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp" %>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<link href="https://fonts.googleapis.com/css?family=Jua" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Wendy+One" rel="stylesheet">
<div style="margin: 1% 10% auto">
 <h5>${vo.goodsNum}번쨰 상품 상세보기 </h5>
</div>
<div>
 <div style="display: flex; margin: auto 10%">
  <div style="border: 3px solid">
   <img src="${vo.goodsMainUrl}" style="height: 550px; width: 550px;"/>
  </div>
  
  <div style="padding-left: 5%; margin-top: 1%">
    <h1 style="font-family: 'Jua', sans-serif;">${vo.goodsName}</h1>
    <h5 style="font-size: 15px;margin-right: auto;padding-right: 200px;">${vo.goodsInfo }</h5>
     <div style="clear: both;">
     <div style="padding: 30px 250px;margin-bottom:7%; border-bottom: 2px solid;"></div>
     </div>
     <div style="display:flex;; justify-content: space-between;">
      <div style="padding: 10px;margin-right: 250px">판매 가격</div>
      <div style="padding: 10px; font-size: 20px; font-family: 'Wendy One', sans-serif;">${vo.goodsPriceFormat} 원</div>
     </div>
     <div style="display:flex;; justify-content: space-between;">
      <div style="padding: 10px;margin-right: 250px">구매 제한</div>
      <div style="padding: 10px; font-size: 20px; font-family: 'Wendy One', sans-serif;">최소 1개</div>
     </div>
     <div style="display:flex;; justify-content: space-between;">
      <div style="padding: 10px;margin-right: 250px">구매 혜택</div>
      <div style="padding: 10px; font-size: 20px; font-family: 'Wendy One', sans-serif;">회원 구매 시 0.5%~2.0% 적립금 & 할인쿠폰 적용 가능</div>
     </div>
     <div style="display:flex;; justify-content: space-between;">
      <div style="padding: 10px;margin-right: 250px">배송 정보</div>
      <div style="padding: 10px; font-size: 20px; font-family: 'Wendy One', sans-serif;">무료</div>
     </div>
      <div style="display:flex;; justify-content: space-between;">
      <div style="padding: 10px;margin-right: 250px">상품 재고</div>
      <div style="padding: 10px; font-size: 20px; font-family: 'Wendy One', sans-serif;">129개</div>
     </div>
     <div style="margin: 50px; text-align: right;">
     <form action="">
      <input type="submit" value="장바구니" class="cart"/>
      <input type="submit" value="바로 구매하기" class="buy"/>     
     </form>
     </div>
  </div>
 </div>
 <div style="text-align: center; padding: 4%">
  <c:if test="${!empty vo.goodsUrl}">
  <img src="${vo.goodsUrl}" />
  </c:if>
  <c:if test="${empty vo.goodsUrl}">
        상품 이미지 준비중 !!
  </c:if>
 </div>
 
</div>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
 $(function() {
	$(".cart").click(function(e) {
     e.preventDefault();
	 location.href="cart/cart3?goodsNum=${vo.goodsNum}";
	});
	
});
</script>
<%@include file="../includes/footer.jsp" %>