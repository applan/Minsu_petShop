<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../includes/header_admin.jsp" %>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<style>
 .imgviewss{
   width: 800px;
   height: auto;
}
</style>


<form action="/sendEmail" method="post" style="float:left; margin-left: 20px; padding-top: 20px; padding-right: 50px">
   <h1 style="font-family: 'Jua', sans-serif; font-size: 55px;">광고 이메일 전송</h1>
<!--   <div class="form-group" style="margin-top:30px;">
    <label for="exampleFormControlInput1">받는 사람 이메일</label>
    <input type="email" class="form-control" id="exampleFormControlInput1" name="to" placeholder="받는 사람 이메일 입력해주세요" style="padding-right:200px; width:414px">
    DB완성되면 DB를 통해서 수신 동의한 사람들 모두에게 전송되게 할 예정
  </div> -->
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
 </div>
 <input type="submit" class="btn btn-default btn-lg" value="제출"/>
 </form>

	<table border="0">
      <tr>
      	<th></th>
      </tr>
      <tr class="imgviewresult">   
      </tr>
      </table>
<script>
 $(function() {
	 
	 
	$(".imglink").on("change keyup paste",function() {
		var imgview = $(".imgviewresult");
		var imglinkresult = $(".imglink").val();
		
		var img2 = "<img src='"+imglinkresult+"'class='imgviewss'>";
		imgview.html(img2);
	});
});
</script>
<%@include file="../includes/footer_admin.jsp" %>