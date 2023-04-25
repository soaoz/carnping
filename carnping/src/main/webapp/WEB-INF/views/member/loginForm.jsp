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
		
		label.label-checkbox100 {
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
                        <form class="login100-form validate-form">
                            <span class="login100-form-title p-b-49" style="color:#1C3053; letter-spacing: normal;" >
                                로그인
                            </span>
        
                            <div class="wrap-input100 validate-input m-b-23" data-validate = "Username is reauired">
                                <input class="input100" type="text" name="memId" placeholder="아이디를 입력하세요." required style="padding-top: 20px;">
                                <span class="focus-input100" data-symbol="&#xf206;"></span>
                            </div>
        
                            <div class="wrap-input100 validate-input" data-validate="Password is required">
                                <input class="input100" type="password" name="memPwd" placeholder="비밀번호를 입력하세요" required  style="padding-top: 20px;">
                                <span class="focus-input100" data-symbol="&#xf190;"></span>
                            </div>
                            <br>
                            <div class="contact100-form-checkbox m-l-4" style="padding-top: 10px; float:left;">
                                <input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
                                <label class="label-checkbox100" for="ckb1">
                                아이디 저장
                                </label>
                            </div>
                            
                            <div class="text-right p-t-8 p-b-31">
                                <a href="#">
                                    아이디
                                </a>
                            ㆍ
                                <a href="#">
                                    비밀번호 찾기
                                </a>
                            </div>
                            
                            <br>
                            <div class="container-login100-form-btn" style="height:50px;">
                                <div class="wrap-login100-form-btn">
                                    <div class="login100-form-bgbtn"></div>
                                    <button class="login.me" style="line-height: 50px;">
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
    <!-- 
    <div class="login-content" style="position:absolute">
     
    </div>
    
    


    
    <div id="dropDownSelect1"></div>
     -->
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
	
</body>
</html>