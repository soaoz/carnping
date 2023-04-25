<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html> 
<html class="no-js"> 
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>GARO ESTATE | property User profile Page </title>
        <meta name="description" content="GARO is a real-estate template">
        <meta name="author" content="Kimarotec">
        <meta name="keyword" content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>

        <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->

    <!-- Css Styles -->
<!--     <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/flaticon.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/barfiller.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css"> -->
        
<!--         <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/style.css"> -->

	    <style>
	@font-face {
	     font-family: 'S-CoreDream-3Light';
	     src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-3Light.woff') format('woff');
	     font-weight: 900px;
	     font-style: normal;
	}
	        .myPage-header-area{
	            width: 100%;
	            height: 123px;
	            background-color: #b3d9b1;
	        }
	        .filter{
	            position: inherit !important;
	            width: 270px !important;
	            height: 100% !important;   
	            padding: 30px 34px 30px 30px !important;
	            /* overflow-y: auto; */
	            -webkit-box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.1) !important;
	            box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.1) !important;
	            /* z-index: 99; */
	            padding-top: 140px !important;
	            float: left !important;
	        }
	        .master-area{
	            width: 100%;
	            height: 100%;
	        }
	        .profiel-container {
	            padding: 10px 0px !important;
	            border: 2px solid #b3d9b1 !important;
	            transition: all 0.2s ease 0s !important;
	            background-color: white !important;
	            border-radius: 20px !important;
			}
	        .filter__title h5 i {
	            margin-right: 5px;
	            color : #b3d9b1;
	        }
	        .filter__title h5{
	            font-family: 'S-CoreDream-3Light';
	            font-weight: 700 ;
	            margin-right: 5px;
	            color : #1C3053 !important;
	            font-size: 25px !important;
	        }
			.myPage_menu {
	            border: 2px solid #b3d9b1 !important;
	            border-left: none !important;
	            border-right: none !important;
	            border-top: none !important;
	            width: 200px !important;
	            height: 60px !important;
	            line-height: 60px !important;
	        }
	            
			.menu{
				font-family: 'S-CoreDream-3Light';
				color : #7ea67c !important;
			}
			.menu:hover {
				color : #1C3053 !important;
				font-weight: 700 !important;
	
			}
	    @font-face {
		    font-family: 'Dovemayo_gothic';
		    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2302@1.1/Dovemayo_gothic.woff2') format('woff2');
		    font-weight: normal;
		    font-style: normal;
		}
		
		td{
			font-family: 'Dovemayo_gothic';
			font-size: 16px;
			letter-spacing :0.5px;
		}
		.ckbox{
			border:1px soild gray !important;
		}
		@font-face {
		     font-family: 'S-CoreDream-3Light';
		     src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-3Light.woff') format('woff');
		     font-weight: 900px;
		     font-style: normal;
		}
        .myPage-header-area{
            width: 100%;
            height: 123px;
            background-color: #b3d9b1;
        }
        .filter{
            position: inherit !important;
            width: 350px !important;
            height: 100% !important;   
            padding: 30px 34px 30px 70px !important;
            /* overflow-y: auto; */
            -webkit-box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.1) !important;
            box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.1) !important;
            /* z-index: 99; */
            padding-top: 140px !important;
            float: left !important;
        }
        .master-area{
            width: 100%;
            height: 100%;
           
        }
        .filter__title h5 i {
            margin-right: 5px;
            color : #1C3053;
        }
        .filter__title h5{
            font-family: 'S-CoreDream-3Light';
            font-weight: 700 ;
            margin-right: 5px;
            color : #1C3053 !important;
            font-size: 25px !important;
        }
		.myPage_menu {
            border: 2px solid #b3d9b1 !important;
            border-left: none !important;
            border-right: none !important;
            border-top: none !important;
            width: 200px !important;
            height: 60px !important;
            line-height: 60px !important;
        }
            
		.menu{
			display: inline-block;
			width: 100%;
			height: 100%;
			font-family: 'S-CoreDream-3Light';
			font-size : 15px !important;
			color : #7ea67c !important;
		}
		.menu:hover {
			font-size : 17px !important;
			color : #1C3053 !important;
			font-weight : bold !important;
			
		}
		[type=checkbox] {
		  position: static !important;
		  opacity: 1 !important;
		  width: auto !important;
		  height: auto !important;
		}
		.title{
			color : #1C3053;
		}
	
	    </style>
    </head>
    <body>
