<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Carnping | 회원가입</title>
<style>

        h2, h3{
            font-family: unset;
        }

        
        *{
            font-family: 'Jal_Onuel';
            font-weight: 200;
        }
		.progressBar{
            position: absolute;
            top: 0;
            left: 20px;
            width: 20%;
            height: 4px;
            background: #0ca678;
            -webkit-transition: width 0.2s;
            transition: width 0.2s;
            z-index: 1;
        }
        .agreement{
            position: relative;
            -webkit-flex: 1 0 100%;
            -ms-flex: 1 0 100%;
            flex: 1 0 100%;
            padding-top: 18px;
        }

        .title{
            margin-top:10px;
            margin-left:22px;
            margin-bottom: 20px;
            font-size: 20px;
            font-weight: 500;
            line-height: 28px;
            letter-spacing: unset;
            white-space: pre-wrap;
        }

        .agreeAll{
            padding: 22px 0;
            margin: 0px 35px 15px 35px;
            border-bottom: 1px solid #0ca678;
            letter-spacing: unset;
        }
        
        label.checkLabel:before{
            content: "\f058";
            color: grey;
            font-family: "Font Awesome 5 Free";
            font-weight: 600;
            font-size: 25px;
            vertical-align: middle;
        }

        input#all:checked + label.checkLabel:before {
            content: "\f058";
            color:#0ca678;
        }

        .checkLabelDesc{
            padding-left: 10px;
            cursor: pointer;
        }

        label.check:before{
            content: "\f00c";
            color: grey;
            font-family: "Font Awesome 5 Free";
            font-weight: 600;
            font-size: 17px;
        }

        input.check:checked + label.check:before{
            content: "\f00c";
            color: #0ca678;
            font-family: "Font Awesome 5 Free";
            font-weight: 600;
            font-size: 17px;
        }

        .detail{
            margin-left: 7px;
            line-height: 20px;
            border-radius: 25px;
            border: 1px solid #0ca678 ;
            padding: 2px 10px 0px 10px;
            background-color: #0ca67873;
            color:white;
            font-size: 13px;
        }

        .joinBtn{
            border-radius: 50px;
            padding: 10px 100px;
            background-color: #0ca678;
            color:white;
        }
        
        #wrapper{
            background-color:#74E7BF;
            height: 100%;
            width: 100%;
            letter-spacing: 0.08em;
        }

        #wrapper>*{
            letter-spacing: unset;
        }

        #joinWrapper{
            background-color:  rgba(255, 240, 156, 0.7);
            border-radius: 50px;
            max-width: 600px;
            height: 95%;
            margin: auto;
            margin-top: 5px;
        }
        
        .condition{
            display: flex;
            -webkit-box-align: center;
            align-items: center;
            height: 40px;
            font-size: 12px;
            line-height: 20px;
            padding-left: 5px;
        }

        .pwdCondition{
            position: relative;
            padding-right: 28px;
            color: rgb(196, 196, 196);
        }

        .pwdCondition::after{
            position: absolute;
            top: 2px;
            right: 10px;
            width: 10px;
            height: 6px;
            border-bottom: 1px solid rgb(196, 196, 196);
            border-left: 1px solid rgb(196, 196, 196);
            border-top-color: rgb(196, 196, 196);
            border-right-color: rgb(196, 196, 196);
            transform: rotate(-45deg);
            content: "";
            box-sizing: content-box;
        }

        
        .pwdCondition.valid {
            color: #0ca678;
        }

        .pwdCondition.valid::after {
            border-bottom: 1px solid #0ca678;
            border-left: 1px solid #0ca678;
            border-top-color: #0ca678;
            border-right-color: #0ca678;
        }

