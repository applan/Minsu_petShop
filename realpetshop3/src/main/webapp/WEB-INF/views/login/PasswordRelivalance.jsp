<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../includes/header.jsp"%>

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1">


<!-- <link rel="stylesheet" href="/resources/css/style.css" /> -->



<div class="container">
   <div class="no-gutters py-5 row">
      <div class="col-1 col-sm-4"></div>
      <div class="col-10 col-sm-4">
         <div class="text-center">
<form action="PasswordRelivalance" class="formFindPassword" id="PasswordRelivalance" method="post">
				               <p class="p">
                  <i class="fas fa-cat"></i>
               </p>

                <div class="find-pw">
                    <div class="input-id">          
                            <input type="text" id="userid" name="userid" class="form-control" placeholder="아이디">
                        	<small id="userid" class="text-info"></small>
                    </div>
                </div>

                <div class="find-pw">
                    <div class="input-id">   
                            <input type="email" id="exampleFormControlInput1" name="email" class="form-control" placeholder="임시 비밀번호 받을 이메일">
                        	<small id="exampleFormControlInput1" class="text-info"></small>
                        	<div class="col-md-offset-2 col-md-10"></div>

                        	</div>
                        	
                        </div>	
                        <div class="form-group">
						    <input type="hidden" class="form-control password" id="exampleFormControlInput1" 
						    value="${password}" name="password" placeholder="이미지 주소를 입력해주세요">
						</div>
						
						               <input type="submit" class="btn btn-primary btn-block btn-lg gradient" 
               value="비밀번호찾기"/>
               <div class="foo">
                  <div>
                     <h6>
                        |<a href="FindID" style="color: black;">아이디 찾기</a>| <a
                           href="login1" style="color: black;">로그인하기</a>|
                     </h6>
                  </div>
               </div>
               <div>
                  <p class="mt-5 mb-3 text-muted">© 2019-01-10~2019-06-20</p>
               </div>
            </form>
         </div>
      </div>
      <div class="col-1 col-sm-4"></div>
   </div>
</div>
<%@include file="../includes/footer.jsp"%>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script> -->
<script src="/resources/js/jquery.validate.js"></script>
<script src="/resources/js/passwordRelivalance.js"></script>