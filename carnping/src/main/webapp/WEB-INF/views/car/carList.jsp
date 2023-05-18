<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="utf-8">

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
<link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css"> -->
<link rel="stylesheet" href="resources/css/style.css" type="text/css"> 

<style>


.header_back {
	width: 100%;
	height: 110px;
	background-color: #b3d9b1;
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
	background:
		url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');
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
	background:
		url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')
}

.info .link {
	color: #5085BB;
}

/* 좌여css 시작  */
.listing__item__pic__btns a {
	font-size: 17px !important;
	color: #ffffff;
	height: 34px;
	width: 34px;
	background: rgba(255, 255, 255, 0.2);
	border-radius: 50%;
	line-height: 34px;
	text-align: center;
	display: inline-block;
	margin-right: 6px;
	padding-right: 0px !important;
}

.like-button i {
	padding-right: 0px !important;
	padding-top: 8px !important;
}

.fa-regular.fa-heart {
	color: #fff;
}

.fa-solid.fa-heart {
	color: red;
}

 .custom-select {
    position: relative;
    display: inline-block;
    font-family: Arial, sans-serif;
  }

  .custom-select select {
    padding: 8px 16px;
    background-color: #f9f9f9;
    border: 1px solid #ddd;
    border-radius: 4px;
    cursor: pointer;
    transition: background-color 0.3s ease;
  }

  .custom-select select:hover {
    background-color: #e9e9e9;
  }
</style>

</head>

