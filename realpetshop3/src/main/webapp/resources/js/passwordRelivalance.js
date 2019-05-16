$(function(){
	$("#formFindPassword").validate({
		errorPlacement:function(error,element){ 
			$(element).closest("form")
			.find("small[id='"+element.attr("id")+"']")
			.append(error);
			},
		rules:{
			userid:{
				required:true,
				validId :true					
			},
			email:{
				required:true,
				validEmail:true
			}
		},
		messages:{
			userid:{
				required:"아이디는 필수 입력 요소입니다."				
			},
			email:{
				required:"이메일은 필수 입력 요소입니다."				
			}
		}
	});	
});
$.validator.addMethod("validId",function(value){
	var regId=/^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{5,12}$/;
	return regId.test(value);
},"아이디는 영문 대소문자,숫자를 포함하여 5~12자리 사이로 입력해야 합니다.");
$.validator.addMethod("validEmail",function(value){
	var regEmail=/^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
	return regEmail.test(value);
},'이메일 형식을 확인해 주세요');








