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
    <title>Document</title>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>

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
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/style.css"> -->

<style>
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
           <a href="myAlarmList.me" class="menu"><i class="fa-solid fa-car-side"></i>나의 차박지 </a>
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
            <a href="" class="menu"><i class="fa-solid fa-right-from-bracket"></i> 로그아웃</a>
        </div>
        <div class="myPage_menu">
            <a href="unregister.me" class="menu"><i class="fa-solid fa-circle-xmark"></i> 회원탈퇴</a>
        </div>

    </div>
    <!-- Filter End -->

    <div class="content-area user-profiel" style="background-color: white;">
        <div class="container">
            <div class="row">
                <div class="col-sm-10 col-sm-offset-1">
                    <div class="profiel-header">

                        <h3>
                            <br><br>
                            <b class="title">나의 활동</b> <small>내가 작성한 게시글</small><br>
                            
                          
                            <small></small>
                        </h3>
                        <hr>
                        <br><br>
                          <ul class="nav nav-tabs">
                            <li class="nav-item">
                              <a class="nav-link active" aria-current="page" href="myAlarmList.me">활동 알림</a>
                            </li>
                            <li class="nav-item">
                              <a class="nav-link" href="myPostList.me">내가 쓴 글</a>
                            </li>
                            <li class="nav-item">
                              <a class="nav-link" href="myReplyList.me">내가 쓴 댓글</a>
                            </li>
                          </ul>
                    </div>

                    <br>
                    <table>
                        <tr>
                            <td colspan="5" class="td1"><input type="checkbox" name=""  style="position: static; opacity: 1; width: auto; height: auto;"></td>
                            <td class="td1">&nbsp;&nbsp;전체선택</td>
                        </tr>
                    </table>
                    <table border="0px" class="table table-hover"  style="width: 100%; margin:auto;" align="center">
                        <thead>
                            <tr id="tr1">
                                <th width="50">선택</th>
                                <th width="40">번호</th>
                                <th width="150">카테고리</th>
                                <th width="500" style="text-align: center;">제목</th>
                                <th width="70">작성자</th>
                                <th width="70">조회수</th>
                                <th width="100">작성일</th>
                            </tr>
                        </thead>
                        
                        <tbody>
                                <tr>
                                    <td colspan="5" align="center">존재하는 글이 없습니다</td>
                                </tr>
                                

                                <tr >
                                    <td>
                                        <input type="checkbox" name="" id="">
                                    </td>
                                    <td>4352</td>
                                    <td>[자유게시판]</td>
                                    <td>오늘 만우절 이벤트ㅋㅋㅋ</td>
                                    <td width="100">빵떡이</td>
                                    <td>234</td>
                                    <td>23-04-01</td>
                                </tr>
                                <tr>
                                    <td>
                                        <input type="checkbox" name="" id="">
                                    </td>
                                    <td>3564</td>
                                    <td>[자유게시판]</td>
                                    <td>봄이 다가오긴 하네요</td>
                                    <td>빵떡이</td>
                                    <td>234</td>
                                    <td>23-04-01</td>
                                </tr>								
                                <tr>
                                    <td>
                                        <input type="checkbox" name="" id="">
                                    </td>
                                    <td>2423</td>
                                    <td>[소모임]</td>
                                    <td>동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리나라만세동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리나라만세</td>
                                    <td>빵떡이</td>
                                    <td>234</td>
                                    <td>23-04-01</td>
                                </tr>
                                <tr>
                                    <td>
                                        <input type="checkbox" name="" id="">
                                    </td>
                                    <td>2234</td>
                                    <td>[자유게시판]</td>
                                    <td>다음에 떠날 차박지 추천받아요!</td>
                                    <td>빵떡이</td>
                                    <td>234</td>
                                    <td>23-04-01</td>
                                </tr>
                                <tr>
                                    <td>
                                        <input type="checkbox" name="" id="">
                                    </td>
                                    <td>2234</td>
                                    <td>[무료나눔]</td>
                                    <td>다음에 떠날 차박지 추천받아요!</td>
                                    <td>빵떡이</td>
                                    <td>234</td>
                                    <td>23-04-01</td>
                                </tr>
                                <tr>
                                    <td>
                                        <input type="checkbox" name="" id="11">
                                    </td>
                                    <td>2234</td>
                                    <td>[자유게시판]</td>
                                    <td>다음에 떠날 차박지 추천받아요!</td>
                                    <td>빵떡이</td>
                                    <td>234</td>
                                    <td>23-04-01</td>
                                </tr>
                                <tr>
                                    <td>
                                        <input type="checkbox" name="" id="">
                                    </td>
                                    <td>2234</td>
                                    <td>[자유게시판]</td>
                                    <td>다음에 떠날 차박지 추천받아요!</td>
                                    <td>빵떡이</td>
                                    <td>234</td>
                                    <td>23-04-01</td>
                                </tr>
                                <tr>
                                    <td>
                                        <input type="checkbox" name="" id="">
                                    </td>
                                    <td>2234</td>
                                    <td>[자유게시판]</td>
                                    <td>다음에 떠날 차박지 추천받아요!</td>
                                    <td>빵떡이</td>
                                    <td>234</td>
                                    <td>23-04-01</td>
                                </tr>
                                <tr>
                                    <td>
                                        <input type="checkbox" name="" id="">
                                    </td>
                                    <td>2234</td>
                                    <td>[자유게시판]</td>
                                    <td>다음에 떠날 차박지 추천받아요!</td>
                                    <td>빵떡이</td>
                                    <td>234</td>
                                    <td>23-04-01</td>
                                </tr>
                                <tr>
                                    <td>
                                        <input type="checkbox" name="" id="">
                                    </td>
                                    <td>123</td>
                                    <td>[카테고리]</td>
                                    <td>글제목</td>
                                    <td>작성자</td>
                                    <td>조회수</td>
                                    <td>작성일</td>
                                </tr>
                        </tbody>
                    </table>

                    <div align="left" >
                        <br>
                        <a href="#" class = "btn btn-sm btn-primary">글 삭제</a>
                        <br><br>
                    </div>  
                    <div id="pagingArea" align="center">
                        <ul class="pagination">
                            
                                <li class="page-item"><a class="page-link" href=""> &lt;&lt; </a></li>
                                <li class="page-item"><a class="page-link" href="">1</a></li>
                                <li class="page-item"><a class="page-link" href="">2</a></li>
                                <li class="page-item"><a class="page-link" href="">3</a></li>
                                <li class="page-item"><a class="page-link" href="">4</a></li>
                                <li class="page-item"><a class="page-link" href="">5</a></li>
                                    <li class="page-item"><a class="page-link" href="">&gt;&gt;</a></li>
                        </ul>
                    </div>

                </div>
            </div>
        </div>
    </div>
 </div>
    
<jsp:include page="../common/footer.jsp"/>
</body>
</html>