<body class="ov-hid">


	<header class="header header--normal">
		<div class="header_back">
			<jsp:include page="../common/header.jsp" />
		</div>
	</header>


	<!-- Filter Begin -->
	<div class="filter nice-scroll">
		<form id='searchForm' action='filter.ca' method="get" align="center">
			<div class="filter__title">
				<h5>
					<i class="fa fa-filter"></i>필터
				</h5>
			</div>
			<br>
			<br>
			<div class="filter__location">
				<input type="text" placeholder="제목을 입력하는 공간!" name="title"
					value="title"> <i class="fa fa-map-marker"></i>
			</div>
			<div class="filter__select">
				<select name="sequence" class="custom-select">
					<option id="default" value="default">순서</option>
					<option id="rating" value="rating">평점순</option>
					<option id="view" value="view">조회수순</option>
					<option id="name" value="name">이름순</option>
				</select>
			</div>

			<div class="filter__select">
				<select class="custom-select" name="location">
					<option id="all" value="all">지역</option>
					<option id="서울" value="서울">서울</option>
					<option id="인천" value="인천">인천</option>
					<option id="경기" value="경기">경기도</option>
					<option id="강원" value="강원">강원도</option>
				</select>
			</div>

			<div class="filter__tags">
				<h6>주변에 이런게 있어요!</h6>
				<label for="coupon"> 화장실 <input type="checkbox" id="coupon"
					name="facility" value="화장실"> <span class="checkmark"></span>
				</label> <label for="sa"> 편의점 <input type="checkbox" id="sa"
					name="facility" value="편의점"> <span class="checkmark"></span>
				</label> <label for="camping"> 카페 <input type="checkbox"
					id="camping" name="facility" value="카페"> <span
					class="checkmark"></span>
				</label> <label for="hot-spots"> 마트 <input type="checkbox"
					id="hot-spots" name="facility" value="마트"> <span
					class="checkmark"></span>
				</label> <label for="internet"> 음식점 <input type="checkbox"
					id="internet" name="facility" value="음식점"> <span
					class="checkmark"></span>
				</label> <label for="tr"> 주차장 <input type="checkbox" id="tr"
					name="facility" value="주차장"> <span class="checkmark"></span>
				</label> <label for="hd"> 캠핑장 <input type="checkbox" id="hd"
					name="facility" value="캠핑장"> <span class="checkmark"></span>
				</label> <label for="ht"> 병원 <input type="checkbox" id="ht"
					name="facility" value="병원"> <span class="checkmark"></span>
				</label>
			</div>
			
			<div class="filter__btns">
				<button type="submit">필터 적용</button>
				<button type="reset" class="filter__reset">초기화</button>
			</div>
		</form>
	</div>
	<!-- Filter End -->

	<!-- Listing Section Begin -->

	<section class="listing nice-scroll">
		<div class="listing__text__top">
			<div class="listing__text__top__left">
				<h5>차박정보 리스트</h5>
				<span>Results Found</span>
			</div>

		</div>
		<div class="listing__list">
			<c:choose>
				<c:when test="${ not empty list }">
					<c:forEach var="list" items="${ list }">
						<div class="listing__item">
							<input type="hidden" value="${ list.cinfoNo }">
							<div class="listing__item__pic set-bg"
								data-setbg="${ list.cinfoImg1 }" style="cursor: pointer"onclick="detail('${ list.cinfoNo }');">

								<!--  
        <div class="listing__item__pic__tag">Popular</div>
        <div class="listing__item__pic__btns">
            <a href="#"><span class="icon_zoom-in_alt"></span></a>
            <a href="#"><span class="icon_heart_alt"></span></a>
        </div>
        -->

								<!--  소영 : 좋아요 코드 시작 -->
								<div class="listing__item__pic__btns"
									onClick="event.stopPropagation();">
									<script>
        // 잠시 묶어 두겠습니다
    /*    $(document).ready(function() {
            selectLike("${ list.cinfoNo }" , "#like${ list.cinfoNo }");
            function selectLike(cinfoNo, id){
                var cinfoNo = cinfoNo;
                var id  = id;

                console.log("좋아요조회 함수 실행함")
                console.log(cinfoNo);
                console.log(id);
                $.ajax({
                    url : "selectLike.me",
                    type : "post",
                    data : {"cinfoNo": cinfoNo},
                    success : function(result){
                        console.log("성공  : " + result)

                        if(result>0){
                            console.log("성공 " + id);
                            $(id).addClass('fa-solid');
                        }else{
                        }
                    },
                    error: function(xhr, status, error) {
                        // 삭제 실패시 처리할 로직
                        alert("삭제 실패: " + error);
                        console.error(error); 
                    }
                    
                });
            }
        });  */
        
        $(document).on('click', '.like-button', function(e) {
            e.preventDefault();
            $(this).find('i.fa-solid').toggleClass('fa-regular');
        });
        </script>

									<a href="#"> <span class="like-button" class=""
										onClick="like('${ list.cinfoNo }' , '#like${ list.cinfoNo }');">
											<i class="fa-regular fa-heart" id="like${ list.cinfoNo }"></i>
									</span>
									</a>
								</div>
								<fmt:parseNumber var="cinfoRating" value="${list.cinfoRating}"
									integerOnly="true" />
								<!--  소영 : 좋아요 코드 끝 -->
							</div>
							<div class="listing__item__text" style="cursor: pointer"
								onclick="detail('${ list.cinfoNo }');">
								<div class="listing__item__text__inside">
									<h5>${ list.cinfoName }</h5>

									<ul>
										<li><span class="icon_pin_alt"></span>${ list.cinfoAddress }</li>
										<li><span class="icon_phone"></span>${ list.phone }</li>
									</ul>
								</div>
								<div class="listing__item__text__rating">
									<div class="listing__item__text__info__left">
										<span>오픈요일</span>
									</div>
									<div class="listing__item__text__info__right">${ list.cinfoDays }</div>
								</div>
								<div class="listing__item__text__rating">
									<div class="listing__item__text__info__left">
										<span>평점</span>
									</div>

									<div class="listing__item__text__info__right">
										<div class="listing__item__text__rating">
											<div class="listing__item__rating__star">
												<c:forEach var="rating" begin="1" end="${cinfoRating }"
													step="1">
													<span class="icon_star"></span>
												</c:forEach>
												<c:if test="${ cinfoRating != 5 }">
													<c:choose>
														<c:when test="${ ((list.cinfoRating)*10) % 10 >= 5  }">
															<span class="icon_star-half_alt"></span>
														</c:when>
														<c:otherwise>
															<span class='icon_star_alt'></span>
														</c:otherwise>
													</c:choose>
													<c:if test="${ list.cinfoRating <= 4 }">
														<c:forEach var="rating" begin="1"
															end="${ 4 - cinfoRating}" step="1">
															<span class="icon_star_alt"></span>
														</c:forEach>
													</c:if>
												</c:if>
											</div>
										</div>
									</div>
								</div>
								<div class="listing__item__text__rating">
									<div class="listing__item__text__info__left">
										<span>조회수</span>
									</div>
									<div class="listing__item__text__info__right">${ list.cinfoViews }</div>
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
		<div id="map" style="width: 100%; height: 100%;"></div>
		<!-- <iframe 
src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d423283.43556031643!2d-118.69192431097179!3d34.020730495817475!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80c2c75ddc27da13%3A0xe22fdf6f254608f4!2sLos%20Angeles%2C%20CA%2C%20USA!5e0!3m2!1sen!2sbd!4v1586670019340!5m2!1sen!2sbd" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe> -->
	</div>

	<!-- Map End -->
	<!-- Js Plugins -->
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c51db8bdf50f603f1ca7fd3444ea0dab&libraries=services,clusterer,drawing"></script>
	<script>
/* 소영 좋아요코드 시작 */

$(document).ready(function() {
	  $('.like-button').click(function(e) {
	    e.preventDefault();
	    $(this).find('i.fa-regular').toggleClass('fa-solid');
	  });
}); 
    	
