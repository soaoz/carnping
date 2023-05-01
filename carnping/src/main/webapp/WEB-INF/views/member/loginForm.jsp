<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Carnping | 로그인</title>
<!--===============================================================================================-->	
<link rel="icon" type="image/png" href="resources/resources/login/images/icons/favicon.ico"/>
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="resources/login/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="resources/login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="resources/login/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="resources/login/vendor/animate/animate.css">
<!--===============================================================================================-->	
<link rel="stylesheet" type="text/css" href="resources/login/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="resources/login/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="resources/login/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
<link rel="stylesheet" type="text/css" href="resources/login/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="resources/login/css/util.css">
<link rel="stylesheet" type="text/css" href="resources/login/css/main.css">
<!--===============================================================================================-->

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
        #wrapper {
        background-color:#74E7BF;
            width: 100%;
            letter-spacing: 0.08em;
        }

		.input100:focus+.focus-input100+.symbol-input100 {
		    color: #d33f8d;
		    padding-left: 18px
		}
		
		.input-checkbox100 {
		    display: none
		}
		
		.label-checkbox100 {
		    font-size: 14px;
		    color: #999;
		    line-height: 1.2;
		    display: block;
		    position: relative;
		    padding-left: 26px;
		    cursor: pointer
		}
		
		.label-checkbox100::before {
		    content: "\f00c";
		    padding-left: 3px;
		    font-family: FontAwesome;
		    font-size: 13px;
		    color: transparent;
		    display: -webkit-box;
		    display: -webkit-flex;
		    display: -moz-box;
		    display: -ms-flexbox;
		    display: flex;
		    justify-content: center;
		    align-items: center;
		    position: absolute;
		    width: 18px;
		    height: 18px;
		    border-radius: 2px;
		    background: #fff;
		    border: 2px solid #d33f8d;
		    left: 0;
		    top: 48%;
		    -webkit-transform: translateY(-50%);
		    -moz-transform: translateY(-50%);
		    -ms-transform: translateY(-50%);
		    -o-transform: translateY(-50%);
		    transform: translateY(-50%)
		}
		

		.input-checkbox100:checked+.label-checkbox100::before {
		    color: #d33f8d
		}

        i{
            padding-right:10px;
        }
        
        #themeTags a{
            border-radius:50px;
        }

        [type=checkbox] {

            position: absolute;
            opacity: 0;
            width: 0;
            height: 0;

        }

        input[type=checkbox] + label { 
                display: inline-block; 
                cursor: pointer; 
        }

        #loginBtn{
            border-radius: 50px;
            border: 1px solid #0ca678;
            background-color: transparent;
            color:#0ca678;
        }

        #loginBtn:hover{
            background-color:white;
            transition: color .4s ease 0s,background-color .4s ease 0s
        }


        .logo-bg {
            background-color: #74E7BF;
            height: 100%;
            width: 50%;
            float: left;
        }

        .login-bg {
            background-color: rgb(255, 240, 156);
            height: 100%;
            width: 50%;
            float: right;
        }
        
        .login-content {
            height: 100%;
            width: 50%;
            float: right;
            padding: 50px;
        }

        .emailBtn{
            border-radius: 50px;
            padding: 10px 20px;
            background-color: #0ca678;
            font-size: 12px;
            color:white;
        }

        #emailBtn{
            font-size: 14px;
        }

        .modal button{
            border-color: #0ca678;
        }

        .modal button:disabled{
            
            color:#74E7BF;
        }

                #resendCode{
            color:gray;
            
        }
        #resendCode:hover{
            color: #0ca678;
            
        }

        .modal input::placeholder{
            color:lightgrey;
        }

        .modalInput{
            background-color: #fffbf0;
            width: 95%;
            border-radius:50px;
            height: 40px;
            padding: 10px 10px 10px 20px;
            border: 1px solid #e1e1e1;

        }

        .modal input:focus{
            border: 1px solid lightblue!important;

        }


        
        #findIdModal *{
            letter-spacing: 0em;
        }

        #resultTable td{
            padding: 10px 0px;
        }
