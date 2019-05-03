/**
 * 
 */

$(function() {
	var reus = $("#result").val();
	if(reus === ""){
	var checkArr = "";
	all();
	}
	if(reus != ""){
	 var resy = reus.split(",");
	 checkArr+=resy;
	 for( var i in resy){
		 console.log(resy[i]);
		 $("input[id='"+resy[i]+"'").prop('checked', true);
		 
		 console.log(checkArr);
		 move();
	 }
	}
  function all() {
	  
	  $.ajax({ // 검색 페이지 시작시 자동으로 전체 띄워줌
			url:'/search_attrAll',
		    type:'get',
		    dataType:'JSON',
		    success:function(data){
		    	var wr = $("#wr");
		    	var str = "";
		    	$(data).each(function(i,obj) {
		    		str+="<div id='jb-content'>";
					str+="<img src='"+obj.goodsMainUrl+"' style='width: 209px;'";
				    str+="alt='' class='h2img' />";
					str+="<h4 style='font-family: jua, sans-serif;'>";
				    str+="<a href='#' style='color: #262626;'>"+obj.goodsName+"</a>";
					str+="</h4>";
					str+="<div style='text-align: left; color: #ff6c2a; margin-right: 10px;>";
				    str+="<b style='font-size: 20px;'>펫샵가</b> <strong class='item_price'>";
					str+="<div style='color: #333;'>"+obj.goodsPrice+" 원</div>";
					str+="</strong>";
					str+="<div style='height: 22px; margin-top: 5px;'>";
					str+="<span id='date_out'";
					str+="style='font-size: 14px; color: #00891A; letter-spacing: -2px;'>월요일";
					str+="04/29 출고 예정</span>";
				    str+="</div>";
					str+="</div>";
					str+="<p style='text-align: left; font-style: italic !important; font-size: 14px;''>";
				    str+="<i class='fas fa-bolt' style='color: #1C53EA;'></i> 당일배송";
					str+="</p>";
					str+="<div style='display: flex;'></div>";
					str+="<div class='card-read-more'>";
					str+="<div class='overlay-right'>";
					str+="<button type='button' class='btn btn-primary btn-sm gradient'";
					str+="title='Quick Shop' onclick='go("+obj.goodsNum+")'>";
					str+="<i class='far fa-eye'></i>";
				    str+="</button>";
				    str+="<button type='button' class='btn btn-primary btn-sm gradient'";
					str+="title='Add to Wishlist'>";
					str+="<i class='fas fa-heart'></i>";
					str+="</button>";
					str+="<button type='button' class='btn btn-primary btn-sm gradient'";
					str+="title='Add to Cart' onclick='sg("+obj.goodsNum+")'>";
					str+="<i class='fas fa-shopping-cart'></i>";
					str+="</button>";
				    str+="</div>";
					str+="</div>";
				    str+="</div>";
				});
		    	wr.html(str);
		    }
		});
     }
	
	 
	$("input[name='test_check']").change(function() { // 카테고리가 체크 될 경우 실행
		if((this).checked === true){
		checkArr+=($(this).val());
		console.log(checkArr);
	  $.ajax({
		 url:'/search_attr',
		 type:'post',
		 dataType : 'JSON',
		 data:{
              valueArr : checkArr			 
		 },
		 success: function(data) {
			 var wr = $("#wr");
		    	var str = "";
		    	$(data).each(function(i,obj) {
		    		str+="<div id='jb-content'>";
					str+="<img src='"+obj.goodsMainUrl+"' style='width: 209px;'";
				    str+="alt='' class='h2img' />";
					str+="<h4 style='font-family: jua, sans-serif;'>";
				    str+="<a href='#' style='color: #262626;'>"+obj.goodsName+"</a>";
					str+="</h4>";
					str+="<div style='text-align: left; color: #ff6c2a; margin-right: 10px;>";
				    str+="<b style='font-size: 20px;'>펫샵가</b> <strong class='item_price'>";
					str+="<div style='color: #333;'>"+obj.goodsPrice+" 원</div>";
					str+="</strong>";
					str+="<div style='height: 22px; margin-top: 5px;'>";
					str+="<span id='date_out'";
					str+="style='font-size: 14px; color: #00891A; letter-spacing: -2px;'>월요일";
					str+="04/29 출고 예정</span>";
				    str+="</div>";
					str+="</div>";
					str+="<p style='text-align: left; font-style: italic !important; font-size: 14px;''>";
				    str+="<i class='fas fa-bolt' style='color: #1C53EA;'></i> 당일배송";
					str+="</p>";
					str+="<div style='display: flex;'></div>";
					str+="<div class='card-read-more'>";
					str+="<div class='overlay-right'>";
					str+="<button type='button' class='btn btn-primary btn-sm gradient'";
					str+="title='Quick Shop' onclick='go("+obj.goodsNum+")'>";
					str+="<i class='far fa-eye'></i>";
				    str+="</button>";
				    str+="<button type='button' class='btn btn-primary btn-sm gradient'";
					str+="title='Add to Wishlist'>";
					str+="<i class='fas fa-heart'></i>";
					str+="</button>";
					str+="<button type='button' class='btn btn-primary btn-sm gradient'";
					str+="title='Add to Cart' onclick='sg("+obj.goodsNum+")'>";
					str+="<i class='fas fa-shopping-cart'></i>";
					str+="</button>";
				    str+="</div>";
					str+="</div>";
				    str+="</div>";
				});
		    	wr.html(str);
		}
		 
		 
	  });
	}
	 if((this).checked === false){ // 카테고리가 해제될 경우 실행
     console.log(checkArr);
	  checkArr = checkArr.replace($(this).val(),"");
	  if(checkArr === ""){
		  all(); // 해제됬는데 아무것도 없으면 전체 보여주기 실행
		  return;
	  }
	  $.ajax({
			 url:'/search_attr',
			 type:'post',
			 dataType : 'JSON',
			 data:{
	              valueArr : checkArr			 
			 },
			 success: function(data) {
				 var wr = $("#wr");
			    	var str = "";
			    	$(data).each(function(i,obj) {
			    		str+="<div id='jb-content'>";
						str+="<img src='"+obj.goodsMainUrl+"' style='width: 209px;'";
					    str+="alt='' class='h2img' />";
						str+="<h4 style='font-family: jua, sans-serif;'>";
					    str+="<a href='#' style='color: #262626;'>"+obj.goodsName+"</a>";
						str+="</h4>";
						str+="<div style='text-align: left; color: #ff6c2a; margin-right: 10px;>";
					    str+="<b style='font-size: 20px;'>펫샵가</b> <strong class='item_price'>";
						str+="<div style='color: #333;'>"+obj.goodsPrice+" 원</div>";
						str+="</strong>";
						str+="<div style='height: 22px; margin-top: 5px;'>";
						str+="<span id='date_out'";
						str+="style='font-size: 14px; color: #00891A; letter-spacing: -2px;'>월요일";
						str+="04/29 출고 예정</span>";
					    str+="</div>";
						str+="</div>";
						str+="<p style='text-align: left; font-style: italic !important; font-size: 14px;''>";
					    str+="<i class='fas fa-bolt' style='color: #1C53EA;'></i> 당일배송";
						str+="</p>";
						str+="<div style='display: flex;'></div>";
						str+="<div class='card-read-more'>";
						str+="<div class='overlay-right'>";
						str+="<button type='button' class='btn btn-primary btn-sm gradient'";
						str+="title='Quick Shop' onclick='go("+obj.goodsNum+")'>";
						str+="<i class='far fa-eye'></i>";
					    str+="</button>";
					    str+="<button type='button' class='btn btn-primary btn-sm gradient'";
						str+="title='Add to Wishlist'>";
						str+="<i class='fas fa-heart'></i>";
						str+="</button>";
						str+="<button type='button' class='btn btn-primary btn-sm gradient'";
						str+="title='Add to Cart' onclick='sg("+obj.goodsNum+")'>";
						str+="<i class='fas fa-shopping-cart'></i>";
						str+="</button>";
					    str+="</div>";
						str+="</div>";
					    str+="</div>";
					});
			    	wr.html(str);
			}
			 
			 
		  });
	 }
	});
});

