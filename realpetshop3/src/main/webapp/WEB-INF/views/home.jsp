
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="includes/header.jsp" %>
<link rel="stylesheet" href="/resources/css/style.css" />
<!-- carousel -->
<div id="wrapper" class="container">
	<div id="content">
		<div class="container">
			<div class="row">
				<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
				  <ol class="carousel-indicators">
				    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
				    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
				  </ol>
				  	<div class="carousel-inner">
					    <div class="carousel-item active">
					      <img class="d-block w-100" src="https://wifiexpress.co.kr/wp/wp-content/uploads/2013/05/2018-%E1%84%89%E1%85%A1%E1%86%BC%E1%84%89%E1%85%A5%E1%86%AF-%E1%84%8B%E1%85%B5%E1%84%87%E1%85%A6%E1%86%AB%E1%84%90%E1%85%B3-%E1%84%87%E1%85%A2%E1%84%82%E1%85%A5-9%E1%84%8B%E1%85%AF%E1%86%AF.jpg" alt="First slide">
					    </div>
					    <div class="carousel-item">
					      <img class="d-block w-100" src="https://wifiexpress.co.kr/wp/wp-content/uploads/2013/05/2018-%E1%84%89%E1%85%A1%E1%86%BC%E1%84%89%E1%85%A5%E1%86%AF-%E1%84%8B%E1%85%B5%E1%84%87%E1%85%A6%E1%86%AB%E1%84%90%E1%85%B3-%E1%84%87%E1%85%A2%E1%84%82%E1%85%A5-5%E1%84%8B%E1%85%AF%E1%86%AF-2.png" alt="Second slide">
					    </div>
					    <div class="carousel-item">
					      <img class="d-block w-100" src="https://wifiexpress.co.kr/wp/wp-content/uploads/2013/05/2018-%E1%84%91%E1%85%A7%E1%86%BC%E1%84%8E%E1%85%A1%E1%86%BC-%E1%84%8B%E1%85%A9%E1%86%AF%E1%84%85%E1%85%B5%E1%86%B7%E1%84%91%E1%85%B5%E1%86%A8-%E1%84%8B%E1%85%B5%E1%84%87%E1%85%A6%E1%86%AB%E1%84%90%E1%85%B3-%E1%84%87%E1%85%A2%E1%84%82%E1%85%A5.jpg" alt="Third slide">
					    </div>
				  	</div>
				  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
				    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
				    <span class="sr-only">Previous</span>
				  </a>
				  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
				    <span class="carousel-control-next-icon" aria-hidden="true"></span>
				    <span class="sr-only">Next</span>
				  </a>
				</div>
			</div>
		</div>
		
		<!-- Popular -->
		<div class="popular" style="text-align: center; margin-top: 100px; margin-bottom: 20px; font-size: 50px;" >
			<i class="fa fa-star" style="color: #FDCE31;"></i> Top <i class="fa fa-star" style="color: #FDCE31;"></i>
		</div>
		<div class="bd-example">
			<div class="card-deck">
			  <div class="card">
			    <svg class="bd-placeholder-img card-img-top" width="100%" height="200" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Image cap"><title>Placeholder</title><rect width="100%" height="100%" fill="#868e96"></rect><text x="40%" y="50%" fill="#dee2e6" dy=".3em">Image cap</text></svg>
			    <div class="card-body">
			      <h5 class="card-title">Card title</h5>
			      <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
			      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
			    </div>
			  </div>
			  <div class="card">
			    <svg class="bd-placeholder-img card-img-top" width="100%" height="200" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Image cap"><title>Placeholder</title><rect width="100%" height="100%" fill="#868e96"></rect><text x="40%" y="50%" fill="#dee2e6" dy=".3em">Image cap</text></svg>
			    <div class="card-body">
			      <h5 class="card-title">Card title</h5>
			      <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
			      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
			    </div>
			  </div>
			  <div class="card">
			    <svg class="bd-placeholder-img card-img-top" width="100%" height="200" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Image cap"><title>Placeholder</title><rect width="100%" height="100%" fill="#868e96"></rect><text x="40%" y="50%" fill="#dee2e6" dy=".3em">Image cap</text></svg>
			    <div class="card-body">
			      <h5 class="card-title">Card title</h5>
			      <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
			      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
			    </div>
			  </div>
			</div>
		</div>
		<div class="bd-example">
			<div class="card-deck">
			  <div class="card">
			    <svg class="bd-placeholder-img card-img-top" width="100%" height="200" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Image cap"><title>Placeholder</title><rect width="100%" height="100%" fill="#868e96"></rect><text x="40%" y="50%" fill="#dee2e6" dy=".3em">Image cap</text></svg>
			    <div class="card-body">
			      <h5 class="card-title">Card title</h5>
			      <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
			      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
			    </div>
			  </div>
			  <div class="card">
			    <svg class="bd-placeholder-img card-img-top" width="100%" height="200" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Image cap"><title>Placeholder</title><rect width="100%" height="100%" fill="#868e96"></rect><text x="40%" y="50%" fill="#dee2e6" dy=".3em">Image cap</text></svg>
			    <div class="card-body">
			      <h5 class="card-title">Card title</h5>
			      <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
			      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
			    </div>
			  </div>
			  <div class="card">
			    <svg class="bd-placeholder-img card-img-top" width="100%" height="200" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Image cap"><title>Placeholder</title><rect width="100%" height="100%" fill="#868e96"></rect><text x="40%" y="50%" fill="#dee2e6" dy=".3em">Image cap</text></svg>
			    <div class="card-body">
			      <h5 class="card-title">Card title</h5>
			      <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
			      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
			    </div>
			  </div>
			</div>
		</div>
	</div>
</div>
<%@include file="includes/footer.jsp" %>