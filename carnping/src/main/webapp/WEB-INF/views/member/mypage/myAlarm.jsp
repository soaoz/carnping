<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
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
    <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
 <!-- Header Section Begin -->
    <header class="header header--normal">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-3 col-md-3">
                    <div class="header__logo">
                        <a href="./index.html"><img src="img/footer-logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-9 col-md-9">
                    <div class="header__nav">
                        <nav class="header__menu mobile-menu">
                            <ul>
                                <li><a href="./index.html">Home</a></li>
                                <li class="active"><a href="./listing.html">Listing</a></li>
                                <li><a href="#">Categories</a></li>
                                <li><a href="#">Pages</a>
                                    <ul class="dropdown">
                                        <li><a href="./about.html">About</a></li>
                                        <li><a href="./listing-details.html">Listing Details</a></li>
                                        <li><a href="./blog-details.html">Blog Details</a></li>
                                        <li><a href="./contact.html">Contact</a></li>
                                    </ul>
                                </li>
                                <li><a href="./blog.html">Blog</a></li>
                                <li><a href="#">Shop</a></li>
                            </ul>
                        </nav>
                        <div class="header__menu__right">
                            <a href="#" class="primary-btn"><i class="fa fa-plus"></i>Add Listing</a>
                            <a href="#" class="login-btn"><i class="fa fa-user"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div id="mobile-menu-wrap"></div>
        </div>
    </header>
    <!-- Header Section End -->
    <!-- Filter Begin -->
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
    <div class="space"></div> 
    <div class="content-area user-profiel" style="background-color: white;">
        <div class="container">
            <div class="row">
                <div class="col-sm-10 col-sm-offset-1">
                    <div class="profiel-header">








                        <h3>
                            <br><br>
                            <b>나의 활동</b> <small> 활동 알림 내역~~~~~~~~~~</small><br>
                            
                          
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
                    <table border="0px" class="table table-hover table1"  style="width: 100%; margin:auto;" align="center">
                        <thead>
                            <tr id="tr1">
                                <th >선택</th>
                                <th width="80" style="text-align: center;">구분</th>
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
                                    <td>[댓글]</td>
                                    <td> [강원도 차박지 추천...] 에 댓글이 달렸습니다.</td>
                                    <td width="100">나</td>
                                    <td>234</td>
                                    <td>23.04.01 20:30</td>

                                </tr>
                                <tr >
                                    <td width="40">
                                        <input type="checkbox" name="11" id="11">
                                    </td>
                                    <td>[후기]</td>
                                    <td>[중랑구 캠핑 숲] 게시글에 후기가 달렸습니다.</td>
                                    <td width="100">원문 작성자</td>
                                    <td>234</td>
                                    <td>23.04.01 20:30</td>
                                </tr>
                                <tr >
                                    <td width="40">
                                        <input type="checkbox" name="11" id="11">
                                    </td>
                                    <td>[대댓글]</td>
                                    <td>[강원도 차박지 추천...] 에 대댓글이 달렸습니다.</td>
                                    <td width="100">김아무개</td>
                                    <td>234</td>
                                    <td>23.04.01 20:30</td>

                                </tr>
                                <tr >
                                    <td width="40">
                                        <input type="checkbox" name="11" id="11">
                                    </td>
                                    <td>[댓글]</td>
                                    <td> [강원도 차박지 추천...] 에 댓글이 달렸습니다.</td>
                                    <td width="100">나</td>
                                    <td>234</td>
                                    <td>23.04.01 20:30</td>

                                </tr>
                                <tr >
                                    <td width="40">
                                        <input type="checkbox" name="11" id="11">
                                    </td>
                                    <td>[후기]</td>
                                    <td>[중랑구 캠핑 숲] 게시글에 후기가 달렸습니다.</td>
                                    <td width="100">원문 작성자</td>
                                    <td>234</td>
                                    <td>23.04.01 20:30</td>
                                </tr>
                                <tr >
                                    <td width="40">
                                        <input type="checkbox" name="11" id="11">
                                    </td>
                                    <td>[대댓글]</td>
                                    <td>[강원도 차박지 추천...] 에 대댓글이 달렸습니다.</td>
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
</body>
</html>