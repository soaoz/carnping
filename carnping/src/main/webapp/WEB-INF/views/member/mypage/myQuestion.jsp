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

    <link rel="stylesheet" href="assets2/css/select2.min.css" />
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
    </style>
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
                            <b>문의 하기</b> MY QUESTION <br>
                            
                          
                            <small></small>
                        </h3>
                        <hr>
                        <br><br>
                    </div>

                    




                    
                </div>
                
            </div>
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
                                    <input type="text" class="form-control" />
                                    </div>
                                </div>
                                <div class="col-lg-12 col-md-12">
                                    <div class="form-group modal-select-box">
                                    <label>카테고리</label>
                                    <select class="select">
                                        <option value="1">불편사항</option>
                                        <option value="2">신고하기</option>
                                        <option value="3">제안하기</option>
                                    </select>
                                    </div>
                                </div>

                                
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
                                    <div id="editor"></div>
                                    </div>
                                </div>
                                </div>
                            </div>
                            </div>
                            <div class="blog-categories-btn pt-0">
                            <div class="bank-details-btn" align="end">
                                <a href="blog.html" class="btn btn-primary me-2"> 확인 </a> &nbsp;&nbsp;&nbsp;&nbsp;
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
                
                <script src="assets2/js/jquery-3.6.0.min.js"></script>
                
                <script src="assets2/js/bootstrap.bundle.min.js"></script>
                
                <script src="assets2/js/feather.min.js"></script>
                
                <script src="assets2/js/ckeditor.js"></script>
                
                <script src="assets2/js/select2.min.js"></script>
                
                <script src="assets2/plugins/bootstrap-tagsinput/js/bootstrap-tagsinput.js"></script>
                
                <script src="assets2/plugins/slimscroll/jquery.slimscroll.min.js"></script>
                
                <script src="assets2/js/script.js"></script>

        </div>
    </div>
</body>
</html>