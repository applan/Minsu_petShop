<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp" %>

<link rel = "stylesheet" href = "/resources/css/gd_common.css" />
<link rel = "stylesheet" href = "/resources/css/gd_content.css" />

<div id="container">
        <!-- 본문 시작 : start -->
        <div id="content">

<div class="member">
	<img src="/resources/img/logo.png" style="width: 300px; margin-left: 130px;" />


    <form id="formFindId"  action="" ><!-- method="post" novalidate="novalidate"-->
        <div class="box">
            <div id="divFindId">
                <h3>회원 아이디찾기</h3>

                <div class="login" style="padding-bottom: 20px;">
                    <div class="input-info">
                    
   
							
                        <div >
 
                            <input type="text" class="text" id="username" name="username" class="form-control" placeholder="이름">
                            <small id="username" class="text-info"></small>
                        </div>
		<br/>
                        <div >
                  
                             <input type="text" class="text" id="email" name="email" class="form-control"placeholder="가입메일주소">
                            <small id="email" class="text-info"></small>
                        </div>

                    </div>
                    <button type="submit" class="skinbtn point2 fi-id" ><em>아이디 찾기</em></button>
                </div>
                <p class="dn caution-msg1">일치하는 회원정보가 없습니다. 다시 입력해 주세요.</p>
            </div>
            <div class="btn">
                <button type="button" class="skinbtn default fi-pw find-id btn-find-password" id="pwd"
                onclick = "location.href = 'PasswordRelivalance'"
                style="background-color: red; border-color: red; color:white;"><em>비밀번호 찾기</em></button>
                <button type="button" class="skinbtn default fi-login find-id btn-login" 
                onclick = "location.href = 'login1'"
                style="background-color: red; border-color: red; color:white;"><em>로그인하기</em></button>
            </div>
        </div>
    </form>
</div>
<script>

</script>

<!-- <script type="text/javascript">
    $(document).ready(function () {
        $('input').keyup(function () {
            $('.caution-msg1', 'form').addClass('dn');
        });
        $('.btn-find-password', 'form').click(function (e) {
            location.href = '';
            e.preventDefault();
        });
        $('.btn-login', 'form').click(function (e) {
            location.href = '../member/login.php';
            e.preventDefault();
        });

        $('#formFindId').validate({
            dialog: false,
            rules: {
                userName: {
                    required: true
                },
                userEmail: {
                    required: true,
                    email: true
                }
            },
            messages: {
                userName: {
                    required: "이름을 입력해주세요."
                },
                userEmail: {
                    required: "이메일을 입력해주세요.",
                    email: "메일 형식이 틀렸습니다."
                }
            }, submitHandler: function (form) {
                var params = $(form).serializeArray();
                params.push({name: "mode", value: "findId"});
                $.post('../member/find_ps.php', params).done(function (data, textStatus, jqXHR) {
                    if (data.result) {
                        var compiled = _.template($('#templateFindIdResult').html());
                        var result_message = __('회원님의 아이디는 %s 입니다', '<br><strong>' + data.memberId + '</strong>');
                        var templateData = {memberId: data.memberId, userName: $('#userName').val(), "result_message": result_message};
                        $('#divFindId').html(compiled(templateData));
                    } else {
                        $(form).find('.caution-msg1').removeClass('dn').text(data.message);
                    }
                });
            }, invalidHandler: function (form, validator) {
                var errors = validator.numberOfInvalids();
                if (errors) {
                    $(form.target).find('.caution-msg1').removeClass('dn').text(validator.errorList[0].message);
                    validator.errorList[0].element.focus(); 
                }
            }
        });
    });
</script> -->
<%-- <script type="text/template" id="templateFindIdResult">
    <p class="result-msg"><%=userName%> <%=result_message%></p>
</script> --%>
</div>
        <!-- 본문 끝 : end -->

</div>
<%@include file="../includes/footer.jsp" %>
<script src="/resources/js/jquery.validate.js"></script>
<script src="/resources/js/findid.js"></script>