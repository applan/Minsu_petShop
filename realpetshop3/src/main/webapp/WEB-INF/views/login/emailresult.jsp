<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Pat Shop</title>
</head>
<body>

</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script>
 $(function() {
	var res = ""+${result}+"";
	if(res === "true"){
		alert("이메일 전송 성공");
		res = "";
	}
	if(res === "false"){
		alert("이메일 전송 실패");
		res = "";
	}
	if(res === ""){
		location.href="/login1";
	}
});
</script>
</html>