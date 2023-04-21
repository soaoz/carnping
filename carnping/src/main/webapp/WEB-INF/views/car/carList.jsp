<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
<!--   <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700;800&display=swap" rel="stylesheet"> -->

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
<style>
    .header_back {
        width: 100%;
        height: 105px;
        background-color: white;
    }

    .wrap {
        position: absolute;
        left: 0;
        bottom: 40px;
        width: 288px;
        height: 132px;
        margin-left: -144px;
        text-align: left;
        overflow: hidden;
        font-size: 12px;
        font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;
        line-height: 1.5;
    }

    .wrap * {
        padding: 0;
        margin: 0;
    }

    .wrap .info {
        width: 286px;
        height: 120px;
        border-radius: 5px;
        border-bottom: 2px solid #ccc;
        border-right: 1px solid #ccc;
        overflow: hidden;
        background: #fff;
    }

    .wrap .info:nth-child(1) {
        border: 0;
        box-shadow: 0px 1px 2px #888;
    }

    .info .title {
        padding: 5px 0 0 10px;
        height: 30px;
        background: #eee;
        border-bottom: 1px solid #ddd;
        font-size: 18px;
        font-weight: bold;
    }

    .info .close {
        position: absolute;
        top: 10px;
        right: 10px;
        color: #888;
        width: 17px;
        height: 17px;
        background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');
    }

    .info .close:hover {
        cursor: pointer;
    }

    .info .body {
        position: relative;
        overflow: hidden;
    }

    .info .desc {
        position: relative;
        margin: 13px 0 0 90px;
        height: 75px;
    }

    .desc .ellipsis {
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
    }

    .desc .jibun {
        font-size: 11px;
        color: #888;
        margin-top: -2px;
    }

    .info .img {
        position: absolute;
        top: 6px;
        left: 5px;
        width: 73px;
        height: 71px;
        border: 1px solid #ddd;
        color: #888;
        overflow: hidden;
    }

    .info:after {
        content: '';
        position: absolute;
        margin-left: -12px;
        left: 50%;
        bottom: 0;
        width: 22px;
        height: 12px;
        background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')
    }

    .info .link {
        color: #5085BB;
    }
</style>
</head>

<body class="ov-hid">


<header class="header header--normal">


    <div class="header_back">
        <jsp:include page="../common/header.jsp" />
    </div>


</header>
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
        <c:choose>
            <c:when test="${ not empty list }">
                <c:forEach var="list" items="${ list }">
                    <div class="listing__item">
                        <div class="listing__item__pic set-bg" data-setbg="${ list.cinfoImg1 }">


                            <img src="resources/img/carList/icon/ocean.png" alt="">

                            <!--  
        <div class="listing__item__pic__tag">Popular</div>
        <div class="listing__item__pic__btns">
            <a href="#"><span class="icon_zoom-in_alt"></span></a>
            <a href="#"><span class="icon_heart_alt"></span></a>
        </div>
        -->
                        </div>



                        <div class="listing__item__text">
                            <div class="listing__item__text__inside">
                                <h5>${ list.cinfoName }</h5>
                                <div class="listing__item__text__rating">
                                    <div class="listing__item__rating__star">
                                        <c:forEach var="rating" begin="1" end="${ list.cinfoRating }"
                                            step="1">
                                            <span class="icon_star"></span>
                                        </c:forEach>
                                        <c:if test="${ ((list.cinfoRating)*10) % 10 >= 5  }">
                                            <span class="icon_star-half_alt"></span>
                                        </c:if>
                                    </div>
                                </div>
                                <ul>
                                    <li><span class="icon_pin_alt"></span>${ list.cinfoAddress }</li>
                                    <li><span class="icon_phone"></span>${ list.phone }</li>
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
                </c:forEach>
            </c:when>
            <c:otherwise>
                <h4>${ emp }</h4>

            </c:otherwise>
        </c:choose>


    </div>
</section>
<!-- Listing Section End -->


<!-- Map Begin -->
<div class="listing__map">
    <div id="map" style="width:100%;height:100%;"></div>
    <!-- <iframe 
src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d423283.43556031643!2d-118.69192431097179!3d34.020730495817475!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80c2c75ddc27da13%3A0xe22fdf6f254608f4!2sLos%20Angeles%2C%20CA%2C%20USA!5e0!3m2!1sen!2sbd!4v1586670019340!5m2!1sen!2sbd" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe> -->
</div>

<!-- Map End -->
<!-- Js Plugins -->
<script type="text/javascript"
    src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c51db8bdf50f603f1ca7fd3444ea0dab"></script>
<script>
    $(function () {
        var positions = [];
        $.ajax({
            url: 'carMap.ca',
            async: false,
            success: function (result) {
                result.forEach(function (rs) {
                    positions = [{
                        content: '<div>카카오</div>',
                        latlng: new kakao.maps.LatLng(rs.cinfoLttd, rs.cinfoHrdns)
                    }]
                    console.log(rs.cinfoLttd);
                    console.log(rs.cinfoHrdns);
                    console.log(positions);
                })
                console.log('1212' + positions);
            }
        })


        var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
            mapOption = {
                center: new kakao.maps.LatLng(37.96552, 128.76046), // 지도의 중심좌표
                level: 3 // 지도의 확대 레벨
            };
        let carList = [];
        var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다 

        // 마커 이미지의 이미지 주소입니다
        var imageSrc = "resources/img/marker.png";

        // 마커를 표시할 위치와 title 객체 배열입니다 
        for (var i = 0; i < positions.length; i++) {

            // // 마커 이미지의 이미지 크기 입니다
            // var imageSize = new kakao.maps.Size(24, 35);

            // // 마커 이미지를 생성합니다    
            // var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);
            for (var i = 0; i < positions.length; i++) {
                // 마커를 생성합니다
                var marker = new kakao.maps.Marker({
                    map: map, // 마커를 표시할 지도
                    position: positions[i].latlng // 마커의 위치
                });

                // 마커에 표시할 인포윈도우를 생성합니다 
                var infowindow = new kakao.maps.InfoWindow({
                    content: positions[i].content // 인포윈도우에 표시할 내용
                });

                // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
                // 이벤트 리스너로는 클로저를 만들어 등록합니다 
                // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
                kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
                kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
            }

            // 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
            function makeOverListener(map, marker, infowindow) {
                return function () {
                    infowindow.open(map, marker);
                };
            }

            // 인포윈도우를 닫는 클로저를 만드는 함수입니다 
            function makeOutListener(infowindow) {
                return function () {
                    infowindow.close();
                };
            }
        }
    });
</script>
<!--<script src="resources/js/jquery-3.3.1.min.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<script src="resources/js/jquery.nice-select.min.js"></script>
<script src="resources/js/jquery-ui.min.js"></script>
<script src="resources/js/jquery.nicescroll.min.js"></script>
<script src="resources/js/jquery.barfiller.js"></script>
<script src="resources/js/jquery.magnific-popup.min.js"></script>
<script src="resources/js/jquery.slicknav.js"></script>
<script src="resources/js/owl.carousel.min.js"></script>-->
<script src="resources/js/main.js"></script>

</body>

</html>