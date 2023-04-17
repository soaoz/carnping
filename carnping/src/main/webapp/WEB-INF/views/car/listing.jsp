<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Directing Template">
    <meta name="keywords" content="Directing, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Directing | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700;800&display=swap" rel="stylesheet">

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
</head>

<body class="ov-hid">
    <jsp:include page="../common/header.jsp"/>
    <!-- Page Preloder -->
    <!-- <div id="preloder">
        <div class="loader"></div>
    </div> -->

    <!-- Header Section Begin -->
    <!-- <header class="header header--normal">
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
    </header> -->
    <!-- Header Section End -->

    <!-- Filter Begin -->
    <div class="filter nice-scroll">
        <div class="filter__title">
            <h5><i class="fa fa-filter"></i>필터</h5>
        </div>
        <div class="filter__search">
            <input type="text">
        </div>
        <div class="filter__select">
            <select>
                <option value="">지역</option>
                <option value="">서울</option>
                <option value="">대전</option>
                <option value="">대구</option>
                <option value="">부산</option>
                <option value="">찍고~</option>
            </select>
        </div>
        <div class="filter__location">
            <input type="text" placeholder="여기는 지역명 키워드검색">
            <i class="fa fa-map-marker"></i>
        </div>
       
        <div class="filter__tags">
            <h6>주변에 이런게 있어요!</h6>
            <label for="coupon">
                화장실
                <input type="checkbox" id="coupon">
                <span class="checkmark"></span>
            </label>
            <label for="sa">
                편의점
                <input type="checkbox" id="sa">
                <span class="checkmark"></span>
            </label>
            <label for="camping">
                카페
                <input type="checkbox" id="camping">
                <span class="checkmark"></span>
            </label>
            <label for="hot-spots">
                마트
                <input type="checkbox" id="hot-spots">
                <span class="checkmark"></span>
            </label>
            <label for="internet">
                음식점
                <input type="checkbox" id="internet">
                <span class="checkmark"></span>
            </label>
            <label for="tr">
                주차장
                <input type="checkbox" id="tr">
                <span class="checkmark"></span>
            </label>
            <label for="hd">
                캠핑장
                <input type="checkbox" id="hd">
                <span class="checkmark"></span>
            </label>
            <label for="hd">
                병원
                <input type="checkbox" id="hd">
                <span class="checkmark"></span>
            </label>
        </div>
        <div class="filter__btns">
            <button type="submit">필터 적용</button>
            <button type="reset" class="filter__reset">초기화</button>
        </div>
    </div>
    <!-- Filter End -->

    <!-- Listing Section Begin -->
    <section class="listing nice-scroll">
        <div class="listing__text__top">
            <div class="listing__text__top__left">
                <h5>차박정보 리스트</h5>
                <span>18 Results Found</span>
            </div>
            <div class="listing__text__top__right">Nearby <i class="fa fa-sort-amount-asc"></i></div>
        </div>
        <div class="listing__list">
            <div class="listing__item">
                <div class="listing__item__pic set-bg" data-setbg="img/yangyang_3.png">
                    <img src="img/listing/moutain.png" alt="">
                    <div class="listing__item__pic__tag">Popular</div>
                    <div class="listing__item__pic__btns">
                        <a href="#"><span class="icon_zoom-in_alt"></span></a>
                        <a href="#"><span class="icon_heart_alt"></span></a>
                    </div>
                </div>
                <div class="listing__item__text">
                    <div class="listing__item__text__inside">
                        <h5>서퍼들의 천국, 양양 죽도해변</h5>
                        <div class="listing__item__text__rating">
                            <div class="listing__item__rating__star">
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star-half_alt"></span>
                            </div>
                        </div>
                        <ul>
                            <li><span class="icon_pin_alt"></span>강원도 양양군 현남면 인구중앙길 88</li>
                            <li><span class="icon_phone"></span> (+12) 345-678-910</li>
                        </ul>
                    </div>
                    <div class="listing__item__text__info">
                        <div class="listing__item__text__info__left">
                            <img src="img/listing/ocean.png" alt="">
                            <span>오픈시간</span>
                        </div>
                        <div class="listing__item__text__info__right">12:00 ~ 18:00</div>
                    </div>
                </div>
            </div>
            
            <div class="listing__item">
                <div class="listing__item__pic set-bg" data-setbg="img/test2.png">
                    <img src="img/listing/ocean.png" alt="">
                    <div class="listing__item__pic__tag top_rate">Top Rate</div>
                    <div class="listing__item__pic__btns">
                        <a href="#"><span class="icon_zoom-in_alt"></span></a>
                        <a href="#"><span class="icon_heart_alt"></span></a>
                    </div>
                </div>
                <div class="listing__item__text">
                    <div class="listing__item__text__inside">
                        <h5>일출과 일몰을 함께, 당진 왜목마을</h5>
                        <div class="listing__item__text__rating">
                            <div class="listing__item__rating__star">
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star"></span>
                                <span class="icon_star-half_alt"></span>
                            </div>
                        </div>
                        <ul>
                            <li><span class="icon_pin_alt"></span> 당진시 석문면 교로리 844-170 일원
                            </li>
                            <li><span class="icon_phone"></span> (+12) 345-678-910</li>
                        </ul>
                    </div>
                    <div class="listing__item__text__info">
                        <div class="listing__item__text__info__left">
                            <img src="img/listing/list_small_icon-2.png" alt="">
                            <span>오픈시간</span>
                        </div>
                        <div class="listing__item__text__info__right closed">24:00</div>
                    </div>
                </div>
            </div>
            
        </div>
    </section>
    <!-- Listing Section End -->

    <!-- Map Begin -->
    <div class="listing__map">
        <iframe
            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d423283.43556031643!2d-118.69192431097179!3d34.020730495817475!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80c2c75ddc27da13%3A0xe22fdf6f254608f4!2sLos%20Angeles%2C%20CA%2C%20USA!5e0!3m2!1sen!2sbd!4v1586670019340!5m2!1sen!2sbd" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
    </div>
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