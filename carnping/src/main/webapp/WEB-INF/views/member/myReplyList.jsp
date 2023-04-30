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

</head>
<body>

<jsp:include page="../common/header.jsp"/>
 <jsp:include page="../common/menubar.jsp"/>  
   
   
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
           <a href="myAlarmList.me" class="menu"><i class="fa-sharp fa-solid fa-bookmark"></i> 내 활동 </a>
        </div>
        <div class="myPage_menu">
            <a href="myLikeList.me" class="menu"><i class="fa-sharp fa-solid fa-heart"></i> 좋아요</a>
        </div>
        <div class="myPage_menu">
            <a href="myQuestionList.me" class="menu"><i class="fa-solid fa-circle-question"></i> 문의하기</a>
        </div>
        <div class="myPage_menu">
            <a href="logoutPage.me" class="menu"><i class="fa-solid fa-right-from-bracket"></i> 로그아웃</a>
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
                            <b>나의 활동</b> <small>내가 쓴 댓글~~~~</small><br>
                            
                          
                            <small></small>
                        </h3>
                        <hr>
                        <br><br>
                        <ul class="nav nav-tabs">
                            <li class="nav-item">
                              <a class="nav-link active" aria-current="page" href="#">나의 등록지</a>
                            </li>
                            <li class="nav-item">
                              <a class="nav-link" href="#">내가 쓴 글</a>
                            </li>
                            <li class="nav-item">
                              <a class="nav-link" href="#">내가 쓴 댓글</a>
                            </li>
                            <li class="nav-item">
                              <a class="nav-link disabled">활동알림</a>
                            </li>
                          </ul>
                    </div>

                    <br>
                    <table>
                        <tr>
                            <td colspan="5" class="td1"><input type="checkbox" name="11" id="11"></td>
                            <td class="td1">&nbsp;&nbsp;전체선택</td>
                        </tr>
                    </table>
                    <table border="0px" class="table table-hover"  style="width: 100%; margin:auto;" align="center">
                        <thead>
                            <tr id="tr1">
                                <th >선택</th>
                                <th width="40" style="text-align: center;">번호</th>
                                <th width="500" style="text-align: center;">제목</th>
                                <th width="70">작성자</th>
                                <th width="50" >조회수</th>
                                <th width="100" style="text-align: center;">작성일</th>
                            </tr>
                        </thead>
                        
                        <tbody>
                                <tr>
                                    <td colspan="5" align="center">존재하는 글이 없습니다</td>
                                </tr>
                                

                                <tr >
                                    <td width="40">
                                        <input type="checkbox" name="11" id="11">
                                    </td>
                                    <td>4352</td>
                                    <td> 속초에 어쩌구 저쩌구 블라블라 <div><span class="myReplyBoardTitle"> 원문 제목 : 강원도 차박지 추천해주세요(3)</span></div></td>
                                    <td width="100">김아무개</td>
                                    <td>234</td>
                                    <td>23.04.01 20:30</td>

                                </tr>
                                <tr >
                                    <td width="40">
                                        <input type="checkbox" name="11" id="11">
                                    </td>
                                    <td>4352</td>
                                    <td> 속초에 어쩌구 저쩌구 블라블라 <div><span class="myReplyBoardTitle"> 원문 제목 : 강원도 차박지 추천해주세요(3)</span></div></td>
                                    <td width="100">원문 작성자</td>
                                    <td>234</td>
                                    <td>23.04.01 20:30</td>
                                </tr>
                                <tr >
                                    <td width="40">
                                        <input type="checkbox" name="11" id="11">
                                    </td>
                                    <td>4352</td>
                                    <td> 속초에 어쩌구 저쩌구 블라블라 <div><span class="myReplyBoardTitle"> 원문 제목 : 강원도 차박지 추천해주세요(3)</span></div></td>
                                    <td width="100">김아무개</td>
                                    <td>234</td>
                                    <td>23.04.01 20:30</td>

                                </tr>
                                <tr >
                                    <td width="40">
                                        <input type="checkbox" name="11" id="11">
                                    </td>
                                    <td>4352</td>
                                    <td> 속초에 어쩌구 저쩌구 블라블라 <div><span class="myReplyBoardTitle"> 원문 제목 : 강원도 차박지 추천해주세요(3)</span></div></td>
                                    <td width="100">김아무개</td>
                                    <td>234</td>
                                    <td>23.04.01 20:30</td>

                                </tr>
                                <tr >
                                    <td width="40">
                                        <input type="checkbox" name="11" id="11">
                                    </td>
                                    <td>4352</td>
                                    <td> 속초에 어쩌구 저쩌구 블라블라 <div><span > 원문 제목 : 강원도 차박지 추천해주세요(3)</span></div></td>
                                    <td width="100">김아무개</td>
                                    <td>234</td>
                                    <td>23.04.01 20:30</td>

                                </tr>

                        </tbody>
                    </table>

                    <div align="left" >
                        <br>
                        <a href="#" class = "btn btn-sm btn-primary">삭제하기</a>
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
<jsp:include page="../common/footer.jsp"/>
</body>
</html>