<jsp:include page="../common/header.jsp"/>   
<jsp:include page="../common/menubar.jsp"/>
<div class="myPage-header-area">
<!--     헤더 빈공간  -->
</div>
<div class="master-area">
   
    <!-- Filter Begin -->
     <div class="filter nice-scroll">

				<div class="filter__title">
            <h5><i class="fa-sharp fa-solid fa-house"></i>마이페이지</h5>
        </div>
        <div class="myPage_menu" id="fake">
         </div>

        <div class="myPage_menu">
            <a href="myPageMainSelect.me" class="menu"><i class="fa fa fa-user"></i> 회원정보 </a>
        </div>
        <div class="myPage_menu">
           <a href="myCarbakList.me" class="menu"><i class="fa-sharp fa-solid fa-location-dot"></i> 나의 차박지 </a>
        </div>
        <div class="myPage_menu">
           <a href="myAlarmList.me" class="menu"><i class="fa-sharp fa-solid fa-bookmark"></i> 나의 활동 </a>
        </div>
        <div class="myPage_menu">
            <a href="myLikeList.me" class="menu"><i class="fa-sharp fa-solid fa-heart"></i> 좋아요</a>
        </div>
        <div class="myPage_menu">
            <a href="myQuestionList.me" class="menu"><i class="fa-solid fa-circle-question"></i> 문의하기</a>
        </div>
        <div class="myPage_menu">
            <a href="logoutPage.me" class="	menu"><i class="fa-solid fa-right-from-bracket"></i> 로그아웃</a>
        </div>
        <div class="myPage_menu">
            <a href="unregister.me" class="menu"><i class="fa-solid fa-circle-xmark"></i> 회원탈퇴</a>
        </div>

    </div>
    <!-- Filter End -->

    <!-- property area Begin -->
    <div class="content-area user-profiel" style="background-color: #FCFCFC;">&nbsp;
        <div class="container">  
            <div class="space"></div> 
            <div class="row">
                <div class="col-sm-10 col-sm-offset-1 profiel-container">


                    <form action="userPwdCheck.me" method="post">

                        <div class="profiel-header">
                            <h3>
                                <br>
                                <b>회원정보</b> YOUR PROFILE <br><br>
                                <small><b>박소영 님의 정보를 안전하게 보호하기 위하여
                                    비밀번호를 다시 한번 확인합니다.
                                </b></small>
                                
                            </h3>
                            <hr>
                        </div>

                        <div class="clear">

                            <div class="col-sm-10 col-sm-offset-1">
                                <br>
                                <div class="form-group">
                                    <br>
                                    <label>비밀번호 확인<small></small></label>
                                    <input type="password" class="form-control" name="userPwd">
                                </div>
                            </div>
                            <div class="col-sm-10 col-sm-offset-1">
                            	<br><br>
                                <input type='submit' class='btn btn-finish btn-primary pull-right' name='update' value='확인'  onclick="location.href='myProfileUpdate.me';"/>
                                <br><br>
                            
                            </div>
                            
                        </div>

                
                        
                        
                </form>

            </div>
        </div><!-- end row -->

    </div>
    </div>
    <!-- property area End-->
</div>




<!-- 
        <script src="assets/js/vendor/modernizr-2.6.2.min.js"></script>
        <script src="assets/js//jquery-1.10.2.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/bootstrap-select.min.js"></script>
        <script src="assets/js/bootstrap-hover-dropdown.js"></script>
        <script src="assets/js/easypiechart.min.js"></script>
        <script src="assets/js/jquery.easypiechart.min.js"></script>
        <script src="assets/js/owl.carousel.min.js"></script>
        <script src="assets/js/wow.js"></script>
        <script src="assets/js/icheck.min.js"></script>

        <script src="assets/js/price-range.js"></script> 
        <script src="assets/js/jquery.bootstrap.wizard.js" type="text/javascript"></script>
        <script src="assets/js/jquery.validate.min.js"></script>
        <script src="assets/js/wizard.js"></script>

        <script src="assets/js/main.js"></script> -->


</body>
</html>