function move(){
	$("input[name='test_check'").each(function() { 
		var checkArrd = "";
	 if($(this).is(":checked") == true){
		 checkArrd+=($(this).val());
		  $.ajax({
			 url:'/search_attr',
			 type:'post',
			 dataType : 'JSON',
			 data:{
	              valueArr : checkArrd			 
			 },
			 success: function(data) {
				 var wr = $("#wr");
			    	var str = "";
			    	$(data).each(function(i,obj) {
			    		str+="<div id='jb-content'>";
						str+="<img src='"+obj.goodsMainUrl+"' style='width: 209px;'";
					    str+="alt='' class='h2img' />";
						str+="<h4 style='font-family: jua, sans-serif;'>";
					    str+="<a href='#' style='color: #262626;'>"+obj.goodsName+"</a>";
						str+="</h4>";
						str+="<div style='text-align: left; color: #ff6c2a; margin-right: 10px;>";
					    str+="<b style='font-size: 20px;'>펫샵가</b> <strong class='item_price'>";
						str+="<div style='color: #333;'>"+obj.goodsPrice+" 원</div>";
						str+="</strong>";
						str+="<div style='height: 22px; margin-top: 5px;'>";
						str+="<span id='date_out'";
						str+="style='font-size: 14px; color: #00891A; letter-spacing: -2px;'>월요일";
						str+="04/29 출고 예정</span>";
					    str+="</div>";
						str+="</div>";
						str+="<p style='text-align: left; font-style: italic !important; font-size: 14px;''>";
					    str+="<i class='fas fa-bolt' style='color: #1C53EA;'></i> 당일배송";
						str+="</p>";
						str+="<div style='display: flex;'></div>";
						str+="<div class='card-read-more'>";
						str+="<div class='overlay-right'>";
						str+="<button type='button' class='btn btn-primary btn-sm gradient'";
						str+="title='Quick Shop' onclick='go("+obj.goodsNum+")'>";
						str+="<i class='far fa-eye'></i>";
					    str+="</button>";
					    str+="<button type='button' class='btn btn-primary btn-sm gradient'";
						str+="title='Add to Wishlist'>";
						str+="<i class='fas fa-heart'></i>";
						str+="</button>";
						str+="<button type='button' class='btn btn-primary btn-sm gradient'";
						str+="title='Add to Cart' onclick='sg("+obj.goodsNum+")'>";
						str+="<i class='fas fa-shopping-cart'></i>";
						str+="</button>";
					    str+="</div>";
						str+="</div>";
					    str+="</div>";
					});
			    	wr.html(str);
			}
			 
			 
		  }); 
	 }
	});

}

function sg(goodsNum) {
	var userno = $("#userno").val();
	if(userno != ""){
		location.href="/cart/insCart?goodsnum="+goodsNum+"&userno="+userno;
	}
};

function go(result) {
	location.href="/GoodsInfoView?goodsnum="+result;
}