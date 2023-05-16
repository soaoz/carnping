<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="zxx">

<head>

<meta charset="UTF-8">
<meta name="description" content="Directing Template">
<meta name="keywords" content="Directing, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Directing | Template</title>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700;800&display=swap"
	rel="stylesheet">
<!-- Css Styles -->

<style>
.list_detail_reply {
	padding-left: 75px;
}

.ul_line {
	list-style-type: none;
}

.ul_reply3 {
	display: none;
}

.reImg {
	cursor: pointer;
}

.img {
	width: auto;
	border-radius: 10px;
	cursor: pointer;
	transition: 0.3s;
}
/* 이미지 클릭 시, 밝기 조절 */
.img:hover {
	opacity: 0.8;
}

.modal {
	display: none; /* 모달창 숨겨 놓기 */
	position: fixed;
	z-index: 1; /* 모달창을 제일 앞에 두기 */
	padding-top: 100px;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto; /* 스크롤 허용 auto */
	cursor: pointer; /* 마우스 손가락모양 */
	background-color: rgba(0, 0, 0, 0.8);
}
/* 모달창 이미지 */
.modal_content {
	margin: auto;
	display: block;
	width: 50%;
	height: auto;
	max-width: 1000px;
	border-radius: 10px;
	animation-name: zoom;
	animation-duration: 0.8s;
}

.modal_body {
	z-index: 0; /* 모달창을 제일 앞에 두기 */
  position: absolute;
  top: 50%;
  left: 50%;

  width: 400px;
  height: 600px;

  padding: 40px;

  text-align: center;

  background-color: rgb(255, 255, 255);
  border-radius: 10px;
  box-shadow: 0 2px 3px 0 rgba(34, 36, 38, 0.15);

  transform: translateX(-50%) translateY(-50%);
}

/* 모달창 애니메이션 추가 */
@
keyframes zoom {
	from {transform: scale(0)
}

to {
	transform: scale(1)
}

}
/* 닫기 버튼 꾸미기 */
.close {
	position: absolute;
	top: 15px;
	right: 35px;
	color: #f1f1f1;
	font-size: 40px;
	font-weight: bold;
	transition: 0.3s;
}

.close:hover, .close:focus {
	color: #bbb;
	text-decoration: none;
	cursor: pointer;
}

.comment-box {
	position: relative;
}


.comment {
	position: absolute;
	top: 100%;
	left: 50%;
	transform: translateX(-50%);
	background-color: white;
	padding: 10px;
	box-shadow: 0 2px 6px rgba(0, 0, 0, 0.2);
	border-radius: 5px;
	font-size: 14px;
	color: #333;
	opacity: 0;
	visibility: hidden;
	transition: opacity 0.3s ease, visibility 0.3s ease;
	z-index: 999;
	max-width: 700px;
	text-align: center;
}

.comment:before {
	content: "";
	position: absolute;
	top: -10px;
	left: 50%;
	margin-left: -10px;
	border: 10px solid transparent;
	border-bottom-color: white;
}

.comment-box:hover .comment {
	opacity: 1;
	visibility: visible;
}

#container {
	overflow: hidden;
	height: 300px;
	position: relative;
}

#btnRoadview, #btnMap {
	position: absolute;
	top: 5px;
	left: 5px;
	padding: 7px 12px;
	font-size: 14px;
	border: 1px solid #dbdbdb;
	background-color: #fff;
	border-radius: 2px;
	box-shadow: 0 1px 1px rgba(0, 0, 0, .04);
	z-index: 1;
	cursor: pointer;
}

#btnRoadview:hover, #btnMap:hover {
	background-color: #fcfcfc;
	border: 1px solid #c1c1c1;
}

#container.view_map #mapWrapper {
	z-index: 10;
}

#container.view_map #btnMap {
	display: none;
}

#container.view_roadview #mapWrapper {
	z-index: 0;
}

#container.view_roadview #btnRoadview {
	display: none;
}
</style>

</head>

