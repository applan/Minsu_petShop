<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp" %>

<link rel="stylesheet" href="/resources/css/cart11.css" />
<link rel="stylesheet" href="/resources/css/cart22.css" />
<link rel="stylesheet" href="/resources/css/cart33.css" />
<link rel="stylesheet" href="/resources/css/cart44.css" />
<link rel="stylesheet" href="/resources/css/cart55.css" />

<!-- 무신사 마이페이지 장바구니 -->

<form name="f1">
	<input type="hidden" name="popup" />
	<input type="hidden" name="logged_in" value="1" />

<!-- 카트 프로세스 -->
<div class="right_contents">
	<h2 class="title-page">Order / Payment</h2>
	<!-- ::after 스키립트 사용할거같아 -->
</div>
<div class="section_container_mypage">
<div class="section_contents" style="width:1000px; padding-left: 400px;">
	<p class="title_s">상품 목록</p>
	<!-- 장바구니 상품들 -->
	<table class="table_basic cart_table">
	<colgroup>
		<col width="5%"/>
		<col width="4%"/>
		<col width="20%"/>
		<col width="5%"/>
		<col width="8%"/>
		<col width="16%"/>
		<col width="7%"/>
		<col width="9%"/>
		<col width="12%"/>
	</colgroup>
	<thead>
		<tr>
			<th scope="col">번호</th>
			<th scope="col" style="cursor:pointer;"><input type="checkbox" class="chk_all" checked /></th>
			<th scope="col">상품명</th>
			<th scope="col">판매가</th>
			<th scope="col">회원 할인</th>
			<th scope="col">수량</th>
			<th scope="col">"주문금액"</th>
			<th scope="col">주문관리</th>
			<th scope="col">배송비/배송 형태</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>
				<input type="hidden" name="no" value=""/>
				<input type="hidden" name="cart_info" value=""/>
				<input type="hidden" name="sale_yn" value=""/>
				<input type="hidden" name="good_qty" value=""/>
			</td>
			<td>
				<input type="checkbox" name="cart_no" value="" checked="checked" />
			</td>
			<td>
				<div class="connect_img">
					<a href="#">
						<img src="resources/img/logo.png" alt="" width="80" height="88"/>
						<span class="vertical_standard"></span>
					</a>
				</div>
				<div class="article_info connect_info">
					<p class="list_brand">"
									브랜드 명 넣어야해																																																																							
									"</p>
					<p class="list_info">
						<a href="#">
							민수 팀장님 죄송합니다..
							상품 이름 넣는 곳
						</a>
					</p>
					<p class="txt_option">
						옵션:로고/&nbsp;하나 더 만들자 <- 이런거
					</p>
				</div>
			</td>
			<td>
				<p class="td_price">
					<span class="txt_origin_price">가격 35,000</span>
				</p>
			</td>
			<td>
				회원 할인
			</td>
			<td> <!-- 상품 수량 -->
				<input type="hidden" name="limited_qty_yn_295250164" value=""/>
				<input type="hidden" name="limited_min_qty_295250164" value="1"/>
				<input type="hidden" name="limited_max_qty_295250164" value="999"/>
				<div class="add" style="box-sizing: unset;">
					<p>
						<input type="text" name="cart_qty" class="input_add" onkeyup="checkQty(this);" onfocus="this.select();" value="1" />
		
					</p>
					<!-- javascript:void(0) a태그 없애면서 형태는 살리는 방식 -->
					<p class="btn_add">
						<a href="javascript:void(0)" onclick="Cart.increaseQtyByNo('295250164','input[name=\'cart_qty\']:eq(0)');return false;">+</a>
					</p>
					<p class="btn_add">
						<a href="javascript:void(0)" class="last" 
						onclick="Cart.decreaseQtyByNo('295250164','input[name=\'cart_qty\']:eq(0)');return false;">-</a>
					</p>
					<p>
						<a href="javascript:void(0)" class="plain-btn btn cart_amount"
						onclick="Cart.setQtyByNo('295250164','input[name=\'cart_qty\']:eq(0)'); return false;"
						>수정</a>
					</p>
					<!-- ::after 스크립트에서 쓸꺼같아-->
				</div>
			</td>
			<td>
				주문 가격 35,000
			</td>
			<td>
				<a href="javascript:void(0)" class="plain-btn btn"
				onclick="Cart.deleteCart('295250164'); return false;">
				삭제하기</a>
			</td>
			<td>
				<strong>배송비 무료</strong>
			</td>
		</tr>
	</tbody>

</table>

	<!-- 장바구니 구입 -->
	<div class="delete-btn-area">
		<a href="javascript:void(0)" id="del_soldout" class="click_disalbe"
		onclick="Cart.deleteSoldout('cart'); return false;">품절삭제</a>
		<a href="javascript:void(0)" id="del_chk" class="selectdelete"
		onclick="Cart.deleteSelect('cart'); return false;">선택해제</a>
	</div>
	<div class="box-explain-cart">
		<ul class="g-list-explain">
			<li>구매 가능 수량이 1개로 제한된 상품은 주문 취소 시, 24시간 내 가상계좌 재주문이 불가합니다.</li>
			<li>민수 펫숍은 기본적으로 전 상품 무료 배송입니다.</li>
			<li>해외배송 상품은 배송 불가능 하므로 해외 상품은 없습니다.</li>
			<li>2개 이상 브랜드를 주문하신 경우, 각각 개별 배송됩니다.</li>
			<li>장바구니에 담은 시점과 현재의 판매 가격이 달라질 수 있습니다.</li>
			<li>민수네 펫샵은 멋진 샵이므로 할인이란 존재 하지 않습니다.</li>
			<li>수량 제한 상품의 경우, 가상계좌를 통한 주문은 최대 2건까지만 가능합니다.(미입금 주문 기준, 기존 주문 합산)</li>
		</ul>
	</div>
	
	<!-- 장바구니 버튼 -->
</div>
	<div class="section_contents">
		<ul class="final_payment" style="padding-left: 700px;">
			<li class="payment_list">
				<p class="title">판매 가격</p>
				<p class="box_amount_payment">
					<span id="total_prd_amt" class="payment_amount">가격 넣어야해</span>
					원
				</p>
			</li>
			<li class="plus_bg">
				<p class="title">배송비</p>
				<p class="box_amount_payment">
				<span id="div_amt" class="payment_amount">0</span>
				원
				</p>
			</li>
			<li>
				<br>
				<p></p>
				<img src="resources/img/meth1.png" style="width:30px; height:20px;"/>
			</li>
			<li class="equal_bg" style="padding-left:0px;">
				<p class="title">최종 결제금액</p>
				<p class="box_amount_payment">
				<span id="pay_amt" class="payment_amount">가격 넣어야징</span>
				원
				<span class="payment_off">
					<span id="total_dc_rate">0</span>
					"% OFF"
				</span>
				</p>
			</li>
		</ul>
	</div>
	<div class="m-btn-set cart_btn">
		<a href="javascript:void(0)" class="m-btn btn-accent"
		onclick="Cart.selectOrder(); return false;">주문하기</a>
	</div>
</div>
</form>


<%@include file="../includes/footer.jsp" %>














