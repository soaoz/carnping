<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
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
      
<!-- 	Css Styles--> 
    <link rel="stylesheet" href="resources/member/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="resources/member/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="resources/member/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="resources/member/css/flaticon.css" type="text/css">
    <link rel="stylesheet" href="resources/member/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="resources/member/css/barfiller.css" type="text/css">
    <link rel="stylesheet" href="resources/member/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="resources/member/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="resources/member/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="resources/member/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="resources/member/css/style.css" type="text/css"> 
        
        <!-- <link rel="stylesheet" href="resources/member/bootstrap/css/bootstrap.min.css"> -->
        <link rel="stylesheet" href="resources/member/assets/css/style.css">
        
    <link rel="stylesheet" href="resources/member/style.css">
	<style>
    #fake{
	border-left: none;
	border-right: none;
	border-top: none;
    }
    .myPage_menu{
        border : 1px solid black;
        border-left: none;
        border-right: none;
        width: 200px;
        height: 60px;
        line-height: 60px;
    }
    .menu{
        color: black;

    }
    .menu:hover{
        color: gray;
    }

    .space{
        height: 80px;
        width: 1460px;
        
    }
    .btn-primary {
        color: #FFF;
        background-color: #0CA678 !important;
        border-color: #0CA678 !important;
        border-radius: 1px;
        padding: 10px 20px;
        font-weight: 600;
    }
    .btn-primary:hover, .btn-primary:focus, .btn-primary:active, .btn-primary.active,.btn-primary:active:focus, .open > .dropdown-toggle.btn-primary {
        color: #0CA678 !important;
        background-color: #313538;
        border-color: #282829;
        font-weight: 600;
    }
    .profiel-container .picture-container{
    position: relative;
    cursor: pointer;
    text-align: center;
	}
	.profiel-container .picture{
	    width: 220px;
	    height: 230px;
	    background-color: #808080;
	    border: 4px solid #CCC;
	    color: #FFF;
	    border-radius: 50%;
	    margin: 35px auto;
	    overflow: hidden;
	    transition: all 0.2s;
	    -webkit-transition: all 0.2s;
	}
	
    
</style>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	 <!-- Header Section Begin -->
   
    <!-- Header Section End -->
    <!-- Filter Begin -->
    <div class="space"></div> 
    <div class="filter nice-scroll">
    
        <div class="filter__title">
            <h5><i class="fa fa fa-user"></i>마이페이지</h5>
        </div>
        <div class="myPage_menu" id="fake">
         </div>

        <div class="myPage_menu">
            <a href="./profile.html" class="menu">회원정보 </a>
        </div>
        <div class="myPage_menu">
           <a href="" class="menu"> 내 활동 </a>
        </div>
        <div class="myPage_menu">
            <a href="" class="menu">좋아요 목록</a>
        </div>
        <div class="myPage_menu">
            <a href="" class="menu">문의하기</a>
        </div>
        <div class="myPage_menu">
            <a href="" class="menu">로그아웃</a>
            
        </div>

    </div>
    <!-- Filter End -->

        <!-- property area -->
        <div class="content-area user-profiel" style="background-color: #FCFCFC;">
            <div class="container">   
                <div class="row">
               
                    <div class="col-sm-10 col-sm-offset-1 profiel-container">

                        <form action="" method="">
                            <div class="profiel-header">
                                <h3>
                                    <br>
                                    <b>회원 정보</b> MY PROFILE <br>
                                    <br>
                                    <small></small>
                                </h3>
                                <hr>
                            </div>

                            <div class="clear">
                                <div class="col-sm-3 col-sm-offset-1">
                                    <div class="picture-container">
                                        <div class="picture" >
                                            <img src="" class="picture-src" id="wizardPicturePreview" title="" style="max-width: 100%;"/>
                                            <input type="file" id="wizard-picture">
                                        </div>
                                        <h6>프로필 사진</h6>
                                    </div>
                                </div>

                                <div class="col-sm-5 padding-top-25">

                                    <div class="form-group">
                                        <label>이름</label>
                                        <input name="name" type="text" class="form-control" placeholder="">
                                    </div>
                                    
                                    <div class="form-group checkdiv">
                                        <label>닉네임</label>
                                        <input name="nickname" type="text" class="form-control" placeholder="" id="nickName">
                                        <input type='button' id="idCheck" class='btn btn-finish btn-primary check' name='' value='중복확인' />

                                    </div>
                                
                                    <div class="form-group checkdiv">
                                        <label>이메일</label>
                                        <input name="email" type="email" class="form-control" placeholder="andrew@email.com">
                                        <input type='button' id="emailCheck" class='btn btn-finish btn-primary check' name='' value='중복확인' />
                                    </div> 
                                    <div class="form-group checkdiv">
                                        <label>연락처</label>
                                        <input name="Password" type="password" class="form-control">
                                        <input type='button' id="phoneCheck" class='btn btn-finish btn-primary check' name='' value='인증하기' />
                                    </div>
                                    <div class="form-group">
                                        <label>비밀번호</label>
                                        <input name="Password" type="password" class="form-control">
                                    </div>
                                    <div class="form-group checkdiv">
                                        <label>비밀번호 확인</label>
                                        <input type="password" class="form-control">
                                        <input type='button' id="phoneCheck" class='btn btn-finish btn-primary check' name='' value='변경하기' />
                                    </div>
                                
                                </div>
                            </div>

                    
                            <div class="col-sm-5 col-sm-offset-1">
                                <br>
                                <input type='button' class='btn btn-finish btn-primary' name='finish' value='완료' />
                            </div>
                            <br>
                    </form>

                </div>
            </div><!-- end row -->

        </div>
    </div>


	<jsp:include page="../common/footer.jsp"/>
	
	    <script src="/resources/member/js/vendor/modernizr-2.6.2.min.js"></script>
        <script src="/resources/member/js/jquery-1.10.2.min.js"></script>
        <script src="/resources/member/js/bootstrap.min.js"></script>
        <script src="/resources/member/js/bootstrap-select.min.js"></script>
        <script src="/resources/member/js/bootstrap-hover-dropdown.js"></script>
        <script src="/resources/member/js/easypiechart.min.js"></script>
        <script src="/resources/member/js/jquery.easypiechart.min.js"></script>
        <script src="/resources/member/js/owl.carousel.min.js"></script>
        <script src="/resources/member/js/wow.js"></script>
        <script src="/resources/member/js/icheck.min.js"></script>

        <script src="/resources/member/js/price-range.js"></script> 
        <script src="/resources/member/js/jquery.bootstrap.wizard.js" type="text/javascript"></script>
        <script src="/resources/member/js/jquery.validate.min.js"></script>
        <script src="/resources/member/js/wizard.js"></script>

        <!-- <script src="/resources/member/js/main.js"></script> -->
</body>
</html>