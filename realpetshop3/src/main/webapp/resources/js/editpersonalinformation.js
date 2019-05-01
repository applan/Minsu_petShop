$(function(){
	$("#registtt").validate({
		errorPlacement:function(error,element){ 
			$(element).closest("form")
			.find("small[id='"+element.attr("id")+"']")
			.append(error);
			},
		rules:{
			current_password:{
				required:true,
				validPwd : true
			},
			new_password:{
				required:true,
				validPwd : true,
			},
			confirm_password:{
				required:true,
				validPwd : true,
				equalTo:"#new_password"
			},
			addr:{
				required:true,
			},
			email:{
				required:true,
				validEmail:true
			}
		},
		messages:{
			current_password:{
				required:"비밀번호는 필수 입력 요소입니다."				
			},
			new_password:{
				required:"비밀번호는 필수 입력 요소입니다."	,				
			},
			confirm_password:{
				required:"비밀번호는 필수 입력 요소입니다."	,				
				equalTo:"이전 비밀번호와 다릅니다."
			},
			addr:{
				required:"주소는 필수 입력 요소입니다."
			},
			email:{
				required:"이메일은 필수 입력 요소입니다."				
			}
		}
	});	
});
$.validator.addMethod("validPwd",function(value){
	var regPwd=/^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,15}$/;
	return regPwd.test(value);
},"비밀번호는 숫자와 영문자와 특수문자의 조합으로 8~15자리를 사용해야 합니다.");
$.validator.addMethod("validEmail",function(value){
	var regEmail=/^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
	return regEmail.test(value);
},'이메일 형식을 확인해 주세요');








