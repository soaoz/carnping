<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body class="ov-hid">
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header Section Begin -->
    <header class="header header--normal">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-3 col-md-3">
                    <div class="header__logo">
                        <a href="./index.html"><img src="img/logo1.png" alt="" width="150px" height="60px"></a>
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
            <h5><i class="fa fa-filter"></i> 지역검색</h5>
        </div>
        <div class="filter__search">
            <input type="text">
        </div>
        <div class="filter__select">
            <select>
                <option value="">서울</option>
                <option value="">경기</option>
                <option value="">인천</option>
                <option value="">대전</option>
                <option value="">대구</option>
                <option value="">광주</option>
                <option value="">부산</option>
                <option value="">제주도</option>
            </select>
        </div>
        
        
        
       
        
    </div>
    <!-- Filter End -->

    <!-- Listing Section Begin -->
    <section class="listing nice-scroll" style="width: 100%;">
        <div class="listing__text__top">
            <div class="listing__text__top__left">
                <h5>소모임 게시판</h5>
                
            </div>
            <div class="listing__text__top__right">최신순<i class="fa fa-sort-amount-asc"></i></div> <br><br>
            <button style="float: right; background-color: rgb(104, 135, 115); color: white; border-color: rgb(104, 135, 115);">모임등록</button>


        </div>
        <div class="listing__list" style="align-content: center;">
            <div class="listing__item">
                <div class="listing__item__pic set-bg" data-setbg="img/listing/list-1.jpg"> <!-- 나눔상품이미지 -->
                    
                    <div class="listing__item__pic__btns">
                        <a href="#"><span class="icon_heart_alt"></span></a> <!-- 찜하기 버튼 -->
                    </div>
                </div>
                <div class="listing__item__text">
                    <div class="listing__item__text__inside">
                        <h5>가평 번개 파티 구함</h5>
                        <div class="listing__item__text__rating">
                           
                            <h6>user01</h6>
                        </div>
                        <ul>
                            <li><span class="icon_pin_alt"></span>서울</li>
                            <li><span class="icon_phone"></span> 010 - 1111 - 2222</li>
                        </ul>
                    </div>
                    
                </div>
            </div>
            <div class="listing__item">
                <div class="listing__item__pic set-bg" data-setbg="img/listing/list-1.jpg"> <!-- 나눔상품이미지 -->
                    
                    <div class="listing__item__pic__btns">
                        <a href="#"><span class="icon_heart_alt"></span></a> <!-- 찜하기 버튼 -->
                    </div>
                </div>
                <div class="listing__item__text">
                    <div class="listing__item__text__inside">
                        <h5>가평 번개 파티 구함</h5>
                        <div class="listing__item__text__rating">
                           
                            <h6>user01</h6>
                        </div>
                        <ul>
                            <li><span class="icon_pin_alt"></span>서울</li>
                            <li><span class="icon_phone"></span> 010 - 1111 - 2222</li>
                        </ul>
                    </div>
                    
                </div>
            </div>
            <div class="listing__item">
                <div class="listing__item__pic set-bg" data-setbg="img/listing/list-1.jpg"> <!-- 나눔상품이미지 -->
                    
                    <div class="listing__item__pic__btns">
                        <a href="#"><span class="icon_heart_alt"></span></a> <!-- 찜하기 버튼 -->
                    </div>
                </div>
                <div class="listing__item__text">
                    <div class="listing__item__text__inside">
                        <h5>가평 번개 파티 구함</h5>
                        <div class="listing__item__text__rating">
                           
                            <h6>user01</h6>
                        </div>
                        <ul>
                            <li><span class="icon_pin_alt"></span>서울</li>
                            <li><span class="icon_phone"></span> 010 - 1111 - 2222</li>
                        </ul>
                    </div>
                    
                </div>
            </div>
            <div class="listing__item">
                <div class="listing__item__pic set-bg" data-setbg="img/listing/list-1.jpg"> <!-- 나눔상품이미지 -->
                    
                    <div class="listing__item__pic__btns">
                        <a href="#"><span class="icon_heart_alt"></span></a> <!-- 찜하기 버튼 -->
                    </div>
                </div>
                <div class="listing__item__text">
                    <div class="listing__item__text__inside">
                        <h5>가평 번개 파티 구함</h5>
                        <div class="listing__item__text__rating">
                           
                            <h6>user01</h6>
                        </div>
                        <ul>
                            <li><span class="icon_pin_alt"></span>서울</li>
                            <li><span class="icon_phone"></span> 010 - 1111 - 2222</li>
                        </ul>
                    </div>
                    
                </div>
            </div>
            
            
        </div>
    </section>
    <!-- Listing Section End -->

    <!-- Map Begin -->
    
    <!-- Map End -->

    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.nicescroll.min.js"></script>
    <script src="js/jquery.barfiller.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>