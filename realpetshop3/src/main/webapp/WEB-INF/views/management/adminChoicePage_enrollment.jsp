
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../includes/header_admin.jsp" %>

<style>
 .all_b{
  padding-top: 20px;
 }
 #en_a{
  margin-top: 20px;
  padding: 1px 12px;
 }
 #en_b{
  padding: 1px 12px; 
 }
 #en_c{
  padding: 1px 12px;
 }
 #en_d{
  padding: 1px 12px;
 }
 #sum{
 margin-top: 40px;
 }
</style>

<div class="all_b">

	<div style="display: flex; justify-content: space-between;">
		<div>
			<h1 style="font-family: 'Jua', sans-serif; font-size: 55px;" >상품 등록</h1>
			
		</div>
	</div>
	<form action="" method="post">
	<!-- 상품 카테고리 넣기  -->
		<div>
		     <div style="display: flex;">
		     <label for="en" id="en_a" style="width: 45%"><- 상품 제목 입력란 -></label>
		     <label for="en_da" id="en_da" style="margin-left: 10%; padding-top: 20px;"><- 상품 계약 기간 -></label>
		     </div>
		     <div style="display: flex;">
			<input type="text" class="form-control" placeholder="상품 제목을 입력해주세요" id="en" required="required" style="width: 45%;" name="goodsName">
			<input type="date" style="margin-left: 10%" id="en_da" name="goodsDate" min="${toDay}"/>
			</div>
		</div>
		
		<div style="padding-top: 2%; padding-right: 55%">
		   <label for="en_b" id="en_b"><- 판매자 아이디 -></label>
		   <input type="text"  class="form-control" placeholder="판매자 아이디를 넣어주세요" id="en_b" required="required" name="goodsId"/>
		</div>
		
		<div style="padding-top: 2%; padding-right: 55%">
		   <label for="en_b" id="en_b"><- 상품 가격 -></label>
		   <input type="number"  class="form-control price" placeholder="상품 가격을 입력해주세요" id="en_b" required="required" name="goodsPrice" />
		</div>
		
		<div style="padding-top: 2%; padding-right: 55%">
		   <label for="en_b" id="en_b"><- 상품 이미지 링크 -></label>
		   <input type="text"  class="form-control" placeholder="상품의 이미지 링크를 넣어주세요" id="en_b" required="required" name="goodsMainUrl"/>
		</div>
		
		<div style="padding-top: 2%; padding-right: 55%">
		   <label for="en_c" id="en_c"><- 상품 상세 이미지 링크 -></label>
		   <input type="text"  class="form-control" placeholder="상품의 상세 이미지 링크를 넣어주세요" id="en_c" name="goodsUrl"/>
		</div>
		
		<div style="height: 400px; padding-top: 40px">
		    <label for="en_d" id="en_d"><- 상품 정보 입력란 -></label>
			<textarea class="form-control " rows="3" placeholder="상품 정보를 입력해주세요" style="resize: none; width: 70%; height: 400px" id="en_d" name="goodsInfo"></textarea>
		</div>
		
		<div style="padding-top: 40px;">
			<button type="submit" class="btn btn-success" id="sum">등록</button>
		</div>
	</form>
</div>
<script>
 $(function() {
	$(".price").change(function() {
		var pr = $(".price").val();
		if(pr < 0){
			alert("가격은 음수값을 넣을 수 없습니다.");
			$(".price").val(0); 
			$(".price").focus();
	}
	})
});
</script>

<%@include file="../includes/footer_admin.jsp" %>