function like(cinfoNo , id){
	//console.log("글번호 : "+cinfoNo+ " 아이디 : " + id);
	
 
	if ($(id).hasClass('fa-solid')) {
	    // fa-regular 클래스가 있을 때
	    //console.log("하트가 빨간색일떄 클릭함 -> delete해야함 ")
	    
	    //좋아요 삭제
        $.ajax({
            url: "deleteLike.me",
            type: "POST",
            data: { "cinfoNo": cinfoNo },
            success: function(result) {
                if (result>0) {
                	//console.log("좋아요삭제완료");
                	/* deletedCount = result;
                    alert(deletedCount + "개의 게시물이 삭제되었습니다.");
                    myPostList();  */
                } else {
                	console.log("좋아요삭제 실패패패패패");
                    /* alert("삭제에 실패하였습니다."); */
                }
            },
            error: function(jqXHR, textStatus, errorThrown) {
                console.log("Error: " + textStatus + " " + errorThrown);
            }

        });
	    
	    
	    
	} else {
	    // fa-regular 클래스가 없을 때
	    //console.log("하트가 흰색일떄 클릭함 -> insert해야함 ")
	    
	    //좋아요 INSERT
        $.ajax({
            url: "insertLike.me",
            type: "POST",
            data: { "cinfoNo": cinfoNo },
            success: function(result) {
                if (result>0) {
                	//console.log("좋아요인서트완료");
                	/* deletedCount = result;
                    alert(deletedCount + "개의 게시물이 삭제되었습니다.");
                    myPostList();  */
                } else {
                	//console.log("좋아요인서트실패패패패패");
                    /* alert("삭제에 실패하였습니다."); */
                }
            },
            error: function(jqXHR, textStatus, errorThrown) {
                console.log("Error: " + textStatus + " " + errorThrown);
            }

        });
		
	}

}
/* 소영 좋아요코드 끝 */

	
	$(function(){
		$('.listing__item').on('click', function(){
			location.href='detail.ca?cinfoNo=' +$(this).children("input[type=hidden]").val(); 
		})
        var $positions = [];
        var map;

/* 		// 차박정보를 불러와 위도 경도 값을 ajax로 받아오는 ajax 
		$("input[name=title]").val(filter.title); */
		
		let array = new Array();
		/* console.log(formData);
		let a = formData.split('&');
		console.log(a); */
		<c:forEach items="${list}" var="item">
			array.push([{cinfoNo : "${item.cinfoNo}"
					, cinfoName :"${item.cinfoName}"
					, cinfoContent :"${item.cinfoContent}"
					, cinfoNotice :"${item.cinfoNotice}"
					, cinfoLttd :"${item.cinfoLttd}"
					, cinfoHrdns :"${item.cinfoHrdns}"
					, cinfoStatus :"${item.cinfoStatus}"
					, cinfoAddress :"${item.cinfoAddress}"
					, cinfoFacilities :"${item.cinfoFacilities}"
					, cinfoDays :"${item.cinfoDays}"
					, cinfoTag :"${item.cinfoTag}"
					, cinfoRating :"${item.cinfoRating}"
					, cinfoViews :"${item.cinfoViews}"
					, cinfoModified :"${item.cinfoModified}"
					, cinfoRgstrDate :"${item.cinfoRgstrDate}"
					, memNo :"${item.memNo}"
					, cinfoImg1 :"${item.cinfoImg1}"
					, cinfoImg2 :"${item.cinfoImg2}"
					, cinfoImg3 :"${item.cinfoImg3}"
					, cinfoImg4 :"${item.cinfoImg4}"
					, cinfoImg5 :"${item.cinfoImg5}"
					, cinfoImg6 :"${item.cinfoImg6}"
					, cinfoImg7 :"${item.cinfoImg7}"
					, cinfoImg8 :"${item.cinfoImg8}"
					, cinfoImg9 :"${item.cinfoImg9}"
					, cinfoImg10 :"${item.cinfoImg10}"
					, phone :"${item.phone}"}])
		</c:forEach>
		
		array.forEach(function (rs) {
			
            $positions.push([{
                content: "<div style='cursor: pointer'onclick='detail(\""+rs[0].cinfoNo+"\");'><div class='listing__item'><div class='listing__item__pic set-bg' style='background-image:url("+rs[0].cinfoImg1+"\');></div>"
                        +"<div class='listing__item__text'><div class='listing__item__text__inside'><h5>"+rs[0].cinfoName+"</h5><div class='listing__item__text__rating'></div>"
                        +"<ul><li><span class='icon_pin_alt'></span>"+rs[0].cinfoAddress+"</li>"
                        +"<li><span class='icon_phone'></span>"+rs[0].phone+"</li></ul></div></div></div></div>",
                latlng: new kakao.maps.LatLng(rs[0].cinfoLttd, rs[0].cinfoHrdns)
            }])
        })
        
        
        let add =[];
        let location = "<c:out value='${location}'/>";
        
        if(location === '강원'){
        	add = [37.881591,127.730561];
        }else if(location === '인천'){
        	add = [37.456255,126.705206];
        }else if(location === '경기'){
        	add = [37.263573,127.028601];
        }else{
        	add = [37.541, 126.986];
        }
         
        console.log(add);
        map = new kakao.maps.Map(document.getElementById('map'), { 
               // 지도의 중심좌표
               
               center : new kakao.maps.LatLng(add[0], add[1]), 
            	
               // 지도의 확대 레벨
               level : 11
		});
		
		
		
		/* $list.forEach(function(li,i){
			console.log(li);
		}) */
		
       /*  $.ajax({
            url: 'carMap.ca',
            async: false,
            contentType: "application/x-www-form-urlencoded; charset=UTF-8", 
            data: formData,

            success: function (result) {
                result.forEach(function (rs, i) {
                    $positions.push([{
                        content: "<div style='cursor: pointer'onclick='detail(\""+rs.cinfoNo+"\");'><div class='listing__item'><div class='listing__item__pic set-bg' style='background-image:url("+rs.cinfoImg1+"\');> <img src='resources/img/carList/icon/ocean.png' alt=''></div>"
                                +"<div class='listing__item__text'><div class='listing__item__text__inside'><h5>"+rs.cinfoName+"</h5><div class='listing__item__text__rating'></div>"
                                +"<ul><li><span class='icon_pin_alt'></span>"+rs.cinfoAddress+"</li>"
                                +"<li><span class='icon_phone'></span>"+rs.phone+"</li></ul></div></div></div></div>",
                        latlng: new kakao.maps.LatLng(rs.cinfoLttd, rs.cinfoHrdns)
                    }])
                })
                map = new kakao.maps.Map(document.getElementById('map'), { 
                // 지도의 중심좌표
                center : new kakao.maps.LatLng(36.2683, 127.6358), 
                // 지도의 확대 레벨
                level : 10 
                });
            }
        }) */
        
        <c:if test="${filter != null}">
			$("input[name=title]").val("${filter.title}");
			$("select[name=sequence]").val("${filter.sequence}").attr("selected",true);
			$("select[name=sequence]").val("${filter.sequence}").prop("selected","selected");
			$("select[name=location]").val("${filter.location}").attr("selected",true);
			$("select[name=location]").val("${filter.location}").prop("selected","selected");
			let facility = '<c:out value="${facility}"/>'.split(",");
					console.log("이거 타?");
			 $("input[name=facility]").map(function(i, result) {
				for(let f of facility){
					if(f == result.value){
						$("input[value="+ result.value +"]").attr("checked", true);
					}
				} 
			})
	</c:if>
    // 마커 클러스터러를 생성합니다
    var clusterer = new kakao.maps.MarkerClusterer({
        map: map, // 마커들을 클러스터로 관리하고 표시할 지도 객체
        averageCenter: true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정
        minLevel: 10, // 클러스터 할 최소 지도 레벨
        disableClickZoom: true // 클러스터 마커를 클릭했을 때 지도가 확대되지 않도록 설정한다
    });
  
    var markers = $($positions).map(function(i, position) {
            return new kakao.maps.Marker({
                position : position[0].latlng
            });
           
        });

    // 클러스터러에 마커들을 추가합니다
    clusterer.addMarkers(markers);
    
    // 여러개의 마커들마다 click 값을 부여합니다.
    for(let i = 0 ; i < markers.length; i++ ){
        kakao.maps.event.addListener(markers[i], 'click', function() {
            // 마커 위에 인포윈도우를 표시합니다
            new kakao.maps.InfoWindow({
                    content : $positions[i][0].content,
                    removable :true}).open(map, markers[i]) 
        });
    }
    
    // 마커 클러스터러에 클릭이벤트를 등록합니다
    // 마커 클러스터러를 생성할 때 disableClickZoom을 true로 설정하지 않은 경우
    // 이벤트 헨들러로 cluster 객체가 넘어오지 않을 수도 있습니다
    kakao.maps.event.addListener(clusterer, 'clusterclick', function(cluster) {

   // 현재 지도 레벨에서 1레벨 확대한 레벨
    var level = map.getLevel()-1;
    
    // 지도를 클릭된 클러스터의 마커의 위치를 기준으로 확대합니다
    map.setLevel(level, {anchor: cluster.getCenter()});
    });
    
});
detail = function(cinfoNo){
	location.href='detail.ca?cinfoNo=' +cinfoNo; 
}
</script>

	<script src="resources/js/main.js"></script>
	</body>

</html>