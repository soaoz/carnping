<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="GARO is a real-estate template">
    <meta name="author" content="Kimarotec">
    <meta name="keyword" content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Carnping | 문의하기</title>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>

    <!-- Css Styles -->
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
    <link rel="stylesheet" href="resources/member/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/member/assets/css/style.css">

    <link rel="stylesheet" href="resources/member/assets2/css/select2.min.css" />
    <style>
    /* questionForm style */
    .card{
        min-width: 800px !important;
        min-height: 700px;
    }
    .ck-blurred{
        min-height: 400px;
    }
    .ck-focused{
        min-height: 400px;
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
            <a href="myLogoutPage.me" class="	menu"><i class="fa-solid fa-right-from-bracket"></i> 로그아웃</a>
        </div>
        <div class="myPage_menu">
            <a href="unregister.me" class="menu"><i class="fa-solid fa-circle-xmark"></i> 회원탈퇴</a>
        </div>

    </div>
    <!-- Filter End -->
    <div class="space"></div> 
    <div class="content-area user-profiel" style="background-color: white;">
        <div class="container">
            <div class="row">
                <div class="col-sm-10 col-sm-offset-1">
                    <div class="profiel-header">
                        <h3>
                            <br><br>
                            <b class="title">문의 하기</b> MY QUESTION <br>
                            <small></small>
                        </h3>
                        <hr>
                        <br><br>
                    </div>
                </div>
                
            </div>
            
            <form action="updateQuestion.me" method="post" enctype="multipart/form-data">
            <input type="hidden" name="queNo" value="${ q.queNo }">
            
            <div class="main-wrapper">

                <div class="page-wrapper">
                    <div class="content container-fluid">
                    <div class="row">
                        <div class="col-xl-8 offset-xl-2">
                
                        <div class="card">
                            <div class="card-body">
                            <div class="bank-inner-details">
                                <div class="row">
                                <div class="col-lg-12 col-md-12">
                                    <div class="form-group">
                                    <label>제목<span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" value="${ q.queTitle }" name="queTitle"/>
                                    </div>
                                </div>
                                <div class="col-lg-12 col-md-12" id="selectbox">
                                    <div class="form-group modal-select-box">
                                    <label>카테고리</label>
                                    <select class="select" name="queCategory">
                                        <option value="문의하기">문의하기</option>
                                        <option value="신고하기">신고하기</option>
                                        <option value="제안하기">제안하기</option>
                                        <option value="불편사항">불편사항</option>
                                    </select>
                                    </div>
                                </div>
			                    <script>
			                    var selectedValue = "${q.queCategory}";

			                    var selectTag = document.getElementsByClassName("select")[0];
			                    var options = selectTag.options;

			                    for (var i = 0; i < options.length; i++) {
			                      if (options[i].value === selectedValue) {
			                        options[i].selected = true;
			                        break;
			                      }
			                    }
								</script>




                                <div class="col-lg-12 col-md-12">
                                    <div class="form-group">
                                    <label>파일 추가하기</label>
                                    <div class="change-photo-btn">
                                        <input type="file" class="upload" />
                                    </div>
                                    </div>
                                </div>
                                <div class="col-lg-12 col-md-12">
                                    <div class="form-group">
                                    <label>내용</label>
                                    <textarea class="form-control" required name="queContent" id="content" rows="20" style="resize:none;">${ q.queContent }</textarea>
                                    </div>
                                </div>
                                </div>
                            </div>
                            </div>
                            <div class="blog-categories-btn pt-0">
                            <div class="bank-details-btn" align="end">
                                <button type="submit" class='btn btn-primary me-2'>확인</button> &nbsp;&nbsp;&nbsp;&nbsp;
                                <br>
                            </div>
                            <br>
                            </div>
                        </div>
                        </div>
                    </div>
                    </div>
                </div>
                </div>
                </form>
                
                <script src="resources/member/assets2/js/jquery-3.6.0.min.js"></script>
                <script src="resources/member/assets2/js/bootstrap.bundle.min.js"></script>
                <script src="resources/member/assets2/js/feather.min.js"></script>
                <script src="resources/member/assets2/js/ckeditor.js"></script>
                <script src="resources/member/assets2/js/select2.min.js"></script>
                <script src="resources/member/assets2/plugins/bootstrap-tagsinput/js/bootstrap-tagsinput.js"></script>
                <script src="resources/member/assets2/plugins/slimscroll/jquery.slimscroll.min.js"></script>
                <script src="resources/member/assets2/js/script.js"></script>
        </div>
    </div>
    <jsp:include page="../common/footer.jsp"/>
  </div>

</body>
</html>