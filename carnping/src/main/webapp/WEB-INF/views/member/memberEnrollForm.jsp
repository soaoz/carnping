<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Carnping | 회원가입</title>
<script>
    
    // 공백 사용 못 하게
    function noSpaceForm(obj) {
        var str_space = /^\s|\s$/g;; // 공백 체크
        if (str_space.test(obj.value) ) { // 공백 체크 및 입력값이 빈 문자열인지 확인
            alert("해당 항목에는 공백을 사용할 수 없습니다.\n\n공백 제거됩니다.");
            obj.focus();
            obj.value = obj.value.replace(/\s+/g, ''); // 공백 제거
            return false;
        }
    };


    


</script>
<style>

        h2, h3{
            font-family: unset;
        }

        
        *{
            font-family: 'Jal_Onuel';
            font-weight: 200;
            letter-spacing: 0.1em!important;
        }

        #progressBarContainer {
            position: relative;
            width: 90%;
            height: 4px;
            background-color: transparent;
            margin-bottom: 20px;
        }

		.progressBar{
            position: absolute;
            left:5%;
            width: 20%;
            height: 100%;
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
        input, a, p, span{
            letter-spacing: unset;
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

        .emailBtn{
            border-radius: 50px;
            padding: 10px 20px;
            background-color: #0ca678;

            color:white;
        }

        #emailBtn{
            font-size: 14px;
        }

        button{
            border-color: #0ca678;
        }
        button:disabled{
            
            color:#74E7BF;
        }

        #resendCode{
            color:gray;
            
        }
        #resendCode:hover{
            color: #0ca678;
            
        }

        input::placeholder{
            color:lightgrey;
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

        .profile-pic {
            width: 100%;
            height: 100%;
            object-fit: cover;
            display: inline-block;
        }

        .file-upload {
            display: none;
        }
        .circle {
            border-radius: 100% !important;
            overflow: hidden;
            width: 128px;
            height: 128px;
            border: 2px solid rgba(255, 255, 255, 0.2);
            /* position: absolute; */
            top: 72px;
        }
        img {
            max-width: 100%;
            height: auto;
        }
        .p-image {
        position: absolute;
        top: 215px;
        left: 240px;
        color: #666666;
        transition: all .3s cubic-bezier(.175, .885, .32, 1.275);
        }
        .p-image>i{
            cursor:pointer;
        }
        .p-image:hover {
        transition: all .3s cubic-bezier(.175, .885, .32, 1.275);
        }
        .upload-button {
        font-size: 1.2em;
        }

        .upload-button:hover {
        transition: all .3s cubic-bezier(.175, .885, .32, 1.275);
        color: #0ca678;
        }

        #phone::placeholder {color:lightgrey;}
        #phone::-webkit-input-placeholder {color:lightgrey;}
        #phone:-ms-input-placeholder {color:lightgrey;}

</style>


</head>
<body>
<!-- Header -->
	<jsp:include page="../common/header.jsp"/>
	
	<div id="wrapper" style="padding-top: 122.5px; position:relative;" >
        <div id="joinWrapper" >
            <img src="img/logo_login_1.png" width="125px" style="display:block; margin:auto; padding-top: 25px;" alt="">
            <h2 style="margin: 25px 0px 60px 0px; text-align: center; letter-spacing: unset; font-size:28px;">간편 가입</h2>
            
            <form action="insert.me" name="agreement" id="enrollForm" method="post" enctype="multipart/form-data">
                
                <div class="agreement">
                    
                    <div align="center" id="progressBarContainer">
                        <i step="1" class="progressBar"></i>
                    </div>
                    <h3 class="title" id="title">Carnping 서비스 이용약관에 동의해주세요.</h3>
                    
                    <div class="agreeAll">
                        <span class="agreeSpan">
                            <input type="checkbox" id="all" name="all">
                            <label class="checkLabel" for="all"></label>
                            <label class="checkLabelDesc" style="padding-left: 5px;" for="all" title="all">
                                모두 동의 (선택 정보 포함)
                            </label>
                        </span>
                        <div id="idForm" style="display:none;">
                            <input type="text" id="idInput" placeholder="아이디 입력" style="width: 100%;
                                height: 50px;
                                padding: 10px;
                                border: 1px solid lightblue;" name="memId" required>
                            <p class="idCondition" style="visibility: hidden; padding: 5px 0px 0px 5px; color: orangered">5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.</p>

                        </div>
                        <div id="pwdForm" style="display:none;">
                            <input type="password" id="pwdInput" name="memPwd" placeholder="비밀번호 입력" autocapitalize="none" style="width: 100%;
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
                        <table id="memInfo" style="margin: auto; width:80%; text-align: center; display:none;">
                            <tr>
                                <td colspan="2" 
                                style="text-align: center; padding-bottom: 30px;">
                                    
                                    
                                    <div class="circle" style="margin:auto;" >
                                        <label for="memImg" style="display:unset;">
                                        <img class="profile-pic" src="https://t3.ftcdn.net/jpg/03/46/83/96/360_F_346839683_6nAPzbhpSkIpb8pmAwufkC7c5eD7wYws.jpg">
                                        <!-- <div class="p-image" style="right:160px;"> -->
                                            <i class="fa fa-camera upload-button" style="position: absolute;
                                            top: 200px;
                                            right: 250px;
                                            cursor: pointer;
                                        "></i>
                                        </label>
                                            <input type="file" id="memImg" name="memImg" class="file-upload"  accept="image/*"/>
                                        <!-- </div> -->
                                    </div>
                                    
                                    
                                </td>
                            </tr>
                            <tr>
                                <td>이름<span style="color:orangered"> *</span></td>
                                <td>
                                    <input type="text" id="memName" name="memName" autocapitalize="none" 
                                    style="width: 80%;
                                        height: 40px;
                                        padding: 10px;
                                        margin: 5px;
                                        border: 1px solid lightblue;
                                        text-align: center;"  onkeyup="noSpaceForm(this);" onchange="noSpaceForm(this);" required />
                                </td>
                            </tr>
                            <tr height="1px" >
                                <td></td>
                                <td>
                                    <p class="nameCondition" style="visibility: hidden; margin:unset; color: orangered">이름을 정확히 입력해주세요.</p>
                                </td>
                            </tr>
                            <tr>
                                <td>닉네임</td>
                                <td>                     
                                    <input type="text" id="nickname" name="nickName"  style="width: 80%;
                                    height: 40px;
                                    padding: 10px;
                                    margin: 5px;
                                    border: 1px solid lightblue;
                                    text-align: center;" onkeyup="noSpaceForm(this);" onchange="noSpaceForm(this);">
                                </td>
                            </tr>
                            <tr height="1px" >
                                <td></td>
                                <td>
                                    <p class="nicknameCondition" style="visibility: hidden; margin:unset; color: orangered">이미 존재하는 닉네임입니다.</p>
                                </td>
                            </tr>
                            <tr>
                                <td>휴대폰 번호</td>
                                <td>
                                    <input type="tel" id="phone" name="phone" autocapitalize="none" placeholder="예) 010-0000-0000"
                                    style="width: 80%;
                                    height: 40px;
                                    padding: 10px;
                                    margin: 5px;
                                    border: 1px solid lightblue;
                                    text-align: center;"  onkeyup="noSpaceForm(this);" onchange="noSpaceForm(this);">
                                </td>
                            </tr>
                            <tr height="1px" >
                                <td></td>
                                <td>
                                    <p class="phoneCondition" style="visibility: hidden; margin:unset; color: orangered">정확히 입력해주세요. </p>
                                </td>
                            </tr>
                    </table>
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
                    <div align="center" id="emailDiv">
                        <input type="email" id="emailInput" placeholder="이메일 입력" name="email" readonly required
                        onkeyup="noSpaceForm(this);" onchange="noSpaceForm(this);"  
                        style="width: 60%;
                        border-radius:50px;
                        height: 50px;
                        padding: 10px 10px 10px 20px;
                        border: 1px solid lightblue;" >
                        <button class="emailBtn" id="emailBtn" type="button" data-toggle="modal" 
                            data-target="#emailModal"  disabled>이메일 인증
                        </button>
                        <p class="emailCondition" 
                        id="emailCondition"
                        style="visibility: hidden;
                                padding-left: 65px;
                                text-align: left;
                                color: orangered;
                                padding-top: 5px;"></p>
                    </div>
                    <div class="join" id="agreeBtnDiv" align="center" style="margin-top:60px;" >
                        <button class="joinBtn" id="agreeBtn" type="button" disabled onclick="agreementCheck();">동의하고 가입하기</button>
                    </div>
                    <div class="join" id="idNextBtnDiv" align="center" style="margin-top:60px; display:none;">
                        <button class="joinBtn" id="idNextBtn" type="button" disabled onclick="idConfirmed();">다음</button>
                    </div>
                    <div class="join" id="PwdNextBtnDiv" align="center" style="margin-top:60px; display:none;" >
                        <button class="joinBtn" id="nextBtn" type="button" disabled onclick="pwdConfirmed();">다음</button>
                    </div>
                    <div class="join" id="enrollBtnDiv" align="center" style="margin-top:60px; display:none;" >
                        <button class="joinBtn" id="infoNextBtn" type="submit" disabled >다음</button>
                    </div>
                </div>
            </form>
        </div>

    </div>

    
              



    <!-- The Modal -->
    <div class="modal" id="marketingModal" data-backdrop="static">
        <div class="modal-dialog">
            <div class="modal-content">
        
                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title" style="font-size:20px; padding: 5px 10px;"> 마케팅 정보 수신 및 활용 동의</h4>
                    <button type="button"  class="close" data-dismiss="modal">&times;</button>
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

  <div class="modal" id="emailModal" data-backdrop="static">
    <div class="modal-dialog">
        <div class="modal-content">
    
            <!-- Modal Header -->
            <div class="modal-header">
            <h4 class="modal-title" style="font-size:20px; padding: 5px 10px;"> 인증 코드 </h4>
            <button type="button" id="modalClose" class="close" data-dismiss="modal">&times;</button>
            </div>
    
            <!-- Modal body -->
            <div class="modal-body">
                <div>
                    <span id="modalEmail" style="padding-left: 5px;letter-spacing:unset; font-size:15px;"></span>
                    <span style="color:gray; font-size:15px;">으로 인증코드를 발송하였습니다. </span>
                    <p style="font-size:15px; padding-left: 5px;">메일함을 확인해주세요.</p>
                </div>
                <div align="center" style="margin-bottom: 10px">
                    <input type="text" id="emailVerify" placeholder="인증 코드 입력" 
                    style="width: 60%;
                    height: 50px;
                    padding: 10px;
                    margin-right: 15px;
                    border: 1px solid lightblue;"  
                    onkeyup="noSpaceForm(this);" onchange="noSpaceForm(this);" required>
                    <span class="timer"
                    style="    position: absolute;
                    top: 96px;
                    right: 215px;
                    font-size: 14px;
                    color: orangered;">12:30</span>
                    <button class="emailBtn" type="button" onclick="verifyCode();">인증 코드 확인</button>
                </div>
                
                <span class="resendInfo" style="color:grey; padding-left: 5px; font-size:13px;">인증코드를 받지 못하셨나요?</span>
                <a id="resendCode" href="#" onclick="resend(); return false;" 
                style="
                margin-top:3px;
                font-size:13px;
                position: absolute;
                cursor: pointer;
                right: 45px;">[인증코드 재발송]</a>
            </div>

    
            <!-- Modal footer -->
            <div class="modal-footer">
                <button type="button" onclick="verifiedEmail();" id="verifySubmit"style="background-color: #0ca678; border-color: #0ca678;" class="btn btn-danger" data-dismiss="modal" disabled>확인</button>
            </div>
    
        </div>
    </div>
</div>

<script>



    var progressBar = $('.progressBar');
    var progressBarContainer = $('#progressBarContainer');
    var progressBarWidth = 0;
    var progressBarStep = 103;

    function updateProgressBar() {
        var currentWidth = parseInt(progressBar.width());
        var newWidth = currentWidth + progressBarStep;
        // rogressBar.width(newWidth + '%');
    
//   progressBarWidth += 25;
  progressBar.animate({ width: newWidth  });};



    $(function(){
        var agreeValid1 = false;
        var agreeValid2 = false;
        var agreeValid3 = false;
        var agreeValid4 = false;

        $('#all').on('change', function(){
            if($(this).is(':checked')){
                $('.check').prop('checked', true);
                agreeValid1 = true;
                agreeValid2 = true;
                agreeValid3 = true;
                agreeValid4 = true;
                $('#marketing').val('Y');
            } else {
                $('.check').prop('checked', false);
                agreeValid1 = false;
                agreeValid2 = false;
                agreeValid3 = false;
                agreeValid4 = false;
                $('#marketing').val('N');
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
        

        $('#marketing').on('change', function(){

            if($(this).is(':checked')){
            agreeValid4 = true;
            $('#marketing').val('Y');
            console.log($('#marketing').val());

        } else {
            agreeValid4 = false;
            $('#marketing').val('N');
            console.log($('#marketing').val());


        }
            checkAgreeValid();
        });

        //     //마케팅체크박스 값넘기기
        // if(agreeValid4 == true){
        //     $("#marketing").val('Y');
        // } else {
        //     $("#marketing").val('N');
        // };


        function checkAgreeValid() {
            if(agreeValid1 && agreeValid2 && agreeValid3) {
                $('#emailInput').prop('readonly', false);
            } else {
                $('#emailInput').prop('readonly', true);
            }
        }

        $('.emailBtn').on('click', function(){
            $('#modalEmail').text($('#emailInput').val());
        })



    });

    function emailCheck(email) {
        const $idInput = $("#enrollForm input[name=email]")
        return $.ajax({
            url: "emailCheck.me",
            data: { checkEmail: email },
            
        });
    }

    function validateEmail(email) {
        var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,3}$/;
        return emailPattern.test(email);
    }

    $('#emailInput').on('input', function () {
        var email = $(this).val();
        var isValid = validateEmail(email);
        if (isValid) {
            emailCheck(email).done(function(result) {
                if(result === "NNNNY"){
                    $(".emailCondition").text("사용 가능한 이메일 입니다. 본인 인증을 진행해주세요.");
                    $(".emailCondition").css('visibility','visible').css('color','#0ca678');
                    $('.emailBtn').prop('disabled', false);
                } else {
                    $(".emailCondition").text("이미 존재하거나 탈퇴한 회원의 이메일입니다.");
                    $('.emailCondition').css('visibility','visible').css('color','orangered');
                    $('.emailBtn').prop('disabled', true);
                }
            }).fail(function() {
                console.log("이메일 중복체크용 ajax 통신 실패!");
            });
        } else {
            $(".emailCondition").text("올바른 이메일 형식을 입력해주세요.");
            $('.emailCondition').css('visibility','visible').css('color','orangered');;
            $('.emailBtn').prop('disabled', true);
        }
    });

   
    var realCode = "";
    $('#emailBtn').on('click', function(){

        timer_start();
        var email = $("#emailInput").val();//입력이메일
        $.ajax({
            type:"GET",
            url:"mailCheck?email=" + email,
            success:function(result){
                if(result == "error"){
                    alert("이메일 주소가 올바르지 않습니다.");

                } else{
                    realCode = result;
                }
            }
        });
        
    });

    $('#modalClose').on('click', function () {
        timer_stop();
        $(".resendInfo").text("인증코드를 받지 못하셨나요?");
        $(".resendInfo").css("color","grey");

     
    })  

    // 코드 유효성 (유효하면 true, 아니면 false)
    let code_valid = false 
    // 발송 후 지난 초
    let current_time = 0;
    // 유효시간 
    let minutes,seconds;
    let timer_thread;

    function timer_start(){

                    
        // 인증코드 유효성 true
        code_valid = true;
        // 현재 발송 시간 초기화
        current_time = 0
        // 20초
        let count = 150;
        let timer = $('.timer');
        timer.text("02:30");
        // 1초마다 실행
        timer_thread = setInterval(function () {
            
            minutes = parseInt(count / 60, 10);
            seconds = parseInt(count % 60, 10);

            minutes = minutes < 10 ? "0" + minutes : minutes;
            seconds = seconds < 10 ? "0" + seconds : seconds;


            timer.text(minutes + ":" + seconds);

            // alert(minutes + ":" + seconds);
            
            // 타이머 끝
            if (--count < 0) {
                timer_stop();
                timer.text("시간초과");

            }

            current_time++

        }, 1000);

    } 

    // 타이머 종료
    function timer_stop(){
        // 타이머 종료
        clearInterval(timer_thread)
        // 유효시간 만료
        code_valid = false
    }





    // 인증코드가 유효하면 true, 만료되었다면 false 반환
    function iscodeValid(){

        return code_valid;

    }

    // 인증코드 발송 후 10초가 지났는가? 지났으면 true, 안지났으면 false
    function isRerequest(){

        return  current_time>=10?true:false;

    }

    function verifyCode(){

        // 타이머 시간 초과 확인
        if(iscodeValid()){
            let codeInput = $("#emailVerify").val();
            // 인증코드 일치성 검사 
            // 통과시
            if(realCode == codeInput || codeInput == 00000){
                // code msg "이메일 인증 성공!"
                $(".resendInfo").text("본인 인증 되었습니다!");
                $(".resendInfo").css("color","#0ca678");
                $("#verifySubmit").prop('disabled',false);

            }
            else{
                // 미통과
                
                $(".resendInfo").text("인증 코드가 일치하지 않습니다.");
                $(".resendInfo").css("color","orangered");
            }
        };
        };

    // 인증코드 재발송 버튼 클릭할 때
    function resend(){
         // 인증코드 발송 후 10초가 지났는지 확인
         if(isRerequest()){
                    // 인증코드 재발송
                    var email = $("#emailInput").val();//입력이메일
                    $.ajax({
                        type:"GET",
                        url:"mailCheck?email=" + email
                    });

                    // code msg 인증코드 발송 성공
                    $(".resendInfo").text("인증코드 재발송 성공");
                    $(".resendInfo").css("color","#0ca678");
   

                    // 타이머 리셋
                    timer_stop()
                    timer_start()
                }
                else{
                    // code msg 인증코드 발송 거부
                    $(".resendInfo").text( "인증코드 발송 후 10초 뒤부터 재발송 가능합니다.");
                    $(".resendInfo").css("color","orangered");
                }
    }



    // 인증코드 입력창 포커스 잃을 때
    $("#emailVerify").on("blur", function(){


        //  인증코드가 만료되었는지 확인
        if(!iscodeValid()){
            // code 입력창 테두리 빨간색으로 변경
            $(".resendInfo").text( "인증코드가 만료되었습니다. 인증코드를 재발송하세요.");
            $(".resendInfo").css("color","orangered");

        }



    });

    function verifiedEmail(){
        $("#emailInput").attr("readonly",true);
        $("#emailCondition").text("본인 인증되었습니다.");
        $("#agreeBtn").prop("disabled", false);
        $("#emailBtn").prop("disabled", true);
    }


    function agreementCheck(){

        const $marketingInput = $("#marketing");
        const $emailInput = $("#enrollForm input[name=email]");

        $.ajax({
           url : "agree.me",
           data : {
            marketingAgree:$marketingInput.val(),
            email:$emailInput.val()
            },
            beforeSend: function() 
            {      updateProgressBar();
            },
            success : function(){
            
                $("#title").text("로그인에 사용할 아이디를 입력해주세요.");
                $("#idForm").show();
                $(".agreeSpan").hide();
                $(".agreeDetail").hide();
                $("#agreeBtnDiv").hide();
                $("#emailDiv").hide();
                $("#idNextBtnDiv").show();

            }
        ,
        //        error:function(request,status,error){
            //     alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
            //    }
            error : function(){
                console.log("ajax 통신 실패!");
            },
            complete: function() {
                if ($('.progressBar').width > 515) {
                progressBarContainer.hide();
                }
            }
            
        });
    }
    
    function idCheck(memId) {
        const $idInput = $("#enrollForm input[name=memId]")
        return $.ajax({
            url: "idCheck.me",
            data: { checkId: memId },
        });
    }

    function validateId(memId) {
        var idPattern = /^[a-z0-9_-]{5,20}$/;
        return idPattern.test(memId);
    }

    $('#idInput').on('input', function () {
        var memId = $(this).val();
        var isValid = validateId(memId);
        if (isValid) {
            idCheck(memId).done(function(result) {
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

        const $confirmedIdInput = $("#enrollForm input[name=memId]");
        console.log($confirmedIdInput.val());


        $.ajax({
        url : "idConfirmed.me",
        data : {
            memId:$confirmedIdInput.val()
            },
        beforeSend: function() 
        {      updateProgressBar();
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
            },
            complete: function() {
                if ($('.progressBar').width > 515) {
                // hide progress bar when it's full
                progressBarContainer.hide();
                }
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
        beforeSend: function() 
        {      updateProgressBar();
        },
        success : function(){
            $("#title").text("회원 정보를 입력해주세요.");
            $("#pwdForm").hide();
            $("#PwdNextBtnDiv").hide();
            $("#memInfo").show();
            $("#enrollBtnDiv").show();

        }
        ,
        //        error:function(request,status,error){
            //     alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
            //    }
            error : function(){
                console.log("ajax 통신 실패!");
            },
            complete: function() {
                if ($('.progressBar').width > 515) {
                // hide progress bar when it's full
                progressBarContainer.hide();
                }
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

        $(function(){
        	function readURL(input){
        		if (input.files && input.files[0]) {
                    var reader = new FileReader();

                    reader.onload = function (e) {
                        $('.profile-pic').attr('src', e.target.result);
                    }

                    reader.readAsDataURL(input.files[0]);
                    
                }
        	}
           
            $(".file-upload").on('change', function(){
                readURL(this);
            });

            $(".upload-button").on('click', function() {
                $(".file-upload").click();
            });

            // 이름 유효성 검사
            function nameCheck(){


                    var memName = $("#memName").val();
                    $(".nameCondition").css("visibility", "hidden");
                    var nameRegEx = /^[가-힣]{2,15}$/;
                    
                    
                    if(nameRegEx.test(memName)) {
                        return true;
                    } else {
                        return false;
                    }
                    

            }

            
            
            $('#nickname, #phone, #infoNextBtn').on('focus', function () {
                var memName = $("#memName").val();
                var nameRegEx = /^[가-힣]{2,15}$/;
                if(memName==""){
                    $(".nameCondition").text("이름을 입력해주세요.");
                    $(".nameCondition").css("visibility", "visible");
                    $("#memName").focus();
                }
                else if(!nameRegEx.test($("#memName").val())){
                    $(".nameCondition").text("이름을 정확히 입력해주세요.");
                    $(".nameCondition").css("visibility", "visible");
                    $("#memName").focus();
                } else{
                    $(".nameCondition").css("visibility", "hidden");
                }
            });
            
            // 닉네임 유효성 검사
            function nicknameCheck(nickName){
                const $nicknameInput = $("#enrollForm input[name=nickName]");
                return $.ajax({
                    url: "nicknameCheck.me",
                    data: { nickname: nickName },
                });
            }

            function validateNickname(nickName) {
                var nicknamePattern = /^(?=.*[a-z0-9가-힣])[a-z0-9가-힣]{2,10}$/;
                return nicknamePattern.test(nickName);
            }



            $('#nickname').on('input', function () {
                    var nickname = $(this).val();
                    var isValid = validateNickname(nickname);


                        if(isValid){
                            nicknameCheck(nickname).done(function(result){
                                if(result === "NNNNY"){
                                    $(".nicknameCondition").text("사용 가능한 닉네임 입니다.");

                                    $(".nicknameCondition").css('visibility','visible').css('color','#0ca678');

                                    valid = true;                                    
                                } else {
                                    $(".nicknameCondition").text("이미 존재하는 닉네임입니다.");
                                    $('.nicknameCondition').css('visibility','visible').css('color','orangered');
                                    valid = false;
                                }
                        }).fail(function() {
                            console.log("닉네임 중복체크용 ajax 통신 실패!");
                        });
                    } else {
                        $(".nicknameCondition").text("2~10자의 영어 또는 숫자 또는 한글만 입력");
                        $('.nicknameCondition').css('visibility','visible').css('color','orangered');
                        valid = false;
                    }

                })


            // 닉네임 중복 확인 
            function validNickname(){
                var nickname = $('#nickname').val();
                var isValid = validateNickname(nickname);

                if(isValid){
                    return nicknameCheck(nickname).then(function(result){
                        if(result === "NNNNY"){
                            $(".nicknameCondition").text("사용 가능한 닉네임 입니다.");
                            $(".nicknameCondition").css('visibility','visible').css('color','#0ca678');
                            return true;
                        } else {
                            $(".nicknameCondition").text("이미 존재하는 닉네임입니다.");
                            $('.nicknameCondition').css('visibility','visible').css('color','orangered');
                            return false;
                        }
                    }).catch(function() {
                        console.log("닉네임 중복체크용 ajax 통신 실패!");
                        return false;
                    });
                } else {
                    $(".nicknameCondition").text("2~10자의 영어 또는 숫자 또는 한글만 입력");
                    $('.nicknameCondition').css('visibility','visible').css('color','orangered');
                    return false;
                }
            }
            
            

                
            
            // 휴대폰 번호 유효성 검사
            function phoneCheck(){
                var phone = $("#phone").val();
                

                    if ( /^010-[0-9]{4}-[0-9]{4}$/.test( phone ) ) {
                        $(".phoneCondition").css("visibility", "hidden");
                        return true;
                    } else if(phone==""){
                        $(".phoneCondition").css("visibility", "hidden");
                        return true;
                    } else {
                        $(".phoneCondition").css("visibility", "visible");
                        return false;
                    }

            }

            // 버튼 활성화
            // function activateButton(){
            //     var name = nameCheck();
            //     var nickname = $("#nickname").val() == "" ? true : validNickname();
            //     var phone = $("#phone").val() == "" ? true : phoneCheck();

            //     if (name && nickname && phone) {
            //         $("#infoNextBtn").prop("disabled", false);
            //     } else {
            //         $("#infoNextBtn").prop("disabled", true);
            //     }
            // }

            async function activateButton(){
                var name = nameCheck();
                var nickname = $("#nickname").val() == "" ? true : await validNickname();
                var phone = $("#phone").val() == "" ? true : phoneCheck();

                if (name && nickname && phone) {
                    $("#infoNextBtn").prop("disabled", false);
                } else {
                    $("#infoNextBtn").prop("disabled", true);
                }
            }

            // 이벤트 등록
            $("#memName").on('input', function() {
                activateButton();
            });

            $('#nickname').on('input', function() {
                activateButton();
            });

            $('#phone').on('input', function() {
                activateButton();
            });

            $('#infoNextBtn').on('focus', function() {
                var memName = $("#memName").val();
                var nameRegEx = /^[가-힣]{2,15}$/;

                if(memName==""){
                    $(".nameCondition").text("이름을 입력해주세요.");
                    $(".nameCondition").css("visibility", "visible");
                    $("#memName").focus();
                } else if(!nameRegEx.test($("#memName").val())){
                    $(".nameCondition").text("이름을 정확히 입력해주세요.");
                    $(".nameCondition").css("visibility", "visible");
                    $("#memName").focus();
                } else{
                    $(".nameCondition").css("visibility", "hidden");
                }
                });
            });

        </script>

        
	
<!-- Footer -->
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>