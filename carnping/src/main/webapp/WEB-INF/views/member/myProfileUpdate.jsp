<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html class="no-js"> 
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Carnping | 마이페이지 </title>
        <meta name="description" content="GARO is a real-estate template">
        <meta name="author" content="Kimarotec">
        <meta name="keyword" content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>

        <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->

    <!-- Css Styles -->
<!--     <link rel="stylesheet" href="resources/member/css/bootstrap.min.css" type="text/css">
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
        
    <link rel="stylesheet" href="resources/member/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/member/assets/css/style.css"> 	-->
 
 
 	<style type="text/css">
    .finish-btn{
	    color: #0CA678 !important;
	    background-color: #FFF !important;
	    border-color: #0CA678 !important;
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
		
		.menu .active{
			color : red;
		}
		#nickNameCheckResult{
			width: auto !important;
		  	height: 20px !important;
		}	
        .btn-primary.disabled, .btn-primary[disabled], fieldset[disabled] .btn-primary, .btn-primary.disabled:hover, .btn-primary[disabled]:hover, fieldset[disabled] .btn-primary:hover, .btn-primary.disabled:focus, .btn-primary[disabled]:focus, fieldset[disabled] .btn-primary:focus, .btn-primary.disabled:active, .btn-primary[disabled]:active, fieldset[disabled] .btn-primary:active, .btn-primary.disabled.active, .btn-primary.active[disabled], fieldset[disabled] .btn-primary.active {
            background-color: #595959 !important;
            border-color: #595959 !important;
            color: #2c2c2c !important;
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

        <!-- property area -->

        <div class="content-area user-profiel" style="background-color: #FCFCFC;">&nbsp;
            <div class="container">   
                <div class="row">
                    <div class="space"></div> 
                    <div class="col-sm-10 col-sm-offset-1 profiel-container">

                        <form action="updateProfile.me" method="post" id="enrollForm" enctype="multipart/form-data">
                            <div class="profiel-header">
                                <h3>
                                    <br>
                                    <b class="title">회원 정보 </b> MY PROFILE <br>
                                    <br>
                                    <small></small>
                                </h3>
                                <hr>
                            </div>

                            <div class="clear">
                                <div class="col-sm-3 col-sm-offset-1">
                                    <div class="picture-container">
                                        <div class="picture" >
                                            <img src="${m.memImgChange}" class="picture-src" id="wizardPicturePreview" title="" style="max-width: 100%;"/>
                                            <input type="file" id="wizard-picture" name="reupfile">
                                        </div>
                                        <label>프로필 사진</label>
                                    </div>
                                </div>

                                

                                <div class="col-sm-5 padding-top-25">

                                    <div class="form-group">
                                        <label>이름</label>
                                        <input name="name" type="text" class="form-control" value="${loginUser.memName}" readonly>
                                    </div>
                                    
                                    <div class="form-group checkdiv">
                                        <label>닉네임</label>
                                        <input name="nickName" type="text" class="form-control" placeholder="" id="nickName" value="${m.nickName}">
                                        <input type='button' id="nickUpdate" class='btn btn-finish btn-primary check' name='' value='변경하기' />
                                        <div id="nickNameCheckResult"  style="font-size: 0.8em; display:none"></div>

                                    </div>
                                    
                                    <div class="form-group checkdiv">
                                        <label>이메일</label>
                                        <input name="email" type="email" class="form-control" placeholder="andrew@email.com" value="${m.email}">
                                        <input type='button' id="emailCheck" class='btn btn-finish btn-primary check' name='' value='중복확인' />
                                    </div> 
                                    <div class="form-group checkdiv">
                                        <label>연락처</label>
                                        <input name="phone" type="text" class="form-control" value="${m.phone}">
                                        <input type='button' id="" class='btn btn-finish btn-primary check' name='' value='인증하기' />
                                    </div>
                                    <div class="form-group">
                                        <label>비밀번호</label>
                                        <input name="password1" id="password1" type="password" class="form-control">
                                        <div id="passRegResult"></div>
                                    </div>
                                    <div class="form-group checkdiv">
                                        <label>비밀번호 확인</label>
                                        <input name="password2" id="password2" type="password" class="form-control">
                                        <div id="passwordEquls"  style=" display:none"></div>
                                        <input type='button' id="passwordUpdate" class='btn btn-finish btn-primary check' name='' value='변경하기' />
                                    </div>
                                
                                </div>
                            </div>
                            <script>


         //닉네임 변경시 아래의 div에 중복확인 메세지 출력--------------------
		$(function(){
			const $nickInput = $("#nickName");
			const $nickUpdate = $("#nickUpdate");
			
			$nickInput.keyup(function(){ //띄어지는순간 계쏙 실행
				console.log($nickInput.val());
			
				if($nickInput.val().length >= 3){
                    $.ajax({
                        url : "nicknameCheck.me",
                        data:{nickname:$nickInput.val()},
                        success:function(result){
                            if(result == "NNNNN"){ // 사용불가능
                                $("#nickNameCheckResult").show();
                                $("#nickNameCheckResult").css("color", "red").text("중복된 닉네임이 존재합니다. 다시 입력해주세요.");
                                $nickUpdate.prop("disabled", true);
                            } else { // 사용가능
                                // => 초록색 메세지 (사용가능) 출력
                                $("#nickNameCheckResult").show();
                                $("#nickNameCheckResult").css("color", "green").text("사용가능한 닉네임입니다!");
                                $nickUpdate.prop("disabled", false);
                            }
                        }, error:function(){
                            console.log("ajax 통신 실패!");
                        }
                    });
                } else {
                    $("#nickNameCheckResult").hide();
                    $nickUpdate.prop("disabled", true);
                    }
                }) 
		})
                                
                            </script>

                    
                            <div class="col-sm-5 col-sm-offset-1" style="text-align: right;">
                                <br><br>
                                <!-- <input  type='button' class='btn btn-finish btn-primary finish-btn' name='finish' value='회원 정보 수정 완료' /> -->
                                <button type="submit" class='btn btn-primary me-2'>회원 정보 수정 완료</button> &nbsp;&nbsp;&nbsp;&nbsp;
                                <br><br><br>
                            </div>                
                            <br>
                    </form>
                </div>
            </div><!-- end row -->
        </div>
            <script>


        //닉네임 변경만 저장 ajax--------------------
        $(function(){
            $("#nickUpdate").click(function() {
                
                var nickName = $("#nickName").val();
                
                $.ajax({
                url: "nickNameUpdate.me",
                type: "POST",
                data: { "nickName": nickName },
                success: function(result) {
                    console.log(result)
                    if(result>0){
                    alert("닉네임이 변경 되었습니다.");
                        
                    }else{
                        
                    alert("닉네임 변경 오류 발생");
                    }
                },
                error: function() {
                    console.log("ajax요청 실패");
                    //alert("ajax요청 실패");
                }
                });
            });
        })



        // 비밀번호 유효성 검사 div에 출력 --------------
        $(function(){
			const $password = $("#password1");
			const $password2 = $("#password2");
			$password.keyup(function(){ //띄어지는순간 계쏙 실행
				//console.log($password.val());
                
                let regExp = /^.{8,20}$/;
                let regExp1 = /(?=.*?[0-9])/;
                let regExp2 = /(?=.*?[!@#$%^&*(),.?":{}|<>])/;
                let regExp3 = /(?=.*?[A-Z])/;
                let result = "8글자 이상 숫자 대문자 특수문자 포함";

                if(regExp.test($password.val())){
                    result = result.replace("8글자 이상", "<span style='color:green'>✔8글자 이상</span>");
                }

                if(regExp1.test($password.val())){
                    result = result.replace("숫자", "<span style='color:green'>✔숫자</span>");
                }
                
                if(regExp2.test($password.val())){
                    result = result.replace("특수문자", "<span style='color:green'>✔특수문자</span>");
                }

                if(regExp3.test($password.val())){
                    result = result.replace("대문자", "<span style='color:green'>✔대문자</span>");
                }
                $("#passRegResult").show().html(result);
            }) 
		})

        //비밀번호 일치여부 div에 보여주기 
        $(function(){
            const $password = $("#password1");
            const $password2 = $("#password2");
			$password2.keyup(function(){ //띄어지는순간 계쏙 실행
				//console.log($password.val());


                if($password.val() != $password2.val()){
                    $("#passwordEquls").show().html("비밀번호 불일치");
                }else{
                    $("#passwordEquls").show().html("<span style='color:green'>✔비밀번호 일치</span>");
                }

            }) 
        })


	</script>  
    <script>
        //비번 변경만 저장 ajax--------------------
        $(function(){
            $("#passwordUpdate").click(function() {
                let regExp = /^.{8,16}$/;
                let regExp1 = /(?=.*?[0-9])/;
                let regExp2 = /(?=.*?[#?!@$%^&*-])/;
                let regExp3 = /(?=.*?[a-zA-Z])/;
                const $password = $("#password1").val();
                const password2 = $("#password2").val();
                console.log($password + password2); 
                
                if($password === password2 && regExp.test($password) && regExp1.test($password) && regExp2.test($password) && regExp3.test($password)){
                    console.log("if탄다!!!!!" +password2);
                    $.ajax({
                    
                        url: "passwordUpdate.me",
                        type: "POST",
                        
                        data: { "password" : password2 },
                        success: function() {
                            alert("비밀번호가 변경되었습니다");
                        },
                        error: function() {
                            console.log("ajax요청 실패");
                            alert("요청 실패");
                            //alert("ajax요청 실패");
                        }
                    });
            }else{
                alert("유효한 비밀번호를 넣어주세요")
            }
            });
        })
    </script>
        <div class="space"></div>
    </div>
<jsp:include page="../common/footer.jsp"/>
</div>


        <!--  <script cript src="resources/member/assets/js/vendor/modernizr-2.6.2.min.js"></script> -->
        <script src="resources/member/assets/js/jquery-1.10.2.min.js"></script>
        <script src="resources/member/bootstrap/js/bootstrap.min.js"></script>
        <script src="resources/member/assets/js/bootstrap-select.min.js"></script>
        <script src="resources/member/assets/js/bootstrap-hover-dropdown.js"></script>
        <script src="resources/member/assets/js/easypiechart.min.js"></script>
        <script src="resources/member/assets/js/jquery.easypiechart.min.js"></script>
        <script src="resources/member/assets/js/owl.carousel.min.js"></script>
        <script src="resources/member/assets/js/wow.js"></script>
        <script src="resources/member/assets/js/icheck.min.js"></script>

        <script src="resources/member/assets/js/price-range.js"></script> 
        <script src="resources/member/assets/js/jquery.bootstrap.wizard.js" type="text/javascript"></script>
        <script src="resources/member/assets/js/jquery.validate.min.js"></script>
        <script src="resources/member/assets/js/wizard.js"></script>

        <script src="resources/member/assets/js/main.js"></script>


</body>
</html>