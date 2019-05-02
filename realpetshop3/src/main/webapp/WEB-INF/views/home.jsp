<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="includes/header.jsp"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/resources/css/style.css" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" />
<!-- carousel -->
<div id="wrapper" class="container">
	<div class="border" style="margin-bottom: 10px;"></div>
	<div id="content">
		<div class="container">
			<div class="row">
				<div id="carouselExampleIndicators" class="carousel slide"
					data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carouselExampleIndicators" data-slide-to="0"
							class="active"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
					</ol>
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img class="d-block w-100" src="/resources/img/event1.jpg"
								alt="First slide">
						</div>
						<div class="carousel-item">
							<img class="d-block w-100" src="/resources/img/event2.jpg"
								alt="Second slide">
						</div>
						<div class="carousel-item">
							<img class="d-block w-100" src="/resources/img/event3.jpg"
								alt="Third slide">
						</div>
					</div>
					<a class="carousel-control-prev" href="#carouselExampleIndicators"
						role="button" data-slide="prev"> <span
						class="carousel-control-prev-icon" aria-hidden="true"></span> <span
						class="sr-only">Previous</span>
					</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
						role="button" data-slide="next"> <span
						class="carousel-control-next-icon" aria-hidden="true"></span> <span
						class="sr-only">Next</span>
					</a>
				</div>
			</div>
		</div>


		<!-- Popular -->
		<p
			style="font-family: 'Jua', sans-serif; font-size: 50px; text-align: center; margin: 100px 0px 0px 0px; auto; display: inline-block; font-weight: 300; width: 100%; color: #2b2b2b">
			<i class="fas fa-star" style="color: #FAC822;"></i> 인기 상품 <i
				class="fas fa-star" style="color: #FAC822;"></i>
		</p>

		<div class="border"></div>

		<section class="wrapper">
			<div class="container-fostrap">
				<div class="content">
					<div class="container">
						<div class="row">
							<div class="col-xs-12 col-sm-4">
								<div class="card">
									<a class="img-card" href="#"> <img
										src="/resources/img/toy1.jpg" />
									</a>
									<div class="card-content">
										<h4 class="card-title">
											<a href="#">펫토이츄애견 이갈이 장난감 </a>
										</h4>
										<p class="card-text">
										<div
											style="text-align: left; color: #ff6c2a; margin-right: 10px;">
											<b style="font-size: 20px;">37</b><span
												style="font-size: 15px;">%</span>
											<del style="color: #909090;">5,900원</del>
											<strong class="item_price">
												<div style="color: #333;">3,700원</div>
											</strong>
											<div style="height: 22px; margin-top: 5px;">
												<span id="date_out"
													style="font-size: 14px; color: #00891A; letter-spacing: -2px;">월요일
													04/29 출고 예정</span>
											</div>
										</div>
										<p style="font-style: italic !important; font-size: 14px;">
											<i class="fas fa-bolt" style="color: #1C53EA;"></i> 당일배송
										</p>
									</div>
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
							</div>
							<div class="col-xs-12 col-sm-4">
								<div class="card">
									<a class="img-card" href="#"> <img
										src="/resources/img/dog1.jpg" />
									</a>
									<div class="card-content">
										<h4 class="card-title">
											<a href="#">강아지 배변 봉투/리필 모음전 </a>
										</h4>
										<p class="card-text">
										<div
											style="text-align: left; color: #ff6c2a; margin-right: 10px;">
											<b style="font-size: 20px;">25</b><span
												style="font-size: 15px;">%</span>
											<del style="color: #909090;">3000원</del>
											<strong class="item_price">
												<div style="color: #333;">2,250원</div>
											</strong>
											<div style="height: 22px; margin-top: 5px;">
												<span id="date_out"
													style="font-size: 14px; color: #00891A; letter-spacing: -2px;">월요일
													04/29 출고 예정</span>
											</div>
										</div>
										<p style="font-style: italic !important; font-size: 14px;">
											<i class="fas fa-bolt" style="color: #1C53EA;"></i> 당일배송
										</p>
									</div>
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
							</div>
							<div class="col-xs-12 col-sm-4">
								<div class="card">
									<a class="img-card" href="#"> <img
										src="/resources/img/catfood1.jpg" />
									</a>
									<div class="card-content">
										<h4 class="card-title">
											<a href="#">오리젠 피트 앤 트림 독 2Kg </a>
										</h4>
										<p class="card-text">
										<div
											style="text-align: left; color: #ff6c2a; margin-right: 10px;">
											<b style="font-size: 20px;">펫샵가</b> <strong
												class="item_price">
												<div style="color: #333;">46,000원</div>
											</strong>
											<div style="height: 22px; margin-top: 5px;">
												<span id="date_out"
													style="font-size: 14px; color: #00891A; letter-spacing: -2px;">월요일
													04/29 출고 예정</span>
											</div>
										</div>
										<p style="font-style: italic !important; font-size: 14px;">
											<i class="fas fa-bolt" style="color: #1C53EA;"></i> 당일배송
										</p>
									</div>
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
							</div>
							<div class="col-xs-12 col-sm-4">
								<div class="card">
									<a class="img-card" href="#"> <img
										src="/resources/img/cat1.jpg" />
									</a>
									<div class="card-content">
										<h4 class="card-title">
											<a href="#">펫데이즈 펫킷 고양이 정수기 </a>
										</h4>
										<p class="card-text">
										<div
											style="text-align: left; color: #ff6c2a; margin-right: 10px;">
											<b style="font-size: 20px;">펫샵가</b> <strong
												class="item_price">
												<div style="color: #333;">45,000원</div>
											</strong>
											<div style="height: 22px; margin-top: 5px;">
												<span id="date_out"
													style="font-size: 14px; color: #00891A; letter-spacing: -2px;">월요일
													04/29 출고 예정</span>
											</div>
										</div>
										<p style="font-style: italic !important; font-size: 14px;">
											<i class="fas fa-bolt" style="color: #1C53EA;"></i> 당일배송
										</p>
									</div>
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
							</div>
							<div class="col-xs-12 col-sm-4">
								<div class="card">
									<a class="img-card" href="#"> <img
										src="/resources/img/cat2.jpg" />
									</a>
									<div class="card-content">
										<h4 class="card-title">
											<a href="#">베스퍼 인기 캣타워 모음전 </a>
										</h4>
										<p class="card-text">
										<div
											style="text-align: left; color: #ff6c2a; margin-right: 10px;">
											<b style="font-size: 20px;">펫샵가</b> <strong
												class="item_price">
												<div style="color: #333;">45,000원</div>
											</strong>
											<div style="height: 22px; margin-top: 5px;">
												<span id="date_out"
													style="font-size: 14px; color: #00891A; letter-spacing: -2px;">월요일
													04/29 출고 예정</span>
											</div>
										</div>
										<p style="font-style: italic !important; font-size: 14px;">
											<i class="fas fa-bolt" style="color: #1C53EA;"></i> 당일배송
										</p>
									</div>
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
							</div>
							<div class="col-xs-12 col-sm-4">
								<div class="card">
									<a class="img-card" href="#"> <img
										src="/resources/img/cat3.jpg" />
									</a>
									<div class="card-content">
										<h4 class="card-title">
											<a href="#">아이캣 태비 냥이 롱 스크래처 </a>
										</h4>
										<p class="card-text">
										<div
											style="text-align: left; color: #ff6c2a; margin-right: 10px;">
											<b style="font-size: 20px;">펫샵가</b> <strong
												class="item_price">
												<div style="color: #333;">22,000원</div>
											</strong>
											<div style="height: 22px; margin-top: 5px;">
												<span id="date_out"
													style="font-size: 14px; color: #00891A; letter-spacing: -2px;">월요일
													04/29 출고 예정</span>
											</div>
										</div>
										<p style="font-style: italic !important; font-size: 14px;">
											<i class="fas fa-bolt" style="color: #1C53EA;"></i> 당일배송
										</p>
									</div>
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
							</div>
							<div class="col-xs-12 col-sm-4">
								<div class="card">
									<a class="img-card" href="#"> <img
										src="/resources/img/dog2.jpg" />
									</a>
									<div class="card-content">
										<h4 class="card-title">
											<a href="#">가성비 좋은 배변패드 50매 </a>
										</h4>
										<p class="card-text">
										<div
											style="text-align: left; color: #ff6c2a; margin-right: 10px;">
											<b style="font-size: 20px;">37</b><span
												style="font-size: 15px;">%</span>
											<del style="color: #909090;">11,000원</del>
											<strong class="item_price">
												<div style="color: #333;">6,900원</div>
											</strong>
											<div style="height: 22px; margin-top: 5px;">
												<span id="date_out"
													style="font-size: 14px; color: #00891A; letter-spacing: -2px;">월요일
													04/29 출고 예정</span>
											</div>
										</div>
										<p style="font-style: italic !important; font-size: 14px;">
											<i class="fas fa-bolt" style="color: #1C53EA;"></i> 당일배송
										</p>
									</div>
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
							</div>
							<div class="col-xs-12 col-sm-4">
								<div class="card">
									<a class="img-card" href="#"> <img
										src="/resources/img/dog3.jpg" />
									</a>
									<div class="card-content">
										<h4 class="card-title">
											<a href="#">내추럴발란스 LID 감자/오리 </a>
										</h4>
										<p class="card-text">
										<div
											style="text-align: left; color: #ff6c2a; margin-right: 10px;">
											<b style="font-size: 20px;">46</b><span
												style="font-size: 15px;">%</span>
											<del style="color: #909090;">76,300원</del>
											<strong class="item_price">
												<div style="color: #333;">40,600원</div>
											</strong>
											<div style="height: 22px; margin-top: 5px;">
												<span id="date_out"
													style="font-size: 14px; color: #00891A; letter-spacing: -2px;">월요일
													04/29 출고 예정</span>
											</div>
										</div>
										<p style="font-style: italic !important; font-size: 14px;">
											<i class="fas fa-bolt" style="color: #1C53EA;"></i> 당일배송
										</p>
									</div>
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
							</div>
							<div class="col-xs-12 col-sm-4">
								<div class="card">
									<a class="img-card" href="#"> <img
										src="/resources/img/cat4.jpg" />
									</a>
									<div class="card-content">
										<h4 class="card-title">
											<a href="#">로얄캐닌 캣 파우치 키튼 85g </a>
										</h4>
										<p class="card-text">
										<div
											style="text-align: left; color: #ff6c2a; margin-right: 10px;">
											<b style="font-size: 20px;">펫샵가</b> <strong
												class="item_price">
												<div style="color: #333;">1,500원</div>
											</strong>
											<div style="height: 22px; margin-top: 5px;">
												<span id="date_out"
													style="font-size: 14px; color: #00891A; letter-spacing: -2px;">월요일
													04/29 출고 예정</span>
											</div>
										</div>
										<p style="font-style: italic !important; font-size: 14px;">
											<i class="fas fa-bolt" style="color: #1C53EA;"></i> 당일배송
										</p>
									</div>
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
							</div>

						</div>
					</div>
				</div>
			</div>
		</section>


		<!-- reviews -->
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.js"></script>


		<div class="testimonial-section">
			<div class="inner-width">
				<p
					style="font-family: 'Jua', sans-serif; font-size: 50px; text-align: center; margin: 40px 0px 0px 0px; auto; display: inline-block; font-weight: 300; width: 100%; color: #2b2b2b">
					<i class="fas fa-crown" style="color: #FAC822;"></i> BEST
					<ins>REVIEW</ins>
					<i class="fa fa-crown" style="color: #FAC822;"></i>
				</p>
				<div class="border"></div>

				<div class="slides owl-carousel"></div>
				<div class="testimonial">
					<div class="test-info">
						<img class="test-pic" src="/resources/img/2.jpg" alt="" />
						<div class="test-name">
							<span>펫토이츄애견 이갈이 장난감</span> @dog1
						</div>
					</div>
					<div class="border-line-line"></div>
					<p>강아지가 이것만 가지고 놀아요</p>
				</div>

				<div class="testimonial">
					<div class="test-info">
						<img class="test-pic" src="/resources/img/5.jpg" alt="" />
						<div class="test-name">
							<span>베스퍼 인기 캣타워 모음전</span> @cat2
						</div>
					</div>
					<div class="border-line-line"></div>
					<p>설치도 간편하고 튼튼해서 오래 쓸 수 있을것 같아요 애기들도 좋아하네요^^~</p>
				</div>

				<div class="testimonial">
					<div class="test-info">
						<img class="test-pic" src="/resources/img/4.jpg" alt="" />
						<div class="test-name">
							<span>가성비 좋은 배변패드 50매</span> @dog2
						</div>
					</div>
					<div class="border-line-line"></div>
					<p>가성비 최고에요</p>
				</div>


			</div>
		</div>

		<div class="border" style="margin-top: 0;"></div>

		<!-- carousel -->
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
		<script
			src="https://cdn.rawgit.com/twbs/bootstrap/v4-dev/dist/js/bootstrap.js"></script>

		<script type="text/javascript">
			$(".owl-carousel").owlCarousel({
				margin : 10,
				responsiveClass : true,
				responsive : {
					0 : {
						items : 1
					},
					680 : {
						items : 2
					},
					960 : {
						items : 3
					}
				}
			});
		</script>

	</div>
</div>


<%@include file="includes/footer.jsp"%>

