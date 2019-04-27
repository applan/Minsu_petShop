<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp" %>
<link rel = "stylesheet" href = "/resources/css/gd_common.css" />
<link rel = "stylesheet" href = "/resources/css/gd_content.css" />
<link rel = "stylesheet" href = "/resources/css/gd_custom.css" />
<link rel = "stylesheet" href = "/resources/css/gd_goods-view.css" />
<link rel = "stylesheet" href = "/resources/css/gd_item-display.css" />
<link rel = "stylesheet" href = "/resources/css/gd_layout.css" />
<link rel = "stylesheet" href = "/resources/css/gd_layout.css" />
 <link rel = "stylesheet" href = "/resources/css/gd_share.css" />

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>


    <div id="container">
        <!-- 본문 시작 : start -->
        <div id="content">
<img src="resources/img/logo.png" style="width:300px; margin-left: 350px; margin-top: 50px; " />
<div class="member find-pw-page" style="padding-left: 30px; padding-top: 0px;">
    <h2>비밀번호 찾기</h2>

    <div class="box">
        <form name="formFind" id="formFind" action="" method="post" novalidate="novalidate">
            <fieldset>

                <h3>아이디, 이메일 입력</h3>

                <p class="guide" style="font-size: small;">비밀번호를 찾고자 하는 아이디, 이메일을 입력해 주세요.</p>

                
                <div class="find-pw" style="padding:0px; border-top: 0px;">
                    <div class="input-id">
                        <div class="txt-field">
                            <input type="email" id="email" name="email" class="text" placeholder="이메일">
                        </div>
                        <p class="dn" id="errorMessage"></p>
                    </div>
                </div>
                <div class="find-pw" style="padding:0px; border-top: 0px;">
                    <div class="input-id">
                        <div class="txt-field">
                            <input type="text" id="memberId" name="memberId" class="text" placeholder="아이디">
                        </div>
                        <p style="font-size: small;">아이디를 모르시나요?<a href="FindID" class="btn-find-id">아이디 찾기</a></p>
                        <p class="dn" id="errorMessage"></p>
                    </div>
                </div>
                <div class="btn" style="padding-left: 50px; margin-top: 0px;">
                <div class="btn">
                    <button class="skinbtn base3 fp-next" type="button" onclick="location.href='#'" style="background-color: red; border-color: red;"><em>비밀번호 찾기</em></button>
                </div>
                <div class="btn">
                    <button class="skinbtn base3 fp-next" type="button" onclick="location.href='login1'" style="background-color: red; border-color: red;"><em>로그인 하러가기</em></button>
                </div>
                </div>
            </fieldset>
        </form>
    </div>
</div>

<!-- <script type="text/javascript">
    $(document).ready(function () {
        $('input').keyup(function () {
            $('#errorMessage', 'form').addClass('dn');
        });

        $('.btn-find-id').click(function (e) {
            location.href = '../member/find_id.php';
            e.preventDefault();
        });

        $('#formFind button[type="submit"]').click(function () {
            if ($('#formFind').valid() == false) return false;
        });

        $('#formFind').validate({
            dialog: false,
            rules: {
                memberId: {
                    required: true
                }
            },
            messages: {
                memberId: {
                    required: "아이디를 입력해주세요"
                }
            }, submitHandler: function (form) {
                var data = $(form).serializeArray();
                data.push({name: "mode", value: "find_member"});

                $.post('../member/find_ps.php', data).done(function (data, textStatus, jqXHR) {
                    console.log('gd_member ajax', data, textStatus, jqXHR);
                    var code = data.code;
                    var message = data.message;
                    if (_.isUndefined(code) && _.isUndefined(message)) {
                        form.submit();
                    } else {
                        $('#errorMessage', form).removeClass('dn').html('<strong>' + message + '</strong>');
                    }
                });
            }
        });
    });
</script> -->
</div>
</div>
<%@include file="../includes/footer.jsp" %>



