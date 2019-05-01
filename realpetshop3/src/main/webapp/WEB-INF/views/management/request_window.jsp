<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pet Shop</title>
</head>
<body>
 <table border="2px solid">
   <tr>
     <th>[상품 이름]</th>
     <td>${request_vo.goodsName}</td>
   </tr>
   <tr>
     <th>[판매자 아이디]</th>
     <td>${request_vo.goodsId}</td>
   </tr>
   <tr>
     <th>[상품 이미지 URL]</th>
     <td>${request_vo.goodsMainUrl}</td>
   </tr>
   <tr>
     <th>[상품 광고 이미지 URL]</th>
     <td>${request_vo.goodsUrl}</td>
   </tr>
   <tr>
     <th>[상품 상세 정보]</th>
     <td>${request_vo.goodsInfo }</td>
   </tr>
   <tr>
     <th>[상품 가격]</th>
     <td>${request_vo.goodsPriceFormat} 원</td>
   </tr>

 </table>
</body>
</html>