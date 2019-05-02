<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@include file="../includes/header.jsp"%>
<link href="https://fonts.googleapis.com/css?family=Black+Han+Sans" rel="stylesheet">
<style>
      #jb-container {
        width: 940px;
        margin: 0px auto;
        padding-bottom: 20px;
      }
      #jb-header {
        padding: 20px;
        margin-bottom: 20px;
        border-left: 5px solid;
        border-right: 5px solid;
        border-bottom-left-radius: 45%; 
        border-bottom-right-radius: 45%; 
        background-color: #FCE4BD;
      }
      #jb-content {
        width: 315px;
        height : 538px;
        padding: 19px;
        margin: 1px 1px 20px 1px;
        float: right;
        border: 1px solid #bcbcbc;
        text-align: center;
      }
      #jb-sidebar {
        width: 260px;
        height: 600px;
        padding: 20px;
        margin-bottom: 20px;
        margin-top: 20px;
        float: left;
        border: 1px solid #bcbcbc;
        border-radius: 3%;
      }
      #jb-footer {
        clear: both;
       
      }
      .ul_a{
       margin: 30px auto;
      }
      .h2img{
       width: 275px;
       height: 209px;
       padding: 4px;
       margin: 4px;
       border: 1px solid black;
      }
    </style>
<div id="jb-container">
      <div id="jb-header">
        <h1 style="font-family: 'Black Han Sans', sans-serif;">Pet Goods</h1>
      </div>
       <div id="jb-sidebar" >
        <h2>카테고리</h2>
        <ul style="list-style: none; padding-left: 10px" >
          <li class="ul_a"><input type="checkbox" />사료</li>
          <li class="ul_a"><input type="checkbox" />간식</li>
          <li class="ul_a"><input type="checkbox" />장난감</li>
          <li class="ul_a"><input type="checkbox" />건강식품</li>
          <li class="ul_a"><input type="checkbox" />용품</li>
          <li class="ul_a"><input type="checkbox" />하우스</li>
          <li class="ul_a"><input type="checkbox" />이동장</li>
          <li class="ul_a"><input type="checkbox" />의료</li>
          <li class="ul_a"><input type="checkbox" />액세사리</li>
        </ul>
      </div>
      <c:forEach var="i" begin="0" end="10">
      <div id="jb-content">
        <img src="https://www.petbox.kr/data/goods/18/12/51//16771/register_main_028.jpg" alt="" class="h2img"/>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean nec mollis nulla. Phasellus lacinia tempus mauris eu laoreet. Proin gravida velit dictum dui consequat malesuada. Aenean et nibh eu purus scelerisque aliquet nec non justo. Aliquam vitae aliquet ipsum. Etiam condimentum varius purus ut ultricies. Mauris id odio pretium, sollicitudin sapien eget, adipiscing risus.</p>
       <div style="display: flex;">
       </div>
      </div>
      </c:forEach>
      <div id="jb-footer">
        
      </div>
    </div>
<%@include file="../includes/footer.jsp"%>