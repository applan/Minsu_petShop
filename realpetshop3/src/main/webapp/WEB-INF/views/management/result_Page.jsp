<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script>
 $(function() {
	 // 이메일 전송 후 결과 

	var res = "${result_email}";
	if(res >= 1){
		alert(res+"명에게 전송 성공했습니다.");
		location.href="/email";
	}
	if(res == -2){
		alert("이메일 수신 동의한 인원이 없습니다.");
		
		location.href="/email";
	}
	if(res === -1){
		alert("오류 발생");
		res 
		location.href="/email";
	}
	
	
	var res2 = "${result_en}";
	if(res2 === "true"){
		alert("새로운 상품 추가 성공");
		res2 = "";
		location.href="/adminChoicePage_delete";
	}
	if(res2 === "false"){
		alert("새로운 상품 추가 실패");
		res2 = "";
		location.href="/adminChoicePage_enrollment";
	}
	
	
	 
	 // 상품 삭제 후 넘어오는 결과
	var res3 = "${result_delete}";
	if(res3 === "true"){
		alert("상품 삭제 성공");
		res3 = "";
		location.href="/adminChoicePage_delete";
	}
	if(res3 === "false"){
		alert("상품 삭제 실패");
		res3 = "";
		location.href="/adminChoicePage_delete";
	}
	
	
	// 회원 삭제 후 넘어오는 결과
	var res4 = "${result_delete_member}";
	if(res4 === "true"){
		alert("회원 삭제 성공");
		res4 = "";
		location.href="/adminChoicePage_member";
	}
	if(res4 === "false"){
		alert("회원  삭제 실패");
		res4 = "";
		location.href="/adminChoicePage_member";
	}
	
	// 물건 복원 후 넘어오는 결과
	var res5 = "${result_restore}";
	if(res5 === "true"){
		alert("상품 정보 복원 성공");
		res5 = "";
		location.href="/adminChoicePage_delete";
	}
	if(res5 === "false"){
		alert("상품 정보 복원 실패");
		res5 = "";
		location.href="/adminChoicePage_delete";
	}
	
	// 상품 정보 영구 삭제 시 넘어오는 결과
	var res6 = "${result_permanently_Delete_goods}";
	if(res6 === "true"){
		alert("상품 정보 영구 삭제 성공");
		res6 = "";
		location.href="/adminChoicePage_trash";
	}
	if(res6 === "false"){
		alert("상품 정보 영구 삭제 실패");
		res6 = "";
		location.href="/adminChoicePage_trash";
	}
	
	// 상품 정보 영구 삭제 시 넘어오는 결과
	var res7 = "${result_permanently_Delete_user}";
	if(res7 === "true"){
		alert("회원 정보 영구 삭제 성공");
		res7 = "";
		location.href="/adminChoicePage_trash";
	}
	if(res7 === "false"){
		alert("회원 정보 영구 삭제 실패");
		res7 = "";
		location.href="/adminChoicePage_trash";
	}
	
	// 유저 정보 영구 삭제 시 넘어오는 결과
	var res8 = "${result_restore_user}";
	if(res8 === "true"){
		alert("회원 정보 복원 성공");
		res8 = "";
		location.href="/adminChoicePage_member";
	}
	if(res8 === "false"){
		alert("회원 정보 복원 실패");
		res8 = "";
		location.href="/adminChoicePage_member";
	}
	
	// 상품 정보 영구 삭제 시 넘어오는 결과
	var res9 = "${result_modify}";
	if(res9 === "true"){
		alert("회원 권한 수정 성공");
		res9 = "";
		location.href="/adminChoicePage_member";
	}
	if(res9 === "false"){
		alert("회원 권한 수정 실패");
		res9 = "";
		location.href="/adminChoicePage_member";
	}
	
});
</script>
</body>
</html>