<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../includes/header.jsp"%>
<link rel="stylesheet"
   href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>

<div style="background-color:white;">

<div class="container">

<form class="modifyUser" id="registtt" action="/EditPersonalInformation" method="post">   <!-- method="post" -->
<p class="user-modify">
         <i class="fas fa-user-cog"></i>
      </p>
      <div class="form-group row justify-content-center">
         <div class="col-sm-3">
            <input type="text" name="userid" id="userid" class="form-control"
               placeholder="아이디" value="${info.userid}" readonly="readonly" /> <small
               id="userid" class="text-info"></small>
         </div>
         <div class="col-sm-3">
            <input type="text" name="username" id="username"
               class="form-control" placeholder="이름" value="${info.username}"
               readonly="readonly" /> <small id="username" class="text-info"></small>
         </div>
      </div>
      <div class="form-group row justify-content-center">
         <div class="col-sm-6">
            <input type="password" name="current_password" id="current_password"
               class="form-control" placeholder="현재 비밀번호" /> <small
               id="current_password" class="text-info"></small>
         </div>
      </div>
      <div class="form-group row justify-content-center">
         <div class="col-sm-3">
            <input type="password" name="new_password" id="new_password"
               class="form-control" placeholder="수정할 비밀번호" /> <small
               id="new_password" class="text-info"></small>
         </div>
         <!-- </div>
      <div class="form-group row justify-content-center"> -->
         <div class="col-sm-3">
            <input type="password" name="confirm_password" id="confirm_password"
               class="form-control" placeholder="수정할 비밀번호 재입력" /> <small
               id="confirm_password" class="text-info"></small>
         </div>
      </div>

      <div class="form-group row justify-content-center">
         <div class="col-sm-6">
            <input type="text" name="new_addr" id="new_addr" class="form-control"
               placeholder="주소 입력" value="${info.addr}"/> <small id="addr" class="text-info"></small>
         </div>
      </div>
      
      <div class="form-group row justify-content-center">
         <div class="col-sm-6 text-left">
            <div class="form-check form-check-inline">
            <input type="radio" id="cat" name="cat" value="cat" class="form-check-input" ondblclick="this.checked=false"/>고양이         
           </div>            
      </div>
   </div>
      <div class="form-group row justify-content-center">
         <div class="col-sm-6 text-left">
            <div class="form-check form-check-inline">
            <input type="radio"  id="dog" name="dog" value="dog" class="form-check-input" ondblclick="this.checked=false"/>강아지            
         </div>
         
      </div>
   </div>
      <div class="form-group row justify-content-center">
         <div class="col-sm-6 text-left">
         <input type="email" name="new_email" id="new_email" class="form-control" 
         value="${info.email}" placeholder="example@gmail.com" />
         동의 <input type="radio" id="emailcheck" name="emailcheck" value="1" ondblclick="this.checked=false"/><!-- onclick="radio_check2" -->
         <div>
            <p></p>
            <h6>동의시 이벤트 사항을 이메일로 보내줍니다.</h6>
         </div>
         <small id="email" class="text-info"></small>      
      </div>   
   
   </div>
   <div class="form-group text-center" style="padding-right:50px; padding-top: 5px;">      
      <input type="submit" class="btn btn-primary" style="background-color: red; border-color:red;" value="수정">
       <button type="reset" class="btn btn-secondary" style="background-color: red; border-color:red; color:white;">취소</button>      

   </div>
         
</form>
</div>
</div>

<script type="text/javascript">
   $(document).ready(function(){
      var cat='${info.cat}';
      
      if(cat==='cat'){         
         $('input:radio[name="cat"]').prop("checked", true);
      }
   });
   $(document).ready(function(){
      var dog='${info.dog}';
      
      if(dog==='dog'){
         $('input:radio[name="dog"]').prop("checked", true);
         
      }
   });
   $(document).ready(function(){
      var emailcheck='${info.emailcheck}';
      
      if(emailcheck==='1'){
         $('input:radio[name="emailcheck"]').prop("checked", true);
      }
   });


</script>
<%@include file="../includes/footer.jsp" %>
<script src="/resources/js/jquery-3.3.1.js"></script>
<script src="/resources/js/jquery.validate.js"></script>
<script src="/resources/js/editpersonalinformation.js"></script>