</style>
</head>
<body>
	<!-- Header -->
	<jsp:include page="../common/header.jsp"/>
	
	<div id="wraaper" style="padding-bottom:122.5px; position:relative; height: 100%;" >
	<div class="logo-bg" style="position:absolute">
        <div align="center" style="position: relative; top:30%;">
            <img src="resources/img/logo_login_1.png" width="400px" alt="" style="position:relative; " >
        </div>
    </div>
    <div class="login-bg"style="position:absolute; right:0px;">
        <div align="center" style="position: relative; top:10%;">
        	
            <div class="limiter">
                <div class="container-login100" style="background-image: url('images/bg-01.jpg');">
                    <div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54" style="position: absolute;
    top: 50px;">
                        <form class="login100-form validate-form" action="login.me" method="POST">
                            <span class="login100-form-title p-b-49" style="color:#1C3053; letter-spacing: normal;" >
                                로그인
                            </span>
        
                            <div class="wrap-input100 validate-input m-b-23" data-validate = "Username is reauired">
                                <input class="input100" type="text" name="memId" id="memId" placeholder="아이디를 입력하세요." required style="padding-top: 20px;">
                                <span class="focus-input100" data-symbol="&#xf206;"></span>
                            </div>
        
                            <div class="wrap-input100 validate-input" data-validate="Password is required">
                                <input class="input100" type="password" name="memPwd" id="memPwd" placeholder="비밀번호를 입력하세요" required  style="padding-top: 20px;">
                                <span class="focus-input100" data-symbol="&#xf190;"></span>
                            </div>
                            <br>
                            <div class="contact100-form-checkbox m-l-4" style="padding-top: 10px; float:left;">
                                <input class="input-checkbox100" id="saveId" type="checkbox" name="remember-me">
                                <label class="label-checkbox100" for="saveId">
                                아이디 저장
                                </label>
                            </div>
                            
                            <div class="text-right p-t-8 p-b-31">
                                <a data-toggle="modal" data-target="#findIdModal">
                                    아이디
                                </a>
                            ㆍ
                                <a data-toggle="modal" data-target="#findPwdModal">
                                    비밀번호 찾기
                                </a>
                            </div>
                            
                            <br>
                            <div class="container-login100-form-btn" style="height:50px;">
                                <div class="wrap-login100-form-btn">
                                    <div class="login100-form-bgbtn"></div>
                                    <button type="submit" style="line-height: 50px;">
                                        로그인
                                    </button>
                                </div>
                            </div>
        
                            <div class="txt1 text-center p-t-54 p-b-20">
                                <span>
                                    다른 방법으로 로그인하기
                                </span>
                            </div>
        
                            <div class="flex-c-m">
                                <a href="#" class="login100-social-item bg1">
                                    <i class="fa fa-facebook" style="padding: unset;"></i>
                                </a>
        
                                <a href="#" class="login100-social-item bg2">
                                    <i class="fa fa-twitter" style="padding: unset;"></i>
                                </a>
        
                                <a href="#" class="login100-social-item bg3">
                                    <i class="fa fa-google" style="padding: unset;"></i>
                                </a>
                            </div>
        
                            <div class="flex-col-c p-t-50">
                                <span class="txt1 p-b-17">
                                    아직 카앤핑 회원이 아니신가요?
                                </span>
        
                                <a href="enrollForm.me" class="txt2">
                                    회원가입
                                </a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
                </div>
    </div>

    </div>
	
    <!--===============================================================================================-->
       <script src="resources/login/vendor/jquery/jquery-3.2.1.min.js"></script>
   <!--===============================================================================================-->
       <script src="resources/login/vendor/animsition/js/animsition.min.js"></script>
   <!--===============================================================================================-->
       <script src="resources/login/vendor/bootstrap/js/popper.js"></script>
       <script src="resources/login/vendor/bootstrap/js/bootstrap.min.js"></script>
   <!--===============================================================================================-->
       <script src="resources/login/vendor/select2/select2.min.js"></script>
   <!--===============================================================================================-->
       <script src="resources/login/vendor/daterangepicker/moment.min.js"></script>
       <script src="resources/login/vendor/daterangepicker/daterangepicker.js"></script>
   <!--===============================================================================================-->
       <script src="resources/login/vendor/countdowntime/countdowntime.js"></script>
   <!--===============================================================================================-->
       <script src="resources/login/js/main.js"></script>
	<!-- Footer -->
	<jsp:include page="../common/footer.jsp"/>

    <div class="modal" id="findIdModal" data-backdrop="static">
        <div class="modal-dialog">
            <div class="modal-content">
        
                <!-- Modal Header -->
                <div class="modal-header">
                <h4 class="modal-title" style="font-size:20px; padding: 5px 10px;"> 아이디 찾기 </h4>
                <button type="button" id="modalClose" class="close" data-dismiss="modal">&times;</button>
                </div>
        
                <!-- Modal body -->
                <div class="modal-body">
                    <div style="padding-bottom: 10px;">
                        <span id="modalEmail" style="padding-left: 5px;letter-spacing:unset; font-size:15px;"></span>
                        <span style="color:gray; font-size:15px;">본인확인 이메일 주소와 입력한 이메일 주소가 같아야 </span>
                        <p style="font-size:15px; padding-left: 5px; color:gray">인증번호를 받을 수 있습니다.</p>
                    </div>
                    <table style="margin:15px 5px; width: 100%; text-align:center;">
                        <tr>
                            <td width="10%;">이름</td>
                            <td width="65%;" >
                                <input class="modalInput" type="text" id="nameInput"  placeholder="이름 입력" name="memName" required onkeyup="noSpaceForm(this);" onchange="noSpaceForm(this);">
                            </td>
                            <td></td>
                        </tr>
                        <tr height="1px" >
                            <td></td>
                            <td style="padding: 5px 30px 5px 0px;">
                                <p class="nameCondition" style="visibility: hidden; margin:unset; color: orangered;">이름을 정확히 입력해주세요.</p>
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>이메일</td>
                            <td width="60%">
                                <input style="width: 95%"class="modalInput"type="email" id="emailInput" placeholder="이메일 입력" name="email" readonly required
                                onkeyup="noSpaceForm(this);" onchange="noSpaceForm(this);"> 
                            </td>
                            <td>
                                <button class="emailBtn" id="sendCodeBtn" type="button" onclick="findIdByEmailCheck();" disabled >인증 코드 발송</button>
                            </td>
                        </tr>

                        <tr height="1px" >
                            <td></td>
                            <td style="padding: 5px 0px;">
                                <p class="emailCondition" style="visibility: hidden; margin:unset; color: orangered;">이름을 정확히 입력해주세요.</p>
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <td colspan="3" ><hr></td>
                        </tr>
                        <tr class="findIdCode">
                            <td colspan="2" style="padding-top:20px;">
                            
                                <input type="text" id="emailVerify" placeholder="인증 코드 입력" 
                                class="modalInput" 
                                onkeyup="noSpaceForm(this);" onchange="noSpaceForm(this);" required disabled>
                                <span class="timer"
                                style="    visibility: hidden;
                                position: absolute;
                                top: 318px;
                                right: 160px;
                                font-size: 14px;
                                color: orangered;">12:30</span>

                            </td>
                            <td>
                                <button class="emailBtn" id="checkCodeBtn" type="button" onclick="verifyCode();" disabled>인증 코드 확인</button>

                            </td>
                            
                        </tr>
                        <tr class="findIdCode">
                            <td colspan="2" style="text-align: start; padding-top:5px;">
                                <span class="resendInfo" style="color:grey;font-size:13px; padding-left:20px;">인증코드를 받지 못하셨나요?</span>

                            </td>
                            <td>
                                <a id="resendCode" href="#" onclick="resend(); return false;" 
                                style="
                                font-size:13px;
                                padding-top: 5px;
                                cursor: pointer;">[인증코드 재발송]</a>
                            </td>
                        </tr>
                    </table>
                    <table id="resultTable" style="margin:15px 5px; width: 100%; color:gray; font-size:15px;display:none;">
                        <tr >
                            <td colspan="3" style="color:#0ca678; padding:unset;" >
                                다음 정보로 가입된 아이디입니다.
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3"style="padding: unset;">
                                <hr >
                            </td>
                        </tr>
                        <tr style="color:black; line-height: 35px;">
                            <td rowspan="3" style="width: 110px; height: 110px; padding:unset;">
                                <img id="resultImg" src="" alt=""></td>
                            <td style="display: inline; padding-right: 30px; padding-left: 10px;" >
                                이름 &nbsp;&nbsp;&nbsp;:
                            </td>
                            <td  id="modalMemName" style="display: inline;"></td>
                        </tr>
                        <tr style="color:black; line-height: 35px;">
                            <td style="display: inline; padding-right: 30px; padding-left: 10px;" >
                                이메일 :
                            </td>
                            <td id="resultEmail" style="display: inline;"></td>
                        </tr>
                        <tr style="color:black; line-height: 35px;">
                            <td style="display: inline; padding-right: 30px; padding-left: 10px;" >
                                아이디 :
                            </td>
                            <td id="modalMemIdDate" style="display: inline;">
                            </td>
                        </tr>
                    </table>
                </div>
    
        
                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="button" onclick="verifiedEmail();" id="verifySubmit"style="background-color: #0ca678; border-color: #0ca678;" class="btn btn-danger" data-dismiss="modal" disabled>확인</button>
                </div>
        
            </div>
        </div>
    </div>

    <div class="modal" id="findPwdModal" data-backdrop="static">
        <div class="modal-dialog">
            <div class="modal-content">
        
                <!-- Modal Header -->
                <div class="modal-header">
                <h4 class="modal-title" style="font-size:20px; padding: 5px 10px;"> 비밀번호 찾기 </h4>
                <button type="button" id="modalClose" class="close" data-dismiss="modal">&times;</button>
                </div>
        
                <!-- Modal body -->
                <div class="modal-body">
                    <div style="padding-bottom: 10px;">
                        <span id="modalEmail" style="padding-left: 5px;letter-spacing:unset; font-size:15px;"></span>
                        <span style="color:gray; font-size:15px;">아이디와 이름, 본인확인 이메일 주소를 정확히 입력해야 </span>
                        <p style="font-size:15px; padding-left: 5px; color:gray">인증번호를 받을 수 있습니다.</p>
                    </div>
                    <table style="margin:15px 5px; width: 100%; text-align:center;">
                        <tr>
                            <td width="10%;">아이디</td>
                            <td width="65%;" >
                                <input class="modalInput" type="text" id="nameInput"  placeholder="아이디 입력" name="memId" required onkeyup="noSpaceForm(this);" onchange="noSpaceForm(this);">
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <td width="10%;">이름</td>
                            <td width="65%;" >
                                <input class="modalInput" type="text" id="nameInput"  placeholder="이름 입력" name="memName" required onkeyup="noSpaceForm(this);" onchange="noSpaceForm(this);">
                            </td>
                            <td></td>
                        </tr>
                        <tr height="1px" >
                            <td></td>
                            <td style="padding: 5px 30px 5px 0px;">
                                <p class="nameCondition" style="visibility: hidden; margin:unset; color: orangered;">이름을 정확히 입력해주세요.</p>
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>이메일</td>
                            <td width="60%">
                                <input style="width: 95%"class="modalInput"type="email" id="emailInput" placeholder="이메일 입력" name="email" readonly required
                                onkeyup="noSpaceForm(this);" onchange="noSpaceForm(this);"> 
                            </td>
                            <td>
                                <button class="emailBtn" id="sendCodeBtn" type="button" onclick="findIdByEmailCheck();" disabled >인증 코드 발송</button>
                            </td>
                        </tr>

                        <tr height="1px" >
                            <td></td>
                            <td style="padding: 5px 0px;">
                                <p class="emailCondition" style="visibility: hidden; margin:unset; color: orangered;">이름을 정확히 입력해주세요.</p>
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <td colspan="3" ><hr></td>
                        </tr>
                        <tr class="findIdCode">
                            <td colspan="2" style="padding-top:20px;">
                            
                                <input type="text" id="emailVerify" placeholder="인증 코드 입력" 
                                class="modalInput" 
                                onkeyup="noSpaceForm(this);" onchange="noSpaceForm(this);" required disabled>
                                <span class="timer"
                                style="    visibility: hidden;
                                position: absolute;
                                top: 318px;
                                right: 160px;
                                font-size: 14px;
                                color: orangered;">12:30</span>

                            </td>
                            <td>
                                <button class="emailBtn" id="checkCodeBtn" type="button" onclick="verifyCode();" disabled>인증 코드 확인</button>

                            </td>
                            
                        </tr>
                        <tr class="findIdCode">
                            <td colspan="2" style="text-align: start; padding-top:5px;">
                                <span class="resendInfo" style="color:grey;font-size:13px; padding-left:20px;">인증코드를 받지 못하셨나요?</span>

                            </td>
                            <td>
                                <a id="resendCode" href="#" onclick="resend(); return false;" 
                                style="
                                font-size:13px;
                                padding-top: 5px;
                                cursor: pointer;">[인증코드 재발송]</a>
                            </td>
                        </tr>
                    </table>
                    <table id="resultTable" style="margin:15px 5px; width: 100%; color:gray; font-size:15px;display:none;">
                        <tr >
                            <td colspan="3" style="color:#0ca678; padding:unset;" >
                                다음 정보로 가입된 아이디입니다.
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3"style="padding: unset;">
                                <hr >
                            </td>
                        </tr>
                        <tr style="color:black; line-height: 35px;">
                            <td rowspan="3" style="width: 110px; height: 110px; padding:unset;">
                                <img id="resultImg" src="" alt=""></td>
                            <td style="display: inline; padding-right: 30px; padding-left: 10px;" >
                                이름 &nbsp;&nbsp;&nbsp;:
                            </td>
                            <td  id="modalMemName" style="display: inline;"></td>
                        </tr>
                        <tr style="color:black; line-height: 35px;">
                            <td style="display: inline; padding-right: 30px; padding-left: 10px;" >
                                이메일 :
                            </td>
                            <td id="resultEmail" style="display: inline;"></td>
                        </tr>
                        <tr style="color:black; line-height: 35px;">
                            <td style="display: inline; padding-right: 30px; padding-left: 10px;" >
                                아이디 :
                            </td>
                            <td id="modalMemIdDate" style="display: inline;">
                            </td>
                        </tr>
                    </table>
                </div>
    
        
                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="button" onclick="verifiedEmail();" id="verifySubmit"style="background-color: #0ca678; border-color: #0ca678;" class="btn btn-danger" data-dismiss="modal" disabled>확인</button>
                </div>
        
            </div>
        </div>
    </div>
	<script>
        
        // 아이디 저장
            // 쿠키 저장하기 
            // setCookie => saveid함수에서 넘겨준 시간이 현재시간과 비교해서 쿠키를 생성하고 지워주는 역할
            function setCookie(cookieName, value, exdays) {
                var exdate = new Date();
                exdate.setDate(exdate.getDate() + exdays);
                var cookieValue = escape(value)
                        + ((exdays == null) ? "" : "; expires=" + exdate.toGMTString());
                document.cookie = cookieName + "=" + cookieValue;
            }
        
            // 쿠키 삭제
            function deleteCookie(cookieName) {
                var expireDate = new Date();
                expireDate.setDate(expireDate.getDate() - 1);
                document.cookie = cookieName + "= " + "; expires="
                        + expireDate.toGMTString();
            }
            
            // 쿠키 가져오기
            function getCookie(cookieName) {
                cookieName = cookieName + '=';
                var cookieData = document.cookie;
                var start = cookieData.indexOf(cookieName);
                var cookieValue = '';
                if (start != -1) { // 쿠키가 존재하면
                    start += cookieName.length;
                    var end = cookieData.indexOf(';', start);
                    if (end == -1) // 쿠키 값의 마지막 위치 인덱스 번호 설정 
                        end = cookieData.length;
                        console.log("end위치  : " + end);
                    cookieValue = cookieData.substring(start, end);
                }
                return unescape(cookieValue);
            }

            $(function(){
                // 저장된 쿠키값을 가져와서 ID 칸에 넣어준다. 없으면 공백으로 들어감.
                var key = getCookie("key");
                $("#memId").val(key); 
                
                // 그 전에 ID를 저장해서 처음 페이지 로딩 시, 입력 칸에 저장된 ID가 표시된 상태라면,
                if($("#memId").val() != ""){ 
                    $("#saveId").attr("checked", true); // ID 저장하기를 체크 상태로 두기.
                }
                
                $("#saveId").change(function(){ // 체크박스에 변화가 있다면,
                    if($("#saveId").is(":checked")){ // ID 저장하기 체크했을 때,
                        setCookie("key", $("#memId").val(), 7); // 7일 동안 쿠키 보관
                    }else{ // ID 저장하기 체크 해제 시,
                        deleteCookie("key");
                    }
                });
                
                // ID 저장하기를 체크한 상태에서 ID를 입력하는 경우, 이럴 때도 쿠키 저장.
                $("#memId").keyup(function(){ // ID 입력 칸에 ID를 입력할 때,
                    if($("#checkId").is(":checked")){ // ID 저장하기를 체크한 상태라면,
                        setCookie("key", $("#memId").val(), 7); // 7일 동안 쿠키 보관
                    }
                });
            });

        // 이름 필수 입력
        $('#emailInput').on('focus', function () {
                var memName = $("#nameInput").val();
                var nameRegEx = /^[가-힣]{2,15}$/;
                if(memName==""){
                    $(".nameCondition").text("이름을 입력해주세요.");
                    $(".nameCondition").css("visibility", "visible");
                    $("#nameInput").focus();
                }
                else if(!nameRegEx.test($("#nameInput").val())){
                    $(".nameCondition").text("이름을 정확히 입력해주세요.");
                    $(".nameCondition").css("visibility", "visible");
                    $("#nameInput").focus();
                } else{
                    $(".nameCondition").css("visibility", "hidden");
                    $("#emailInput").prop('readonly', false);
                }
            });
    

            // 이메일 유효성 검사 
        function validateEmail(email) {
            var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,3}$/;
            return emailPattern.test(email);
        }


        $('#emailInput').on('input', function () {

            var email = $('#emailInput').val();
            var isValid = validateEmail(email);
            if(isValid){
                $('.emailCondition').css('visibility','hidden');
                $('#sendCodeBtn').prop('disabled', false);
            } else{
                $(".emailCondition").text("올바른 이메일 형식을 입력해주세요.");
                $('.emailCondition').css('visibility','visible');
                $('#sendCodeBtn').prop('disabled', true);
            }
        });



        function findIdByEmailCheck(){
            var $memName = $('#nameInput').val();
            var $email = $('#emailInput').val();
            $.ajax({
                url:"findIdCheck.me",
                data: { memName : $memName, email : $email },
                success: function(result){
                    console.log(result);
                    if(result === "NNNNY"){
                       
                        $(".emailCondition").html("입력하신 정보로 가입된 아이디가 존재하지 않습니다.").css("visibility","visible").css("font-size","13px");
                        $('#emailVerify').prop('disabled',true);
                        $('#checkCodeBtn').prop('disabled', true);
                    } else{
                        $(".emailCondition").text("해당 이메일로 인증코드가 발송되었습니다.").css("visibility","visible").css("color","#0ca678").css("font-size","13px");
                        $('#emailVerify').prop('disabled',false);
                        sendCode();
                        $('#checkCodeBtn').prop('disabled', false);
                    }
                }, error:function(request,status,error){
                    console.log("ajax통신실패!");
                 alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
                }

            });
        }








   
            var realCode = "";
            function sendCode(){
                $('.timer').css('visibility', 'visible');


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
                
            };

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

            var findId = "";
            var enrollDate = "";
            function verifyCode(){
                var memName = $('#nameInput').val();
                var email = $('#emailInput').val();


                // 타이머 시간 초과 확인
                if(iscodeValid()){
                    let codeInput = $("#emailVerify").val();
                    // 인증코드 일치성 검사 
                    // 통과시
                    if(realCode == codeInput || codeInput == 000000){
                        $.ajax({
                            url : "findIdByEmail.me",
                            data : { memName : memName , email : email},
                            success : function(result){
                                $("#resultImg").attr("src",result.memImgChange);
                                $("#modalMemName").text(memName);
                                $("#resultEmail").text(email);
                                $("#modalMemIdDate").html(result.memId + " ( " + result.enrollDate +" 가입)");
                                $(".findIdCode").hide();
                                $("#resultTable").show();
                                
                            },
                            error : function(){
                                console.log('ajax 통신 실패!');
                            }


                        })
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

    </script>
</body>
</html>