<body>
	<jsp:include page="../common/header.jsp" />


	<section class="listing-hero set-bg" data-setbg="${ cinfo.cinfoImg1 }">
		<div class="container"> 
			<div class="row">
				<div class="col-lg-8">
					<div class="listing__hero__option">
						<div class="listing__hero__icon">
							<img src="img/listing/ocean.png" alt="">
						</div>
						<div class="listing__hero__text">
							<h2>${ cinfo.cinfoName }</h2>
							<div class="listing__hero__widget">
								<div class="listing__hero__widget__rating">
									<c:forEach var="rating" begin="1" end="${ cinfo.cinfoRating }"
										step="1">
										<span class="icon_star"></span>
									</c:forEach>
									<c:if test="${ ((cinfo.cinfoRating)*10) % 10 >= 5  }">
										<span class="icon_star-half_alt"></span>
									</c:if>
								</div>
							</div>
							<div></div>
							<p>
								<span class="icon_pin_alt"></span>${ cinfo.cinfoAddress }</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="listing__hero__btns">
						<a href="javascript:window.history.back();"
							class="primary-btn share-btn"><i class="fa fa-mail-reply"></i>뒤로가기
						</a> <a href="#" class="primary-btn"><i class="fa fa-bookmark"></i>
							위시리스트</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Listing Section End -->


	<!-- Listing Details Section Begin -->
	<section class="listing-details spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div class="listing__details__text">
						<div class="listing__details__about">
							<h4>소개</h4>
							<p>${ cinfo.cinfoContent }</p>
						</div>
						<hr>
						<div class="listing__details__about">
							<h4>유의사항</h4>
							<p>${ cinfo.cinfoNotice }</p>
						</div>


						<div class="listing__details__gallery">
							<h4>사진</h4>
							<div class="listing__details__gallery__pic">
								<div class="listing__details__gallery__item">
									<img style="width: 1000px; height: 450px;"
										class="listing__details__gallery__item__large"
										src="${ cinfo.cinfoImg1 }" alt=""> <span><i
										class="fa fa-camera"></i> Image</span>
								</div>
								<div class="listing__details__gallery__slider owl-carousel">
									<!-- 포문으로 돌릴거 클래스 유지 되면 온클릭으로 이미지 크게 띄울거-->

									<c:if test="${ cinfo.cinfoImg1 != null }">
										<img data-imgbigurl="${ cinfo.cinfoImg1 }"
											style="width: 200px; height: 120px;"
											src="${ cinfo.cinfoImg1 }" alt="">
									</c:if>
									<c:if test="${ cinfo.cinfoImg2 != null }">
										<img data-imgbigurl="${ cinfo.cinfoImg2 }"
											style="width: 200px; height: 120px;"
											src="${ cinfo.cinfoImg2 }" alt="">
									</c:if>
									<c:if test="${ cinfo.cinfoImg3 != null }">
										<img data-imgbigurl="${ cinfo.cinfoImg3 }"
											style="width: 200px; height: 120px;"
											src="${ cinfo.cinfoImg3 }" alt="">
									</c:if>
									<c:if test="${ cinfo.cinfoImg4 != null }">
										<img data-imgbigurl="${ cinfo.cinfoImg4 }"
											style="width: 200px; height: 120px;"
											src="${ cinfo.cinfoImg4 }" alt="">
									</c:if>
									<c:if test="${ cinfo.cinfoImg5 != null }">
										<img data-imgbigurl="${ cinfo.cinfoImg5 }"
											style="width: 200px; height: 120px;"
											src="${ cinfo.cinfoImg5 }" alt="">
									</c:if>
									<c:if test="${ cinfo.cinfoImg6 != null }">
										<img data-imgbigurl="${ cinfo.cinfoImg6 }"
											style="width: 200px; height: 120px;"
											src="${ cinfo.cinfoImg6 }" alt="">
									</c:if>
									<c:if test="${ cinfo.cinfoImg7 != null }">
										<img data-imgbigurl="${ cinfo.cinfoImg7 }"
											style="width: 200px; height: 120px;"
											src="${ cinfo.cinfoImg7 }" alt="">
									</c:if>
									<c:if test="${ cinfo.cinfoImg8 != null }">
										<img data-imgbigurl="${ cinfo.cinfoImg8 }"
											style="width: 200px; height: 120px;"
											src="${ cinfo.cinfoImg8 }" alt="">
									</c:if>
									<c:if test="${ cinfo.cinfoImg9 != null }">
										<img data-imgbigurl="${ cinfo.cinfoImg9 }"
											style="width: 200px; height: 120px;"
											src="${ cinfo.cinfoImg9 }" alt="">
									</c:if>
									<c:if test="${ cinfo.cinfoImg10 != null }">
										<img data-imgbigurl="${ cinfo.cinfoImg10 }"
											style="width: 200px; height: 120px;"
											src="${ cinfo.cinfoImg10 }" alt="">
									</c:if>

								</div>
							</div>
						</div>
						<div class="listing__details__amenities">
							<h4>주변시설</h4>
							<br>
							<div class="row">
								<c:if test="${ cinfo.cinfoFacilities.contains(facilities[0]) }">
									<div class="col-lg-3 col-md-3 col-6">
										<div class="listing__details__amenities__item">
											<i class="fa-solid fa-restroom fa-2xl"></i>
											<h6>${facilities[0]}</h6>
										</div>
									</div>
								</c:if>
								<c:if test="${ cinfo.cinfoFacilities.contains(facilities[1]) }">
									<div class="col-lg-3 col-md-3 col-6">
										<div class="listing__details__amenities__item">
											<i class="fa-solid fa-store fa-2xl"></i>
											<h6>${facilities[1]}</h6>
										</div>
									</div>
								</c:if>
								<c:if test="${ cinfo.cinfoFacilities.contains(facilities[2]) }">
									<div class="col-lg-3 col-md-3 col-6">
										<div class="listing__details__amenities__item">
											<i class="fa-solid fa-mug-saucer fa-2xl"></i>
											<h6>${facilities[2]}</h6>
										</div>
									</div>
								</c:if>
								<c:if test="${ cinfo.cinfoFacilities.contains(facilities[3]) }">
									<div class="col-lg-3 col-md-3 col-6">
										<div class="listing__details__amenities__item">
											<i class="fa-solid fa-cart-arrow-down fa-2xl"></i>
											<h6>${facilities[3]}</h6>
										</div>
									</div>
								</c:if>
								<c:if test="${ cinfo.cinfoFacilities.contains(facilities[4]) }">
									<div class="col-lg-3 col-md-3 col-6">
										<div class="listing__details__amenities__item">
											<i class="fa-solid fa-utensils fa-2xl"></i>
											<h6>${facilities[4]}</h6>
										</div>
									</div>
								</c:if>
								<c:if test="${ cinfo.cinfoFacilities.contains(facilities[5]) }">
									<div class="col-lg-3 col-md-3 col-6">
										<div class="listing__details__amenities__item">
											<i class="fa-solid fa-square-parking fa-2xl"></i>
											<h6>${facilities[5]}</h6>
										</div>
									</div>
								</c:if>
								<c:if test="${ cinfo.cinfoFacilities.contains(facilities[6]) }">
									<div class="col-lg-3 col-md-3 col-6">
										<div class="listing__details__amenities__item">
											<i class="fa-solid fa-campground fa-2xl"></i>
											<h6>${facilities[6]}</h6>
										</div>
									</div>
								</c:if>
								<c:if test="${ cinfo.cinfoFacilities.contains(facilities[7]) }">
									<div class="col-lg-3 col-md-3 col-6">
										<div class="listing__details__amenities__item">
											<i class="fa-solid fa-hospital fa-2xl"></i>
											<h6>${facilities[7]}</h6>
										</div>
									</div>
								</c:if>
							</div>
						</div>
						<div class="listing__details__rating">
							<h4>평점</h4>
							
							<!-- for(let j= 1; j < review[i].reviewScr.toFixed(); j++){
			               	 	values += "<span class='icon_star'></span>"
			               	}
			               	if((review[i].reviewScr * 10)%10 >= 5){
			               		values += "<span class='icon_star-half_alt'></span>" ;
			               	}else{
			               	 	values += ""
			               	}
			               	for(let j=5; j > review[i].reviewScr.toFixed(); j--){
			               	 	values += "<span class='icon_star_alt'></span>"
			               	}
               	 -->
               				<fmt:parseNumber var="reviewAllView" value="${reCount.reviewAllView}" integerOnly="true" />

               				
							<div class="listing__details__rating__overall">
								<h2>${ reCount.reviewAllView }</h2>
								<div class="listing__details__rating__star">
									<c:forEach var="rating" begin="1"
										end="${reviewAllView }" step="1">
										<span class="icon_star"></span>
									</c:forEach>
									<c:if test="${ reviewAllView != 5 }">
										<c:choose>
											<c:when test="${ ((reCount.reviewAllView)*10) % 10 >= 5  }">
												<span class="icon_star-half_alt"></span>
											</c:when>
											<c:otherwise>
													<span class='icon_star_alt'></span>
											</c:otherwise>
										</c:choose>
										<c:if test="${ reCount.reviewAllView <= 4 }">
											<c:forEach var="rating" begin="1"
												end="${ 4 - reviewAllView}" step="1">
												<span class="icon_star_alt"></span>
											</c:forEach>
										</c:if>
									</c:if>
								</div>
								<span>(${ reCount.count }개 리뷰)</span>
							</div>
							<div class="listing__details__rating__bar">
								<div class="listing__details__rating__bar__item">
									<span>${ reCount.reviewAllView }</span>
									<div id="bar1" class="barfiller">
										<span class="fill"
											data-percentage="${ reCount.reviewAllView * 20 }"></span>
									</div>
									<span class="right">뷰</span>
								</div>
								<div class="listing__details__rating__bar__item">
									<span>${ reCount.reviewView }</span>
									<div id="bar2" class="barfiller">
										<span class="fill"
											data-percentage="${ reCount.reviewView * 20 }"></span>
									</div>
									<span class="right">편의</span>
								</div>
								<div class="listing__details__rating__bar__item">
									<span>${ reCount.reviewConv }</span>
									<div id="bar3" class="barfiller">
										<span class="fill"
											data-percentage="${ reCount.reviewConv * 20 }"></span>
									</div>
									<span class="right">접근</span>
								</div>
								<div class="listing__details__rating__bar__item">
									<span>${ reCount.reviewAccess }</span>
									<div id="bar4" class="barfiller">
										<span class="fill"
											data-percentage="${ reCount.reviewAccess * 20}"></span>
									</div>
									<span class="right">지형</span>
								</div>
							</div>
						</div>
						<ul class="listing__details__comment ul_line">
							<h4>리뷰</h4>
							<div></div>
						</ul>
						<br>
						<div class="listing__details__review">
							<h4>리뷰 작성</h4>
								<div class="comment-box">
									<small style="color: gray" id="comment"> 마우스를 갖다 대어
										보세요! </small>
									<div class="comment">
										*평점을 입력해주세요! (1~5점을 입력해주세요. 4개의 항목의 평균이 평점에 적용됩니다.)* <br>
										1. 뷰: 전망이 좋은가요? <br> 2. 편의성 : 주변에 편의시설들이 어떠한가요? <br>
										3. 접근성 : 접근하기 편한가요? <br> 4. 지형 : 지형은 평평하며 차박하기에 편한 지형인가요?
									</div>
								</div>
							<form id="insertReview" action="insertReview.ca" method="post" enctype="multipart/form-data">

								<br>
								<c:choose>
									<c:when test="${ not empty loginMember }">
										<div class="row">
											<input type="hidden" name="memNo"
												value="${ loginMember.memNo }">
											<input type="hidden" name="cinfoNo"
												value="${ cinfo.cinfoNo }">
											<div class="col-md-3">
												<input type="number" class="form-control" name="reviewView"
													placeholder="뷰" required />
											</div>
											<div class="col-md-3">
												<input type="number" class="form-control" name="reviewConv"
													placeholder="편의성" required />
											</div>
											<div class="col-md-3">
												<input type="number" class="form-control"
													name="reviewAccess" placeholder="접근성" required />
											</div>
											<div class="col-md-3">
												<input type="number" class="form-control" name="reviewType"
													placeholder="지형" required />
											</div>
											<textarea name="reviewContent" placeholder="Review"></textarea>
											<input type="file" name="upfile" />
											<button type="submit" class="site-btn">리뷰등록</button>
										</div>
									</c:when>
									<c:otherwise>
										<div class="row">
											<div class="col-md-3">
												<input type="number" class="form-control" placeholder="뷰"
													required disabled />
											</div>
											<div class="col-md-3">
												<input type="number" class="form-control" placeholder="편의성"
													required disabled />
											</div>
											<div class="col-md-3">
												<input type="number" class="form-control" placeholder="접근성"
													required disabled />
											</div>
											<div class="col-md-3">
												<input type="number" class="form-control" placeholder="지형"
													required disabled />
											</div>
											<textarea placeholder="Review" disabled>로그인 후 리뷰 등록이 가능합니다.</textarea>
											<button type="submit" class="site-btn" disabled>리뷰등록</button>
										</div>
									</c:otherwise>
								</c:choose>

							</form>
						</div>
					</div>
				</div>
				<!-- 리뷰 끝 -->
				<div class="col-lg-4">
					<div class="listing__sidebar">
						<div class="listing__sidebar__contact">
							<!--  <div class="listing__sidebar__contact__map">
                            <div id="map" style="width: 100%; height: 100%;position: absolute; "></div>
                        </div> -->
							<div id="container" class="view_map">
								<div id="mapWrapper"
									style="width: 100%; height: 300px; position: relative;">
									<div id="map" style="width: 100%; height: 100%"></div>
									<!-- 지도를 표시할 div 입니다 -->
									<input type="button" id="btnRoadview"
										onclick="toggleMap(false)" title="로드뷰 보기" value="로드뷰">
								</div>
								<div id="rvWrapper"
									style="width: 100%; height: 300px; position: absolute; top: 0; left: 0;">
									<div id="roadview" style="height: 100%"></div>
									<!-- 로드뷰를 표시할 div 입니다 -->
									<input type="button" id="btnMap" onclick="toggleMap(true)"
										title="지도 보기" value="지도">
								</div>
							</div>

							<div class="listing__sidebar__contact__text">
								<h4>지도정보</h4>
								<ul>
									<li><span class="icon_pin_alt"></span> ${ cinfo.cinfoAddress }</li>
									<li><span class="icon_phone"></span> ${ cinfo.phone }</li>
								</ul>
								<!-- <div class="listing__sidebar__contact__social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a>
                                <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
                                <a href="#" class="google"><i class="fa fa-google"></i></a>
                            </div> -->
							</div>
						</div>
						<div class="listing__sidebar__working__hours">
							<h4>오픈일자</h4>
							<ul>
								<c:forEach var="i" begin="0" end="6">
									<c:choose>
										<c:when test="${ cinfo.cinfoDays.contains(week[i]) }">
											<li>${week[i]}요일<span class="opening">Opening</span></li>
										</c:when>
										<c:otherwise>
											<li>${week[i]}요일<span class="closed">Closed</span></li>
										</c:otherwise>
									</c:choose>
								</c:forEach>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="modal" id="updateReview">
			<span class="close">&times;</span> 
			<div class="modal_body">안녕하세요</div>
		</div>
		
		<div class="modal" id="imgView">
			<span class="close">&times;</span> <img class="modal_content"
				id="img01">
		</div>
	</section>
	<!-- Listing Details Section End -->


