<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Carnping | 홈 </title>
    <style>
        #themeTags>li>label{
            border: 1px solid white;
            border-radius: 50px;
            padding: 10px 20px 10px 20px;
            color: white;
            cursor:pointer;
        }

        input[type="checkbox"] {
            display: none;
        }

        input[type="checkbox"] + i + label {
            position: relative;
            display: inline-block;
            padding: 5px;
            cursor: pointer;
        }

        /* input[type="checkbox"] + label + i:hover {
            background-color: rgba(0, 0, 0, 0.1);
        } */

        /* input[type="checkbox"]:checked + i +label{
            background-color: rgba(0, 0, 0, 0.1);
        }
/* 
        input[type="checkbox"] + i::before {
            content: '';
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 14px;
            height: 14px;
            border-radius: 50%;
            background-color: #000;
            opacity: 0;
        } */

        /* input[type="checkbox"]:checked + i::before {
            opacity: 0.2;
        } */ 

        .hero__categories__tags label.selected {
            background-color: #0ca67883; /* 선택된 라벨 배경색 */
            }

    </style>



</head>
<body>
	<jsp:include page="common/header.jsp"/>
	
	    <!-- Hero Section Begin -->
    <section class="hero set-bg" data-setbg="resources/img/temp3.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="hero__text">
                        <div class="section-title">
                            <h2>어디로 떠나고 싶으신가요?</h2>
                            <p>전국 곳곳 차박지가 당신을 기다립니다!</p>
                        </div>
                        <div class="hero__search__form">
                            <form id='searchForm' action='filter.ca' method="get" >
                                <input type="text" name="keyword" placeholder="키워드를 입력하세요. " style="width:57%" >
                                <div class="select__option" >
                                <select name="location" >
                                    <option id="all" value="all">전체 시/도</option>
                                    <option id="서울" value="서울">서울</option>
                                    <option id="인천" value="인천">인천</option>
                                    <option id="경기" value="경기">경기도</option>
                                    <option id="강원" value="강원">강원도</option>
                                    </select>
                                </div>

                                <button type="button" style="background-color: #0ca678;" onclick="submitForm();">차박지 살펴보기</button>
                            </form>
                        </div>


                        <ul class="hero__categories__tags" id="themeTags">
                            <li><label for="강"><input type="checkbox" name="tag" value="강" id="강"><i class="fa-solid fa-water" style="color: #4784ff;"></i> 강</label></li>
                            <li><label for="공원"><input type="checkbox" name="tag" value="공원" id="공원" ><i class="fa-solid fa-tree-city" style="color: #0af564;"></i> 공원</label></li>
                            <li><label for="노지"><input type="checkbox" name="tag" value="노지" id="노지"><i class="fa-solid fa-map-pin" style="color: #fe6c6c;"></i> 노지</label></li>
                            <li><label for="바다"><input type="checkbox" name="tag" value="바다" id="바다"><i class="fa-solid fa-umbrella-beach" style="color: #ff773d;"></i> 바다</label></li>
                            <li><label for="산"><input type="checkbox" name="tag" value="산" id="산"><i class="fa-solid fa-mountain" style="color: #0ca678;"></i> 산</label></li>
                            <li><label for="섬"><input type="checkbox" name="tag" value="섬" id="섬"><i class="fa-solid fa-anchor" style="color: #fbfe3e;"></i> 섬</label></li>
                            <li><label for="숲"><input type="checkbox" name="tag" value="숲" id="숲"><i class="fa-solid fa-tree" style="color: #90fe97;"></i> 숲</label></li>
                            <li><label for="캠핑장"><input type="checkbox" name="tag" value="캠핑장" id="캠핑장"><i class="fa-sharp fa-solid fa-campground" style="color: #ff7755;"></i> 캠핑장</label></li>
                        </ul>

                        
                    </div>
                </div>
            </div>
        </div>
    </section>


    <!-- Hero Section End -->
    <script>
        $(function(){
          // 체크박스 변경 이벤트 처리
          $('.hero__categories__tags input[type="checkbox"]').on('change', function() {
            if ($(this).is(':checked')) {
                console.log("타나?");
              $(this).parent('label').addClass('selected');
            } else {
              $(this).parent('label').removeClass('selected');
            }
          });
        });

        function submitForm() {
        // 폼 요소를 가져옵니다.
        var form = document.getElementById('searchForm');
        
        // 선택된 체크박스 값을 저장할 배열을 생성합니다.
        var selectedTags = [];

        // 체크박스 요소들을 가져옵니다.
        var checkboxes = document.getElementsByName('tag');

        // 체크박스를 순회하면서 선택된 값들을 배열에 추가합니다.
        for (var i = 0; i < checkboxes.length; i++) {
            if (checkboxes[i].checked) {
            selectedTags.push(checkboxes[i].value);
            }
        }

        // 선택된 태그 값을 폼 데이터에 추가합니다.
        var tagsInput = document.createElement('input');
        tagsInput.setAttribute('type', 'hidden');
        tagsInput.setAttribute('name', 'tag');
        tagsInput.setAttribute('value', selectedTags.join(',')); // 선택된 태그들을 쉼표로 구분하여 문자열로 변환합니다.
        form.appendChild(tagsInput);

        // 폼을 제출합니다.
        form.submit();
        }



    </script>


    <!-- 차박지도 Begin -->
    <section class="most-search spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>인기 차박지</h2>
                        <p> 전국 방방곳곳 카앤핑의 핫플 차박지를 둘러보세요!</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="most__search__tab">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab">
                                    <span class="flaticon-039-fork"></span>
                                    맛집 주변 식도락 여행
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab">
                                    <span class="flaticon-030-kebab"></span>
                                    마트와 편의점 근처
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab">
                                    <span class="flaticon-032-food-truck"></span>
                                    캠핑장에서 편하게 차박
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-4" role="tab">
                                    <span class="flaticon-017-croissant"></span>
                                    빵지순례 차박
                                </a>
                            </li>

                        </ul>
                    </div>

                    <div class="tab-content">
                        <div class="tab-pane active" id="tabs-1" role="tabpanel">
                          <div class="row" id="carListContainer"></div>
                        </div>
                        <div class="tab-pane active" id="tabs-2" role="tabpanel">
                            <div class="row" id="carListContainer"></div>
                        </div>
                        <div class="tab-pane active" id="tabs-3" role="tabpanel">
                            <div class="row" id="carListContainer"></div>
                        </div>
                        <div class="tab-pane active" id="tabs-4" role="tabpanel">
                            <div class="row" id="carListContainer"></div>
                          </div>
                      </div>
                      
                      <script>

                        $(function() {
                            $(".nav-link").on("click", function() {
                                var tabId = $(this).attr("href"); // 탭의 href 속성값을 가져옴 (예: #tabs-1)
                                tabId = tabId.substring(1);
                                topCarList(tabId);
                            });
                        });


                        $(function() {
                           topCarList("tabs-1");
                           $(".tab-pane").on("click", function() {
                            var tabId = $(this).attr("id");
                            topCarList(tabId);
                            });
                        })
                        
                        function topCarList(tabId) {
                        $.ajax({
                            url: "topCarList.bo",
                            method: "GET",
                            data: { tab: tabId },
                            success: function(response) {
                                console.log(response);
                                
                                var carList = response;
                                var carListContainer = $("#" + tabId + " #carListContainer"); // 데이터를 뿌릴 컨테이너 요소 선택
                                console.log(tabId);
                                carListContainer.empty();
                                
                                // 데이터 루프
                                for (var i = 0; i < carList.length; i++) {
                                var car = carList[i];
                                
                                // 데이터 템플릿 생성
                                var carItem = $('<div class="col-lg-4 col-md-6">' +
                                                '<div class="listing__item">' +
                                                    '<div class="listing__item__pic set-bg" style="background-image:url(' + car.cinfoImg1 + ')">' +
                                                    '<div class="listing__item__pic__btns">' +
                                                    
                                                    '</div>' +
                                                    '</div>' +
                                                    '<div class="listing__item__text">' +
                                                    '<div class="listing__item__text__inside">' +
                                                        '<h5>' + car.cinfoName + '</h5>' +
                                                        '<div class="listing__item__text__rating">' +
                                                        '<div class="listing__item__rating__star">' +
                                                            generateRatingStars(car.cinfoRating) +
                                                        '</div>' +
                                                        '</div>' +
                                                        '<ul>' +
                                                        '<li><span class="icon_pin_alt"></span> ' + car.cinfoAddress + '</li>' +
                                                        '<li><span class="icon_phone"></span> ' + car.phone + '</li>' +
                                                        '</ul>' +
                                                    '</div>' +
                                                    '<div class="listing__item__text__info">' +
                                                        '<div class="listing__item__text__info__left">' +
                                                        '<span>오픈요일</span>' +
                                                        '</div>' +
                                                        '<div class="listing__item__text__info__right closed">' + car.cinfoDays + '</div>' +
                                                    '</div>' +
                                                    '</div>' +
                                                '</div>' +
                                                '</div>');
                                
                                carItem.css("cursor", "pointer");

                                // 데이터 템플릿을 컨테이너에 추가
                                carListContainer.append(carItem);
                                carItem.on('click', function() {
                                var cinfoNo = car.cinfoNo; // 차박 게시글의 cinfoNo 값 가져오기
                                var url = 'detail.ca?cinfoNo=' + cinfoNo; // 상세 페이지 URL 생성
                                window.location.href = url; // 페이지 이동
                                });
                            }
                            },
                            error: function(xhr, status, error) {
                                console.error(error);
                            }
                            })};
                
                            // 별점 아이콘 생성 함수
                            function generateRatingStars(rating) {
                            var fullStars = Math.floor(rating);
                            var halfStar = rating % 1 !== 0;
                            var starHtml = "";
                            
                            for (var i = 0; i < fullStars; i++) {
                                starHtml += '<span class="icon_star"></span>';
                            }
                            
                            if (halfStar) {
                                starHtml += '<span class="icon_star-half_alt"></span>';
                            }
                            
                            return starHtml;
                            }
                        
                
                     </script>
                      
                    
                </div>
            </div>
        </div>
    </section>
    <!-- Most Search Section End -->



    

    <!-- 웹사이트 소개 Begin -->
    <section class="work spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>카앤핑 한번에 둘러보기!</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <a  href="carList.ca">
                    <div class="work__item">
                        <div class="work__item__number">01.</div>
                        <img src="resources/img/work/work-1.png" alt="">
                        <h5>차박지도</h5>
                        <p style="letter-spacing: 0.05rem;">차박지를 키워드와 주변시설 별로</p>
                        <p style="letter-spacing: 0.05rem;">지도에서 한번에 모아보세요! </p>
                    </div>
                    </a>
                </div>
                <div class="col-lg-4 col-md-6">
                    <a  href="carList.ca">
                        <div class="work__item">
                            <div class="work__item__number">02.</div>
                            <img src="resources/img/work/work-2.png" alt="">
                            <h5>함께가요</h5>
                            <p style="letter-spacing: 0.05rem;"> 프로 차박러들과 함께 하는 차박! </p>
                            <p style="letter-spacing: 0.05rem;"> 모임에 참여하거나 직접 모임을 열어보세요!</p>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-md-6">
                    <a  href="freeBoard.bo">
                        <div class="work__item">
                            <div class="work__item__number">03.</div>
                            <img src="resources/img/work/work-3.png" alt="">
                            <h5>무료나눔</h5>
                            <p style="letter-spacing: 0.05rem;"> 차박템 무료 나눔합니다! </p>
                            <p style="letter-spacing: 0.05rem;"> 지금 캠핑장이신분? 차박템 받아가세요!</p>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </section>
    <!-- Work Section End -->

    <!-- 무료나눔 Section Begin -->
    <section class="feature-location spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>차박 용품 무료 나눔 합니다!</h2>
                        <p>사지 마세요! 차박 꿀템 나눠쓰기!</p>
                    </div>
                </div>
            </div>
            <div class="row" id="randomDataContainer">
                <div class="col-lg-6">
                    <a href="#" class="feature__location__item large-item set-bg"
                        data-setbg="resources/img/feature-location/fl-1.jpg">
                        <div class="feature__location__item__text">
                            <h5>location값</h5>
                        </div>
                    </a>
                </div>
                <div class="col-lg-6">
                    <div class="row">
                        <div class="col-lg-6 col-md-6">
                            <a href="#" class="feature__location__item set-bg"
                                data-setbg="resources/img/feature-location/fl-2.jpg">
                                <div class="feature__location__item__text">
                                    <h5>location값</h5>
                                    
                                </div>
                            </a>
                        </div>
                        <div class="col-lg-6 col-md-6">
                            <a href="#" class="feature__location__item set-bg"
                                data-setbg="resources/img/feature-location/fl-3.jpg">
                                <div class="feature__location__item__text">
                                    <h5>location값</h5>
                                </div>
                            </a>
                        </div>
                    </div>
                    <a href="#" class="feature__location__item set-bg" data-setbg="resources/img/feature-location/fl-4.jpg">
                        <div class="feature__location__item__text">
                            <h5>location값</h5>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </section>

    <script>
        // 화면 로드가 완료된 후 실행되는 함수
        $(document).ready(function() {
    $.ajax({
        url: "topFboardList.bo",
        type: 'GET',
        dataType: 'json',
        success: function(data) {
            console.log(data);
            // AJAX 요청 성공 시 실행되는 콜백 함수
            var html = '';

            // data를 기반으로 HTML 요소를 동적으로 생성
            for (var i = 0; i < data.length; i++) {
                var board = data[i];
                var boardNo = board.boardNo;
                var imgURL = board.boardChangeImg1;
                var location = board.location;

                if (i === 0) {
                    // 첫 번째 요소는 큰 아이템으로 생성
                    html += '<div class="col-lg-6">' +
                        '<a href="freeBoardDetail.bo?bno=' + boardNo + '" class="feature__location__item large-item set-bg" style="background-image:url(' + imgURL + ')">' +
                        '<div class="feature__location__item__text">' +
                        '<h5>' + location + '</h5>' +
                        '</div>' +
                        '</a>' +
                        '</div>';
                } else if (i === 1) {
                    // 두 번째 요소는 row 내의 작은 아이템으로 생성
                    html += '<div class="col-lg-6">' +
                        '<div class="row">' +
                        '<div class="col-lg-6 col-md-6">' +
                        '<a href="freeBoardDetail.bo?bno=' + boardNo + '" class="feature__location__item set-bg" style="background-image:url(' + imgURL + ')">' +
                        '<div class="feature__location__item__text">' +
                        '<h5>' + location + '</h5>' +
                        '</div>' +
                        '</a>' +
                        '</div>';
                } else if (i === 2) {
                    // 세 번째 요소는 row 내의 작은 아이템으로 생성
                    html += '<div class="col-lg-6 col-md-6">' +
                        '<a href="freeBoardDetail.bo?bno=' + boardNo + '" class="feature__location__item set-bg" style="background-image:url(' + imgURL + ')">' +
                        '<div class="feature__location__item__text">' +
                        '<h5>' + location + '</h5>' +
                        '</div>' +
                        '</a>' +
                        '</div>' +
                        '</div>';
                } else {
                    // 나머지 요소는 단일 아이템으로 생성
                    html += '<a href="freeBoardDetail.bo?bno=' + boardNo + '" class="feature__location__item set-bg" style="background-image:url(' + imgURL + ')">' +
                        '<div class="feature__location__item__text">' +
                        '<h5>' + location + '</h5>' +
                        '</div>' +
                        '</a>';
                }
            }

            // 생성된 HTML을 randomDataContainer에 추가
            $('#randomDataContainer').html(html);
        },
        error: function(xhr, status, error) {
            // AJAX 요청 실패 시 실행되는 콜백 함수
            console.log(error);
        }
    });
});
    </script>
    <!-- Feature Location Section End -->


    





    
	<jsp:include page="common/footer.jsp"/>
	
</body>
</html>
