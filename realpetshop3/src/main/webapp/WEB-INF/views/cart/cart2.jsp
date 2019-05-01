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

<div class="container">
	<div id="contents">
		<!-- 본문 시작 -->
		<div class="cartform">
			<div class="location_wrap">
				<div class="location_cont">
					<em><a href="#" class="local_home">HOME</a> &gt; 장바구니</em>
				</div>
			</div>
			<!-- //location_wrap -->

			<div class="sub_content">
				<!-- //side_cont -->
				<div class="content_box">
					<div class="order_wrap">
						<div class="border-line"></div>
						<div class="order_tit">
							<p>장바구니</p>
							<ol>
								<li class="page_on"><span>01 </span>장바구니 <i
									class="fas fa-chevron-right"></i> <span><img src="#"
										alt=""></span></li>
								<li class="page_next"><span>02 </span>주문서작성/결제 <i
									class="fas fa-chevron-right"></i> <span><img src="#"
										alt=""></span></li>
								<li class="page_next"><span>03 </span>주문완료 <i
									class="fas fa-chevron-right"></i></li>
							</ol>
						</div>
						<!-- //order_tit -->

						<div class="cart_cont">

							<form id="frmCart" name="frmCart" method="post"
								target="ifrmProcess">
								<input type="hidden" name="mode" value=""> <input
									type="hidden" name="cart[cartSno]" value=""> <input
									type="hidden" name="cart[goodsNo]" value=""> <input
									type="hidden" name="cart[goodsCnt]" value=""> <input
									type="hidden" name="cart[addGoodsNo]" value=""> <input
									type="hidden" name="cart[addGoodsCnt]" value=""> <input
									type="hidden" name="cart[couponApplyNo]" value=""> <input
									type="hidden" name="useBundleGoods" value="1">
								<!-- 장바구니 상품리스트 시작 -->

								<div class="cart_cont_list">
									<div class="order_cart_tit"></div>
									<!-- //order_cart_tit -->

									<div class="order_table_type">
										<span style="display: none;" name="wp_detection" tag="i">16771</span>
										<div class="groobeeProductList" style="display: none">
											<a href="#" class="groobeeProductA"></a> <span
												class="groobeeProductName">[1+1증정]스튜어트 동결건조 닭가슴살 파우치
												85g</span> <span class="groobeeProductCategory">053001004</span> <span
												class="groobeeProductCount">1</span> <span
												class="groobeeProductImage"><img src="#" width="40"
												alt="[1+1증정]스튜어트 동결건조 닭가슴살 파우치 85g"
												title="[1+1증정]스튜어트 동결건조 닭가슴살 파우치 85g" class="middle"></span>
											<span class="groobeeProductPrice">24,000원</span>
										</div>
										<table>
											<colgroup>
												<col style="width: 3%">
												<!-- 체크박스 -->
												<col>
												<!-- 상품명/옵션 -->
												<col style="width: 10%">
												<!-- 수량 -->
												<col style="width: 10%">
												<!-- 상품금액 -->
												<col style="width: 13%">
												<!-- 합계금액 -->
												<col style="width: 10%">
											</colgroup>
											<thead>
												<tr>
													<th>
														<div class="form_element">
															<input type="checkbox" id="allCheck1"
																class="gd_select_all_goods" data-target-id="cartSno1_"
																data-target-form="#frmCart" checked="checked"> <label
																for="allCheck1" class="check_s on"></label>
														</div>
													</th>
													<th>상품/옵션 정보</th>
													<th>수량</th>
													<th>상품금액</th>
													<th>합계금액</th>
												</tr>
											</thead>
											<tbody>


												<!-- WIDERPLANET CART SCRIPT START 2019.2.15 -->

												<script type="text/javascript">
													var wp_page_type = 'Cart';
												</script>
												<!-- // WIDERPLANET CART SCRIPT END 2019.2.15 -->


												<!-- Groobee Order & Cart Selector Script -->

												<!-- End of Groobee Order & Cart Selector Script -->


												<tr>
													<td class="td_chk">
														<div class="form_element">
															<input type="checkbox" id="cartSno1_11019"
																name="cartSno[]" value="11019" checked="checked"
																data-price="24000" data-mileage="0" data-goodsdc="0"
																data-memberdc="0" data-coupondc="0" data-possible="y"
																data-goods-key="0" data-goods-no="16771"
																data-goods-nm="[1+1증정]스튜어트 동결건조 닭가슴살 파우치 85g"
																data-option-nm="" data-fixed-sales="option"
																data-sales-unit="1" data-fixed-order-cnt="option"
																data-min-order-cnt="1" data-max-order-cnt="0"
																data-default-goods-cnt="1"> <label
																for="cartSno1_11019" class="check_s on"></label>
														</div>
													</td>
													<td class="td_left">
														<div class="pick_add_cont">
															<span class="pick_add_img"><a href="#"><img
																	src="#" width="40" alt="[1+1증정]스튜어트 동결건조 닭가슴살 파우치 85g"
																	title="[1+1증정]스튜어트 동결건조 닭가슴살 파우치 85g" class="middle"></a>
															</span>
															<div class="pick_add_info">

																<div style="font-size: 13px; color: #00891A;"></div>


																<!-- //icon_pick_list -->

																<div class="pick_option_box"></div>

																<div class="pick_option_box"></div>
															</div>
														</div> <!-- //pick_add_cont --> <!-- //pick_add_list -->

													</td>
													<td class="td_order_amount">
														<div class="product-quantity">
															<input type="number" value="1" min="1">
														</div>
													</td>
													<td style="padding-top: 30px;"><strong
														class="order_sum_txt price">24,000원</strong>
														<p class="add_currency"></p></td>
													<td class="td_benefit">
														<ul class="benefit_list">
														</ul>
													</td>
												</tr>

											</tbody>


										</table>
									</div>

								</div>
								<!-- //cart_cont_list -->
								<!-- 장바구니 상품리스트 끝 -->


							</form>


							<div class="price_sum" style="font-size: 25px;">
								<div class="price_sum_cont">
									<div class="price_sum_list">
										<dl>
											<dt>
												총 <strong id="totalGoodsCnt">1</strong> 개의 상품금액
											</dt>
											<dd>
												<strong id="totalGoodsPrice">24,000</strong>원
											</dd>
										</dl>
										<dl style="padding: 0 0">
											<dt>
												<i class="fas fa-plus-circle"></i>
											</dt>
										</dl>
										<dl>
											<dt>배송비</dt>
											<dd>
												<strong id="totalDeliveryCharge">2,500</strong>원
											</dd>
										</dl>
										<dl style="padding: 0 0">
											<dd>
												<i class="fas fa-equals"></i>
											</dd>
										</dl>
										<dl class="price_total">
											<dt>합계</dt>
										</dl>
									</div>
									<em id="deliveryChargeText" class="tobe_mileage"></em>
								</div>
								<!-- //price_sum_cont -->
							</div>
							<div class="btn_left_box">
								<a href="/" class="shop_go_link"><em>&lt; 쇼핑 계속하기</em></a>
							</div>
							<!-- //price_sum -->

							<div class="btn_order_box">
								<div class="row no-gutters">
									<div class="col-4 btn_left_box">
										<button type="button"
											class="btn btn-primary btn-lg gradient btn_order_choice_del"
											onclick="gd_cart_process('cartDelete');">선택 상품 삭제</button>
										<button type="button"
											class="btn btn-primary btn-lg gradient btn_order_choice_wish"
											onclick="gd_cart_process('cartToWish');">선택 상품 찜</button>
									</div>
									<div class="col-4"></div>

									<div class="col-4 btn_right_box text-right">
										<button type="button"
											class="btn btn-danger btn-lg gradient btn_order_choice_buy"
											onclick="gd_cart_process('orderSelect');">선택 상품 주문</button>
										<button type="button"
											class="btn btn-danger btn-lg gradient btn_order_whole_buy"
											onclick="gd_order_all();">전체 상품 주문</button>
									</div>
								</div>
							</div>
							<!-- //btn_order_box -->
						</div>
						<!-- //cart_cont -->
					</div>
					<!-- //order_wrap -->
				</div>
				<!-- //content_box -->
			</div>
			<!-- //sub_content -->
		</div>
		<!-- //본문 끝 contents -->
	</div>
</div>


<%@include file="../includes/footer.jsp"%>