<!-- Button to trigger the modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
  Open modal
</button>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      </div>
      <div class="modal-body">
        <form>
          <div class="form-group">
            <label for="inputName">뷰(View)</label>
            <input type="text" class="form-control" id="inputName" placeholder="Enter name">
            <label for="inputName">편의성(Conv)</label>
            <input type="text" class="form-control" id="inputName" placeholder="Enter name">
            <label for="inputName">접근성(Access)</label>
            <input type="text" class="form-control" id="inputName" placeholder="Enter name">
            <label for="inputName">지형(Type)</label>
            <input type="text" class="form-control" id="inputName" placeholder="Enter name">
          </div>
          <div class="form-group">
            <label for="inputEmail">Email</label>
            <input type="email" class="form-control" id="inputEmail" placeholder="Enter email">
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
	<jsp:include page="../common/footer.jsp" />

	<!-- Js Plugins -->
	<script src="https://kit.fontawesome.com/0376f7be50.js"
		crossorigin="anonymous"></script>
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
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c51db8bdf50f603f1ca7fd3444ea0dab&libraries=services,clusterer,drawing"></script>

	<script>
let inRe = "";
let count = 0;
$(function(){
	
    selectReview();
    
    var container = document.getElementById('container'), // 지도와 로드뷰를 감싸고 있는 div 입니다
    mapWrapper = document.getElementById('mapWrapper'), // 지도를 감싸고 있는 div 입니다
    btnRoadview = document.getElementById('btnRoadview'), // 지도 위의 로드뷰 버튼, 클릭하면 지도는 감춰지고 로드뷰가 보입니다 
    btnMap = document.getElementById('btnMap'), // 로드뷰 위의 지도 버튼, 클릭하면 로드뷰는 감춰지고 지도가 보입니다 
    rvContainer = document.getElementById('roadview'), // 로드뷰를 표시할 div 입니다
    mapContainer = document.getElementById('map'); // 지도를 표시할 div 입니다

	// 지도와 로드뷰 위에 마커로 표시할 특정 장소의 좌표입니다 
	var placePosition = new kakao.maps.LatLng(${cinfo.cinfoLttd}, ${cinfo.cinfoHrdns});
	
	// 지도 옵션입니다 
	var mapOption = {
	    center: placePosition, // 지도의 중심좌표 
	    level: 7 // 지도의 확대 레벨
	};
	
	// 지도를 표시할 div와 지도 옵션으로 지도를 생성합니다
	var map = new kakao.maps.Map(mapContainer, mapOption);
	
	// 로드뷰 객체를 생성합니다 
	var roadview = new kakao.maps.Roadview(rvContainer);
	
	// 로드뷰의 위치를 특정 장소를 포함하는 파노라마 ID로 설정합니다
	// 로드뷰의 파노라마 ID는 Wizard를 사용하면 쉽게 얻을수 있습니다 
	roadview.setPanoId(1023434522, placePosition);
	
	// 특정 장소가 잘보이도록 로드뷰의 적절한 시점(ViewPoint)을 설정합니다 
	// Wizard를 사용하면 적절한 로드뷰 시점(ViewPoint)값을 쉽게 확인할 수 있습니다
	roadview.setViewpoint({
	    pan: 321,
	    tilt: 0,
	    zoom: 0
	});
	
	// 지도 중심을 표시할 마커를 생성하고 특정 장소 위에 표시합니다 
	var mapMarker = new kakao.maps.Marker({
	    position: placePosition,
	    map: map
	});
	
	// 로드뷰 초기화가 완료되면 
	kakao.maps.event.addListener(roadview, 'init', function() {
	
	    // 로드뷰에 특정 장소를 표시할 마커를 생성하고 로드뷰 위에 표시합니다 
	    var rvMarker = new kakao.maps.Marker({
	        position: placePosition,
	        map: roadview
	    });
	});
})

