$(function(){
	$("#formFindId").validate({
		errorPlacement:function(error,element){ 
			$(element).closest("form")
			.find("small[id='"+element.attr("id")+"']")
			.append(error);
			},
		rules:{
			username:{
				required:true,
				minlength:2
			},
			email:{
				required:true,
				validEmail:true
			}
		},
		messages:{
			username:{
				required:"이름은 필수 입력 요소입니다.",
				minlength:"이름은 최소 2자리는 입력해야 합니다"
			},
			email:{
				required:"이메일은 필수 입력 요소입니다."				
			}
		}
	});	
});
$.validator.addMethod("validEmail",function(value){
	var regEmail=/^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
	return regEmail.test(value);
},'이메일 형식을 확인해 주세요');








