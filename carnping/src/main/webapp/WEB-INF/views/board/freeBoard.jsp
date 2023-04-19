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
	
	<jsp:include page="../common/header.jsp"/>

    

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
                <h5>무료나눔 게시판</h5>
                
            </div>
            <div class="listing__text__top__right">최신순<i class="fa fa-sort-amount-asc"></i></div> <br><br>
            <button style="float: right; background-color: rgb(104, 135, 115); color: white; border-color: rgb(104, 135, 115);">글쓰기</button>


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
                        <h5>텐트 무료 나눔</h5>
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
                        <h5>돗자리 팝니다.</h5>
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
                        <h5>돗자리 팝니다.</h5>
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
                        <h5>돗자리 팝니다.</h5>
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