toggleMap = function(active) {
	    if (active) {
	
	        // 지도가 보이도록 지도와 로드뷰를 감싸고 있는 div의 class를 변경합니다
	        container.className = "view_map"
	    } else {
	
	        // 지도가 숨겨지도록 지도와 로드뷰를 감싸고 있는 div의 class를 변경합니다
	        container.className = "view_roadview"   
	    }
	}


/* 리뷰 리스트 */
function selectReview(){
	$.ajax({
		url : 'selectReview.ca',
		data : { cinfoNo : '${cinfo.cinfoNo}'},
		success:function(review){
			
			//지금 현재 로그인되어있는 userNo
			let userNo = "<c:out value='${loginMember.memNo}'/>";
			let values = "";
			for(let i in comment){
				values += "<hr><li><div class='listing__details__comment__item'>"
                		+  		"<div class='listing__details__comment__item__pic'>"
                			// 회원 이미지가 없을때
                		if(review[i].memImg==null){
                			values +=  "<i class='fa-solid fa-circle-user'style='padding: unset; font-size: 65px;'></i>";
                		}else{
                			// 회원이미지가 있을때
                			values +=  "<img src='"+ review[i].memImg +"' >";                
                		}
                values +=		"</div>"
                		+		"<div class='listing__details__comment__item__text'>"
                							// 날짜
                    	+ 			 "<span>" + review[i].createDate +"</span>"
                    						// 회원이름
                    	+ 			 "<h5>" + review[i].memName +"</h5>"
                    	+ 			 "<div class='row'>"
                    	+ 			 	"<div class='col-md-12'>";
                    		// 댓글 내용
	                    	values +="<p>" + review[i].reviewContent + "</p>"
               						+ "</div>
			                    	+	 "</div><br>"
			                    	+	"<ul class='ul_line'>"
                    	<c:choose>
			                    	
			                //if(userNo==review[i].memNo){
                    		//values+= "<li><button class='btn' onclick='updateReview(\""+review[i] +"\");'>댓글 수정</button></li>"               			
                    		//		+"<li><button class='btn'>댓글 삭제</button></li>";                			
			                //}
                    	values+=  "<input type='hidden' value='"+review[i].reviewNo+"'></li>"
                        values += "<br><br></ul></div></div></li>";
				}
				$('.listing__details__comment div').html(values);
		}
	})
}


	


</script>

</body>

</html>