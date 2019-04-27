<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<style>
 .imgviewss{
   width: 700px;
   height: 1500px;

 }
</style>
</head>
<body>
<form action="/sendEmail" method="post">
  <div class="form-group">
    <label for="exampleFormControlInput1">받는 사람 이메일</label>
    <input type="email" class="form-control" id="exampleFormControlInput1" name="to" placeholder="받는 사람 이메일 입력해주세요">
    <!-- DB완성되면 DB를 통해서 수신 동의한 사람들 모두에게 전송되게 할 예정 -->
  </div>
  <div class="form-group">
    <label for="exampleFormControlInput1">제목</label>
    <input type="text" class="form-control" id="exampleFormControlInput1" name="subject" placeholder="전송 메일 제목을 입력해주세요" required="required">
  </div>
  <div class="form-group">
    <label for="exampleFormControlInput1">내용</label>
    <input type="text" class="form-control" id="exampleFormControlInput1" name="text" placeholder="전송 메일 내용을 입력해주세요" required="required">
  </div>
  <div class="form-group">
    <label for="exampleFormControlInput1">이미지 주소</label>
    <input type="text" class="form-control imglink" id="exampleFormControlInput1" name="imglink" placeholder="이미지 주소를 입력해주세요">
  </div>
 <div class="imgview">
   <table border="1px solid">
      <tr>
       <th>이미지 확인</th>
      </tr> 
      <tr class="imgviewresult">
       
      </tr>
   </table>
 </div>
 <input type="submit" />
</form>
 <!-- <form action="/sendEmail" method="post">
   <input type="email"  name = "to" placeholder="보낼 사람 이메일 입력"/>
   <input type="text" name="subject" placeholder="제목 입력"/>
   <input type="text" name="text" placeholder="내용"/>
   <input type="text" name="imglink" placeholder="이미지의 링크를 넣어주세요" class="imglink"/>
   <input type="submit"/>
 </form> -->

</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script>
 $(function() {
	 
	 
	$(".imglink").change(function() {
		var imgview = $(".imgviewresult");
		var imglinkresult = $(".imglink").val();
		
		var img2 = "<img src='"+imglinkresult+"'class='imgviewss'>";
		imgview.html(img2);
	});
});
</script>
</html>