</style>
</head>
<body>
<!-- Header -->
	<jsp:include page="../common/header.jsp"/>
	
	<div id="wrapper" style="padding-top: 122.5px; position:relative;" >
        <div id="joinWrapper" >
            <img src="img/logo_login_1.png" width="125px" style="display:block; margin:auto; padding-top: 25px;" alt="">
            <h2 style="margin: 25px 0px 60px 0px; text-align: center; letter-spacing: unset; font-size:28px;">간편 가입</h2>
            
            <form action="insert.me" name="agreement" id="enrollForm">
                
                <div class="agreement">
                    
                    <i step="1" class="progressBar"></i>
                    <h3 class="title" id="title">Carnping 서비스 이용약관에 동의해주세요.</h3>
                    
                    <div class="agreeAll">
                        <div id="idForm" style="display:none;">
                            <input type="text" id="idInput" placeholder="아이디 입력" style="width: 100%;
                                height: 50px;
                                padding: 10px;
                                border: 1px solid lightblue;" name="userId" required>
                            <p class="idCondition" style="visibility: hidden; padding: 5px 0px 0px 5px; color: orangered">5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.</p>

                        </div>
                        <div id="pwdForm" style="display:none;">
                            <input type="password" id="pwdInput" name="password" placeholder="비밀번호 입력" autocapitalize="none" style="width: 100%;
                            height: 50px;
                            padding: 10px;
                            border: 1px solid lightblue;" >
                            <p class="condition">
                                <span class="pwdCondition" id="pwdUpperCase">대소문자</span>
                                <span class="pwdCondition" id="pwdNumber">숫자</span>
                                <span class="pwdCondition" id="pwdSpecialChar">특수문자</span>
                                <span class="pwdCondition" id="pwdLength">8-20자 이내</span>
                            </p>
                            <input type="password" id="confirmPwdInput" name="checkPwd" placeholder="비밀번호 확인" style="width: 100%;
                            height: 50px;
                            padding: 10px;
                            border: 1px solid lightblue;">
                            <p class="condition">
                                <span class="pwdCondition" id="pwdConfirm">비밀번호 일치</span>
                            </p>
                        </div>
                        <span class="agreeSpan">
                            <input type="checkbox" id="all" name="all">
                            <label class="checkLabel" for="all"></label>
                            <label class="checkLabelDesc" style="padding-left: 5px;" for="all" title="all">
                                모두 동의 (선택 정보 포함)
                            </label>
                        </span>
                    </div>
                    <ul class="agreeDetail" style="margin: 0px 40px 30px 40px;">
                        <div class="agreement">
                            <span type="join" class="css-s2m4or e1ss8rgr0">
                                <input type="checkbox" class="check" id="age" name="age">
                                <label class="check" for="age"></label>
                                <label class="checkLabelDesc" for="age" title="age">
                                    [필수]<!-- --> <!-- -->만 14세 이상입니다
                                </label>
                            </span>
                        </div>
                        <div class="agreement">
                            <span type="join" class="css-s2m4or e1ss8rgr0">
                                <input type="checkbox" class="check" id="term" name="term">
                                <label class="check" for="term"></label>
                                <label class="checkLabelDesc" for="term" title="term">
                                    [필수]<!-- --> <!-- -->이용약관 동의
                                </label>
                            </span>
                            <button class="detail" type="button">
                                보기
                            </button>
                        </div>
                        <div class="agreement">
                            <span type="join" class="css-s2m4or e1ss8rgr0">
                                <input type="checkbox" class="check" id="privacy" name="privacy">
                                <label class="check" for="privacy"></label>
                                <label class="checkLabelDesc" for="privacy" title="privacy">
                                    [필수]<!-- --> <!-- -->개인정보 수집 및 이용 동의
                                </label>
                            </span>
                            <button class="detail" type="button">
                                보기
                            </button>
                        </div>
                        <div class="agreement">
                            <span type="join" class="css-s2m4or e1ss8rgr0">
                                <input type="checkbox" class="check" id="marketing" name="marketing">
                                <label class="check" for="marketing"></label>
                                <label class="checkLabelDesc" for="marketing" title="marketing">
                                    [선택]<!-- --> <!-- -->광고성 정보 수신 및 마케팅 활용 동의
                                </label>
                            </span>
                            <button class="detail" type="button" data-toggle="modal" data-target="#marketingModal" >보기</button>
                        </div>
                    </ul>
                    <div class="join" id="agreeBtnDiv" align="center" style="margin-top:60px;" >
                        <button class="joinBtn" id="agreeBtn" type="button" disabled onclick="agreementCheck();">동의하고 가입하기</button>
                    </div>
                    <div class="join" id="idNextBtnDiv" align="center" style="margin-top:60px; display:none;">
                        <button class="joinBtn" id="idNextBtn" type="button" disabled onclick="idConfirmed();">다음</button>
                    </div>
                    <div class="join" id="PwdNextBtnDiv" align="center" style="margin-top:60px; display:none;" >
                        <button class="joinBtn" id="nextBtn" type="button" disabled onclick="pwdConfirmed();">다음</button>
                    </div>
                </div>
            </form>
        </div>

    </div>

    <script>


    $(function(){
        var agreeValid1 = false;
        var agreeValid2 = false;
        var agreeValid3 = false;

        $('#all').on('change', function(){
            if($(this).is(':checked')){
                $('.check').prop('checked', true);
                agreeValid1 = true;
                agreeValid2 = true;
                agreeValid3 = true;
            } else {
                $('.check').prop('checked', false);
                agreeValid1 = false;
                agreeValid2 = false;
                agreeValid3 = false;
            }
            checkAgreeValid();
        });

        $('#age').on('change', function(){
            if($(this).is(':checked')){
            agreeValid1 = true;
        } else {
            agreeValid1 = false;
        }
            checkAgreeValid();
        });


        $('#term').on('change', function(){
            if($(this).is(':checked')){
            agreeValid2 = true;
        } else {
            agreeValid2 = false;
        }
            checkAgreeValid();
        });

        $('#privacy').on('change', function(){
            if($(this).is(':checked')){
            agreeValid3 = true;
        } else {
            agreeValid3 = false;
        }
            checkAgreeValid();
        });


        function checkAgreeValid() {
            if(agreeValid1 && agreeValid2 && agreeValid3) {
                $('#agreeBtn').prop('disabled', false);
            } else {
                $('#agreeBtn').prop('disabled', true);

            }
        }

    });



    function agreementCheck(){

        const $marketingInput = $("#enrollForm input[name=marketing]");


        $.ajax({
           url : "agree.me",
           data : {
            marketingAgree:$marketingInput.val()
            },
           success : function(){
            $("#title").text("로그인에 사용할 아이디를 입력해주세요.");
            $("#idForm").show();
            $(".agreeSpan").hide();
            $(".agreeDetail").hide();
            $("#agreeBtnDiv").hide();
            $("#idNextBtnDiv").show();

        }
        ,
        //        error:function(request,status,error){
            //     alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
            //    }
            error : function(){
                console.log("ajax 통신 실패!");
            }
            
        });
    }
    
    function idCheck(userId) {
        const $idInput = $("#enrollForm input[name=userId]")
        return $.ajax({
            url: "idCheck.me",
            data: { checkId: userId },
        });
    }

    function validateId(userId) {
        var idPattern = /^[a-z0-9_-]{5,20}$/;
        return idPattern.test(userId);
    }

    $('#idInput').on('input', function () {
        var userId = $(this).val();
        var isValid = validateId(userId);
        if (isValid) {
            idCheck(userId).done(function(result) {
                if(result === "NNNNY"){
                    $(".idCondition").text("사용 가능한 아이디 입니다.");

                    $(".idCondition").css('visibility','visible').css('color','#0ca678');
                    $('#idNextBtn').prop('disabled', false);
                } else {
                    $(".idCondition").text("이미 존재하거나 탈퇴한 회원의 아이디입니다.");
                    $('.idCondition').css('visibility','visible').css('color','orangered');
                    $('#idNextBtn').prop('disabled', true);
                }
            }).fail(function() {
                console.log("아이디 중복체크용 ajax 통신 실패!");
            });
        } else {
            $(".idCondition").text("5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.");
            $('.idCondition').css('visibility','visible').css('color','orangered');;
            $('#idNextBtn').prop('disabled', true);
        }
    });


    function idConfirmed(){

        const $confirmedIdInput = $("#enrollForm input[name=userId]");
        console.log($confirmedIdInput.val());


        $.ajax({
        url : "idConfirmed.me",
        data : {
            memId:$confirmedIdInput.val()
            },
        success : function(){
            $("#title").text("로그인에 사용할 비밀번호를 입력해주세요.");
            $("#idForm").hide();
            $("#idNextBtnDiv").hide();
            $("#pwdForm").show();
            $("#PwdNextBtnDiv").show();

        }
        ,
        //        error:function(request,status,error){
            //     alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
            //    }
            error : function(){
                console.log("ajax 통신 실패!");
            }
            
        });
    }


    function pwdConfirmed(){

        const $confirmedPwdInput = $("#enrollForm input[name=password]");

        $.ajax({
        url : "pwdConfirmed.me",
        data : {
            memPwd:$confirmedPwdInput.val()
            },
        success : function(){
            $("#title").text("회원 정보를 입력해주세요.");
            $("#pwdForm").hide();
            $("#PwdNextBtnDiv").hide();

        }
        ,
        //        error:function(request,status,error){
            //     alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
            //    }
            error : function(){
                console.log("ajax 통신 실패!");
            }
            
        });
    }

    
        
        
        $(function(){
            $("#pwdInput, #confirmPwdInput").on("input", function() {
                var password = $("#pwdInput").val();
                var upperCaseRegex = /[A-Z]/;
                var numberRegex = /[0-9]/;
                var specialCharRegex = /[!@#$%^&*(),.?":{}|<>]/;
                var confirmPassword = $("#confirmPwdInput").val();
                var valid = true;

                if (!upperCaseRegex.test(password)) {
                    $('#pwdUpperCase').removeClass('valid');
                    valid = false;
                } else {
                    $('#pwdUpperCase').addClass('valid');
                }

                if (!numberRegex.test(password)) {
                    $('#pwdNumber').removeClass('valid');
                    valid = false;
                } else {
                    $('#pwdNumber').addClass('valid');
                }

                if (!specialCharRegex.test(password)) {
                    $('#pwdSpecialChar').removeClass('valid');
                    valid = false;
                } else {
                    $('#pwdSpecialChar').addClass('valid');
                }

                if (password.length < 8 || password.length > 20) {
                    $('#pwdLength').removeClass('valid');
                    valid = false;
                } else {
                    $('#pwdLength').addClass('valid');
                }

                if (password === confirmPassword && confirmPassword.length > 1) {
                    $('#pwdConfirm').addClass('valid');
                } else {
                    $('#pwdConfirm').removeClass('valid'); 
                    valid = false;
                }

                if (valid) {
                    $('#nextBtn').prop('disabled', false);
                } else {
                    $('#nextBtn').prop('disabled', true);
                }
                
            });
        });

        </script>
              



    <!-- The Modal -->
    <div class="modal" id="marketingModal">
        <div class="modal-dialog">
            <div class="modal-content">
        
                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title" style="font-size:20px; padding: 5px 10px;"> 마케팅 정보 수신 및 활용 동의</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
        
                <!-- Modal body -->
                <div class="modal-body">
                    <p>
                        카앤핑에서 제공하는 이벤트 및 혜택 등 다양한 정보를 문자메시지, 이메일, 앱 푸시 알림 등으로 받아보실 수 있습니다. 마케팅 정보 수신 및 활용 동의 여부와 관계없이 회원가입 및 서비스를 이용하실 수 있습니다. 또한 서비스의 중요 안내사항 및 주문/배송에 대한 정보는 마케팅 정보 수신 동의 여부와 관계없이 발송됩니다.

                        1. 수집·이용목적
                        마케팅 및 분석
                        프로모션
                        2. 수집·이용항목
                        회원 정보(이름, 휴대폰 번호, 이메일, 성별, 생년월일, 회원등급, 가입일시)
                        쇼핑 및 서비스 이용 정보(장바구니의 상품, 구매일시, 배송지역)
                        수집∙이용항목은 마케팅 및 분석, 프로모션의 목적에 따라 달라질 수 있으며 수집 시점에 안내 후 동의여부를 별도 확인함
                        3. 보유 및 이용기간
                        정보 삭제 또는 이용 정지 요청 및 회원탈퇴 시 즉시 삭제
                        4. 마케팅 활용 정보 수집 방법
                        희망자에 한해 직접 입력
                    </p>
                </div>
        
                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                </div>
        
            </div>
        </div>
  </div>
	
<!-- Footer -->
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>