<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../includes/header.jsp"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- <link rel="stylesheet" href="/resources/css/gd_common.css" /> -->

<link rel="stylesheet" href="/resources/css/style.css" />

<div class="container">
	<div class="no-gutters py-5 row">
		<div class="col-1 col-sm-4"></div>
		<div class="col-10 col-sm-4">
			<div class="text-center">
				<!-- 본문 시작 : start -->
				<!-- <img src="/resources/img/logo.png" style="width: 300px; margin-left: 130px;" /> -->
				<form class="formFindId" id="formFindId" method="post" action="/findfindfinduserid">
					<!-- method="post" novalidate="novalidate"-->
					<p class="p">
						<i class="fas fa-dog"></i>
					</p>
					<label for="username" class="sr-only"></label> <input type="text"
						id="username" class="form-control" placeholder="이름" required
						autofocus> <label for="email" class="sr-only"></label> <input
						type="email" id="email" class="form-control"
						placeholder="가입한 이메일 주소" required>
					<button type="button"
						class="btn btn-primary btn-block btn-lg gradient" type="submit">아이디찾기</button>

					<!-- 				<p class="dn caution-msg1">일치하는 회원정보가 없습니다. 다시 입력해 주세요.</p>
 -->
					
					<div class="foo">
						<div>
							<h6>
								|<a href="PasswordRelivalance" style="color: black;">비밀번호 찾기</a>|
								<a href="login1" style="color: black;">로그인하기</a>|
							</h6>
						</div>
					</div>
					<div>
						<p class="mt-5 mb-3 text-muted">© 2019-01-10~2019-06-20</p>
					</div>
				</form>
			</div>
		</div>
		<div class="col-1 col-sm-4"></div>
	</div>
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

<!-- 본문 끝 : end -->
<%@include file="../includes/footer.jsp"%>
<script src="/resources/js/jquery.validate.js"></script>
<script src="/resources/js/findid.js"></script>