<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>

<html class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>GARO ESTATE | Submit property Page</title>
<meta name="description" content="GARO is a real-estate template">
<meta name="author" content="Kimarotec">
<meta name="keyword"
	content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.wrap-vertical {
	width: 500px;
	padding: 20px;
	overflow: scroll;
	align: center;
	/* 가로 스크롤 */
	overflow: auto;
	white-space: nowrap;
}

.map_wrap {
	position: relative;
	width: 100%;
	height: 350px;
}

.title {
	font-weight: bold;
	display: block;
}

.hAddr {
	position: absolute;
	left: 10px;
	top: 10px;
	border-radius: 2px;
	background: #fff;
	background: rgba(255, 255, 255, 0.8);
	z-index: 1;
	padding: 5px;
}

#centerAddr {
	display: block;
	margin-top: 2px;
	font-weight: normal;
}

.bAddr {
	padding: 5px;
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}

.myPage-header-area {
	width: 100%;
	height: 123px;
	background-color: #b3d9b1;
}

#progress {
	margin: 10px 100px 10px 100px;
	position: relative;
}

#progress-bar {
	position: absolute;
	background: lightseagreen;
	height: 5px;
	width: 0%;
	top: 50%;
	left: 0;
	transition: width 0.3s ease-in-out; /* 추가 */
}

#progress-num {
	margin: 0;
	padding: 0px;
	list-style: none;
	display: flex;
	justify-content: space-between;
}

#progress-num::before {
	content: "";
	background-color: lightgray;
	position: absolute;
	top: 50%;
	left: 0;
	height: 5px;
	width: 100%;
	z-index: -1;
}

#progress-num .step {
	box-shadow: 0px 0px 0px 3px lightseagreen;
	border-radius: 100%;
	width: 25px;
	height: 25px;
	line-height: 25px;
	text-align: center;
	background-color: #fff;
	font-family: sans-serif;
	font-size: 14px;
	position: relative;
	z-index: 1;
	display: fiex;
}

#progress-num .step.active {
	border-color: lightseagreen;
	background-color: lightseagreen;
	color: #fff;
}

.box-in {
	/* 2개의 div를 한 행에 배치 */
	white-space: nowrap;
	margin: 10px 100px 10px 100px;
}

.btn-div {
	width: 50%;
	height: 100px;
	/* display 속성을 inline-block으로 설정 */
	display: inline-block;
	/* 폰트 크기를 0으로 설정하여 공백 제거 */
	font-size: 0;
}
</style>
</head>
<body>
	<div class="myPage-header-area">
		<jsp:include page="../common/header.jsp" />
	</div>
	<br>
	<br>

	<div align="center">
		<h4>차박정보 등록</h4>
		<small style="color: gray">자신이 다녀온 차박지를 편하게 소개해주세요!</small>
	</div>

	<div id="progress">

		<div id="progress-bar"></div>
		<ul id="progress-num">
			<li class="step active">1</li>
			<li class="step">2</li>
			<li class="step">3</li>
			<li class="step">4</li>
		</ul>
	</div>
	<br>
	<form action="insertCarRequest.ca" method="post"
		enctype="multipart/form-data" id="insertCar">
		<div class="box-in">

			<div id="step1">
				<h4 align="center">차박의 대표이미지와 위치를 알려주세요!</h4>
				<br>
				<div class="row">
					<div class="col-sm-6 col-sm-offset-1">
						<div align="center">
							<img id="myFile1" class="avatar-img" src=""
								onclick="myChooseFile();" alt="이미지 로딩 중입니다..."
								onerror="this.onerror=null; this.src='resources/img/click.png'"
								style="border: 0.5px solid lightgray; width: 200px; height: 200px; cursor: pointer; display: flex; justify-content: center; align-items: center;">

							<input type="file" name="upfile" id="myFileInput"
								style="display: none;" onchange="myLoadImg(this);"
								accept="image/*" />
						</div>
						<div align="center" id="mainImg">

							<small style='color: red;'>대표 이미지를 삽입해주세요<br></small>

						</div>
					</div>
					<div class="col-sm-6">

						<div class="form-group">
							<label>제목</label> <input name="verifyName" type="text"
								class="form-control" placeholder="추천하신 지역의 재치있는 이름을 지어주세요!">
						</div>
						<div class="form-group">
							<label>내용</label>
							<textarea name="verifyContent" type="text" class="form-control"
								placeholder="추천하는 지역을 저희에게 소개해주세요!"></textarea>
						</div>
						<div class="form-group">
							<label>주의사항</label>
							<textarea name="verifyNotice" type="text" class="form-control"
								placeholder="추천하는 지역은 이걸 주의해야해요!"></textarea>
						</div>
						<div class="form-group">
							<label>사유</label>
							<textarea name="verifyReason" type="text" class="form-control"
								placeholder="사유를 입력하세요."></textarea>
						</div>
						<br>
					</div>
					<hr>

					<div class="col-sm-6 padding-top-15">
						<br>
						<div class="form-group">
							<div class="map_wrap">
								<div id="map" style="width: 100%; height: 350px;"></div>
								<div class="hAddr">
									<span class="title">지도중심기준 행정동 주소정보</span> <span
										id="centerAddr"></span>
								</div>
							</div>
						</div>
						<small>* 주소 입력 후 지도 내에 주소 클릭시 구글 검색이 가능합니다.</small>
					</div>
					<div class="col-sm-6">
						<br>
						<div class="col-sm-12">
							<div class="form-group">
								<div id="addressDiv2">
									<label>주소</label> <input type="text" class="form-control"
										id="address2" placeholder="주소찾기를 통해 주소를 입력받으세요!"
										name="verifyAddress" readonly><br> <input
										type="button" class="btn primary-btn btn-md" onclick="juso();"
										value="주소찾기"><br> <br> <input type="hidden"
										name="verifyLttd"> <input type="hidden"
										name="verifyHrdns">

								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
			<!-- Step2 -->
			<div id="step2" style="display: none;">
				<h4 align="center">주변은 괜찮나요? 언제 오픈하나요?</h4>
				<br> <br>
				<div class="row">
					<div class="col-sm-12">
						<h5>편의시설</h5>
						<br>
					</div>
					<div class="col-sm-3">
						<div class="">
							<label> <input type="checkbox"
								style="position: static; opacity: 1; width: 15px; height: 15px"
								name="verifyFacilitie" value="화장실"> 화장실
							</label>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="form-group">
							<div class="checkbox">
								<label> <input type="checkbox"
									style="position: static; opacity: 1; width: 15px; height: 15px"
									name="verifyFacilitie" value="편의점"> 편의점
								</label>
							</div>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="form-group">
							<div class="checkbox">
								<label> <input type="checkbox"
									style="position: static; opacity: 1; width: 15px; height: 15px"
									name="verifyFacilitie" value="카페"> 카페
								</label>
							</div>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="form-group">
							<div class="checkbox">
								<label> <input type="checkbox"
									style="position: static; opacity: 1; width: 15px; height: 15px"
									name="verifyFacilitie" value="마트"> 마트
								</label>
							</div>
						</div>
					</div>


					<div class="col-sm-3">
						<div class="form-group">
							<div class="checkbox">
								<label> <input type="checkbox"
									style="position: static; opacity: 1; width: 15px; height: 15px"
									name="verifyFacilitie" value="음식점"> 음식점
								</label>
							</div>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="form-group">
							<label> <input type="checkbox"
								style="position: static; opacity: 1; width: 15px; height: 15px"
								name="verifyFacilitie" value="주차장"> 주차장
							</label>
						</div>
					</div>
					<div class="col-sm-3">
						<label> <input type="checkbox"
							style="position: static; opacity: 1; width: 15px; height: 15px"
							name="verifyFacilitie" value="캠핑장"> 캠핑장
						</label>
					</div>
					<div class="col-sm-3">
						<div class="form-group">
							<label> <input type="checkbox"
								style="position: static; opacity: 1; width: 15px; height: 15px"
								name="verifyFacilitie" value="병원">병원
							</label>
						</div>
					</div>

					<div class="col-sm-12">
						<hr>
						<h5>오픈일자</h5>
						<br>
					</div>
					<div class="col-sm-3">
						<div class="form-group">
							<div class="checkbox">
								<label> <input type="checkbox"
									style="position: static; opacity: 1; width: 15px; height: 15px"
									name="verifyDay" value="월"> 월요일
								</label>
							</div>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="form-group">
							<label> <input type="checkbox"
								style="position: static; opacity: 1; width: 15px; height: 15px"
								name="verifyDay" value="화"> 화요일
							</label>
						</div>
					</div>
					<div class="col-sm-3">
						<label> <input type="checkbox"
							style="position: static; opacity: 1; width: 15px; height: 15px"
							name="verifyDay" value="수"> 수요일
						</label>
					</div>
					<div class="col-sm-3">
						<div class="form-group">
							<label> <input type="checkbox"
								style="position: static; opacity: 1; width: 15px; height: 15px"
								name="verifyDay" value="목"> 목요일
							</label>
						</div>
					</div>
					<div class="col-sm-3">
						<label> <input type="checkbox"
							style="position: static; opacity: 1; width: 15px; height: 15px"
							name="verifyDay" value="금"> 금요일
						</label>
					</div>
					<div class="col-sm-3">
						<label> <input type="checkbox"
							style="position: static; opacity: 1; width: 15px; height: 15px"
							name="verifyDay" value="토"> 토요일
						</label>
					</div>
					<div class="col-sm-3">
						<label> <input type="checkbox"
							style="position: static; opacity: 1; width: 15px; height: 15px"
							name="verifyDay" value="일"> 일요일
						</label>
					</div>

					<div class="col-sm-12">
						<hr>
						<h5>태그</h5>
						<br>
					</div>
					<div class="col-sm-3">
						<label> <input type="checkbox"
							style="position: static; opacity: 1; width: 15px; height: 15px"
							name="verifyTags" value="강"> 강
						</label>
					</div>
					<div class="col-sm-3">
						<label> <input type="checkbox"
							style="position: static; opacity: 1; width: 15px; height: 15px"
							name="verifyTags" value="노지"> 노지
						</label>
					</div>
					<div class="col-sm-3">
						<label> <input type="checkbox"
							style="position: static; opacity: 1; width: 15px; height: 15px"
							name="verifyTags" value="바다"> 바다
						</label>
					</div>
					<div class="col-sm-3">
						<label> <input type="checkbox"
							style="position: static; opacity: 1; width: 15px; height: 15px"
							name="verifyTags" value="산"> 산
						</label>
					</div>
					<div class="col-sm-3">
						<label> <input type="checkbox"
							style="position: static; opacity: 1; width: 15px; height: 15px"
							name="verifyTags" value="섬"> 섬
						</label>
					</div>
					<div class="col-sm-3">
						<label> <input type="checkbox"
							style="position: static; opacity: 1; width: 15px; height: 15px"
							name="verifyTags" value="숲"> 숲
						</label>
					</div>
					<div class="col-sm-3">
						<label> <input type="checkbox"
							style="position: static; opacity: 1; width: 15px; height: 15px"
							name="verifyTags" value="캠핑장"> 캠핑장
						</label>
					</div>
					<div class="col-sm-3">
						<label> <input type="checkbox"
							style="position: static; opacity: 1; width: 15px; height: 15px"
							name="verifyTags" value="공원"> 공원
						</label>
					</div>
				</div>
			</div>

			<br>
			<div id="step3" style="display: none;">
				<h4 class="info-text">사진 조금 더 보여주실래요?</h4>
				<div class="row">
					<label for="file" class="col-form-label col-md-3">서브 이미지
						(앞에서부터 채워주세요. 최소4장 최대9장)</label>
					<hr>
					<div class="wrap-vertical col-sm-12">
						<table>
							<tr>

								<td><img id="contentImg1" width="200px" height="200px"
									style="max-width: 1000px" onclick="chooseFile(2);"
									onerror="this.style.display='none'"></td>
								<td><img id="contentImg2" width="200" height="200"
									style="max-width: 1000px" onclick="chooseFile(3);"
									onerror="this.style.display='none'"></td>
								<td><img id="contentImg3" width="200" height="200"
									style="max-width: 1000px" onclick="chooseFile(4);"
									onerror="this.style.display='none'"></td>
								<td><img id="contentImg4" width="200" height="200"
									style="max-width: 1000px" onclick="chooseFile(5);"
									onerror="this.style.display='none'"></td>
								<td><img id="contentImg5" width="200" height="200"
									style="max-width: 1000px" onclick="chooseFile(6);"
									onerror="this.style.display='none'"></td>
								<td><img id="contentImg6" width="200" height="200"
									style="max-width: 1000px" onclick="chooseFile(7);"
									onerror="this.style.display='none'"></td>
								<td><img id="contentImg7" width="200" height="200"
									style="max-width: 1000px" onclick="chooseFile(8);"
									onerror="this.style.display='none'"></td>
								<td><img id="contentImg8" width="200" height="200"
									style="max-width: 1000px" onclick="chooseFile(9);"
									onerror="this.style.display='none'"></td>
								<td><img id="contentImg9" width="200" height="200"
									style="max-width: 1000px" onclick="chooseFile(10);"
									onerror="this.style.display='none'"></td>

							</tr>
						</table>

						<input type="file" name="upfile" id="file2" style="display: none;"
							onchange="loadImg(this,2);" accept="image/*"> <input
							type="file" name="upfile" id="file3" style="display: none;"
							onchange="loadImg(this,3);" accept="image/*"> <input
							type="file" name="upfile" id="file4" style="display: none;"
							onchange="loadImg(this,4);" accept="image/*"> <input
							type="file" name="upfile" id="file5" style="display: none;"
							onchange="loadImg(this,5);" accept="image/*"> <input
							type="file" name="upfile" id="file6" style="display: none;"
							onchange="loadImg(this,6);" accept="image/*"> <input
							type="file" name="upfile" id="file7" style="display: none;"
							onchange="loadImg(this,7);" accept="image/*"> <input
							type="file" name="upfile" id="file8" style="display: none;"
							onchange="loadImg(this,8);" accept="image/*"> <input
							type="file" name="upfile" id="file9" style="display: none;"
							onchange="loadImg(this,9);" accept="image/*"> <input
							type="file" name="upfile" id="file10" style="display: none;"
							onchange="loadImg(this,10);" accept="image/*"> <input
							type="hidden" name="memNo" value="${ loginMember.memNo }">
					</div>
				</div>
			</div>
			<div id="step4" style="display: none;">
				<h4 class="info-text">관리자에게 제출하기</h4>
				<br>
				<div class="row">
					<div class="col-sm-12">
						<div class="">
							<p>
								<label><strong>Carnping</strong></label> 에서 해당 게시글을 확인 후 게시글을
								등록하겠습니다. <br> 저희 홈페이지에 글을 남겨주셔서 감사합니다!
							</p>
							<div class="checkbox">
								<label> <input type="checkbox"
									style="position: static; opacity: 1; width: 15px; height: 15px"
									id="submitCheck" /><strong> 게시글을 제출하시겠습니까?</strong>
								</label>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="box-in">
			<div></div>
			<div class="btn-div">
				<button type="button" id="progress-prev" class="btn" disabled>이전</button>
			</div>
			<div class="btn-div" align="right">
				<button type="button" id="progress-next" class="btn">다음</button>
				<button type="submit" id="progress-submit" class="btn"
					style="display: none" disabled>제출</button>
			</div>
		</div>
	</form>

	<jsp:include page="../common/footer.jsp" />

	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

	<script src="resources/assets/js/main.js"></script>
	<!-- 지도 api -->
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c51db8bdf50f603f1ca7fd3444ea0dab&libraries=services"></script>
	<script>

//프로그래스 바
const progressBar = document.getElementById("progress-bar");
const progressNext = document.getElementById("progress-next");
const progressSubmit = document.getElementById("progress-submit");
const progressPrev = document.getElementById("progress-prev");
const steps = document.querySelectorAll(".step");
let active= 1;


progressNext.addEventListener("click", () => {
	$("#step"+active).css("display", "none");
	active++;
	$("#step"+active).css("display", "block");
	  if (active > steps.length) {
	    active = steps.length;
	  }
	  updateProgress();
	});

	progressPrev.addEventListener("click", () => {
	$("#step"+active).css("display", "none");
	  	active--;
	  	$("#step"+active).css("display", "block");
	  	if (active < 1) {
	    	active = 1;
	  }
	  updateProgress();
	});
	
	const updateProgress = () => {
		  // toggle active class on list items
		  steps.forEach((step, i) => {
		    if (i < active) {
		      step.classList.add("active");
		    } else {
		      step.classList.remove("active");
		    }
		  });
		  // set progress bar width  
		  progressBar.style.width = 
		    ((active - 1) / (steps.length - 1)) * 100 + "%";
		  // enable disable prev and next buttons
		  if (active === 1) {
		    progressPrev.disabled = true;
		  } else if (active === steps.length) {
		    progressNext.disabled = true;
		    progressNext.style.display = "none";
		    progressSubmit.style.display = "block";
		    
		  } else {
			
		    progressSubmit.style.display = "none";
		    progressPrev.disabled = false;
		    progressNext.style.display = "block";
		    progressNext.disabled = false;
		  }
		};
		
		myChooseFile = function() {
		    $("#myFileInput").click();
		}		

		function myLoadImg(inputFile) {
		    if (inputFile.files.length == 1) { // 파일 선택된 경우 => 파일 읽어들임

		        // 파일을 읽어들일 FileReader 객체 생성
		        const reader = new FileReader();

		        // 파일을 읽어들이는 메소드 호출
		        reader.readAsDataURL(inputFile.files[0]);
		        // 해당 파일을 읽어들이는 순간 해당 이 파일만이 고유한 url부

		        //파일 읽어들이기가 완료 됐을 때 실행할 함수를 정의해두기
		        reader.onload = function (e) {
		            // e.target.result => 읽어들인 파일의 고유한 url                                            
	            $("#mainImg").html("<small style='color:green;'>멋진 이미지이군요!<br></small>");
		        $("#myFile1").removeAttr("src");
		        $("#myFile1").attr("src", e.target.result); 
		        }
		    } else { //선택된 파일이 취소된 경우 => 미리보기 본것도 사라지게
		    	
		    	$("#mainImg").html("<small style='color:red;'>대표 이미지를 삽입해주세요<br></small>")
    			
		        $("#myFile1").removeAttr("src");
		    }
		} //loadImg end
		


// submitCheck 체크박스 요소 참조
const submitCheck = document.getElementById('submitCheck');

// progress-submit 버튼 요소 참조
const progressSubmitBtn = document.getElementById('progress-submit');

// submitCheck 체크 상태가 변경될 때마다 실행될 함수 등록
submitCheck.addEventListener('change', function() {
  // submitCheck 체크 상태가 true일 경우
  if (submitCheck.checked) {
    // progress-submit 버튼의 disabled 속성 제거
    progressSubmitBtn.disabled = false;
  } else {
    // submitCheck 체크 상태가 false일 경우
    // progress-submit 버튼의 disabled 속성 추가
    progressSubmitBtn.disabled = true;
  }
});
		
// 주소 입력 받는 api
let addressDetail ="";
function juso() {
new daum.Postcode({
    oncomplete: function (data) {
        var addr = ''; // 주소 변수

        //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
        if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
            addr = data.roadAddress;
        } else { // 사용자가 지번 주소를 선택했을 경우(J)
            addr = data.jibunAddress;
        }
        // 우편번호와 주소 정보를 해당 필드에 넣는다.
        addressDetail = document.getElementById("address2").value = addr;
      
        	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
        	mapOption = {
        	        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        	        level: 7 // 지도의 확대 레벨
        	    };  

        	// 지도를 생성합니다    
        	var map = new kakao.maps.Map(mapContainer, mapOption); 

        	// 주소-좌표 변환 객체를 생성합니다
        	var geocoder = new kakao.maps.services.Geocoder();

        	// 주소로 좌표를 검색합니다
        	geocoder.addressSearch($("#address2").val(), function(result, status) {

        	    // 정상적으로 검색이 완료됐으면 
        	     if (status === kakao.maps.services.Status.OK) {

        	        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        	        // 결과값으로 받은 위치를 마커로 표시합니다
        	        var marker = new kakao.maps.Marker({
        	            map: map,
        	            position: coords
        	        });
        	        $("input[name=verifyLttd]").val(result[0].y);
        	        $("input[name=verifyHrdns]").val(result[0].x);
        	        // 인포윈도우로 장소에 대한 설명을 표시합니다
        	        var infowindow = new kakao.maps.InfoWindow({
        	            content: '<button type="button" class="btn" id="google-search-button" onclick="googleSearch()">'+addressDetail+'</button>'
        	        });
        	        infowindow.open(map, marker);

        	        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        	        map.setCenter(coords);
        	    } 
        	});    
     
        // 커서를 상세주소 필드로 이동한다.
        
    }
}).open()
}

function googleSearch() {
	  // 검색어 입력값 가져오기
	  var searchTerm = $("#address2").val();
	  
	  // 검색어가 비어있으면 아무것도 하지 않음
	  if (searchTerm === "") {
	    return;
	  }
	  
	  // 검색어를 구글 검색 URL에 추가하여 새 창에서 열기
	  var googleUrl = "https://www.google.com/search?q=" + encodeURIComponent(searchTerm);
	  window.open(googleUrl, "_blank");
	}

var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
mapOption = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

// 주소로 좌표를 검색합니다
geocoder.addressSearch(addressDetail, function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });
        
       
		
        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">오우예</div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
});    


   

    chooseFile = function(num){
        $("#file"+num).click();
    }
    
    loadImg = function(inputFile ,num){
        // inputFile : 현재 변화가 생긴 input type = "file" 요소 객체
        // num : 몇번째 input 요소 확인 후 해당 그 영역에 미리보기 하기 위해 전달받아


        // 선택된 파일이 있다면 inputFile.files[0] 에 선택된 파일이 담겨있음
        //                    => inputFiles.files.length 또한 1이 될꺼임

        if(inputFile.files.length ==1){ // 파일 선택된 경우 => 파일 읽어들임
            
            // 파일을 읽어들일 FileReader 객체 생성
            const reader = new FileReader();

            // 파일을 읽어들이는 메소드 호출
            reader.readAsDataURL(inputFile.files[0]);
            // 해당 파일을 읽어들이는 순간 해당 이 파일만이 고유한 url부

            //파일 읽어들이기가 완료 됐을 때 실행할 함수를 정의해두기
            reader.onload = function(e){
                // e.target.result => 읽어들인 파일의 고유한 url
			if(num === 1 ){
  
			}
                switch(num){
                    case 1: $("#titleImg").attr("src", e.target.result); break;
                    case 2: $("#contentImg1").attr("src", e.target.result); break;
                    case 3: $("#contentImg2").attr("src", e.target.result); break;
                    case 4: $("#contentImg3").attr("src", e.target.result); break;
                    case 5: $("#contentImg4").attr("src", e.target.result); break;
                    case 6: $("#contentImg5").attr("src", e.target.result); break;
                    case 7: $("#contentImg6").attr("src", e.target.result); break;
                    case 8: $("#contentImg7").attr("src", e.target.result); break;
                    case 9: $("#contentImg8").attr("src", e.target.result); break;
                    case 10: $("#contentImg9").attr("src", e.target.result); break;
                   
                     }
                }
                
            } else { //선택된 파일이 취소된 경우 => 미리보기 본것도 사라지게
            	
            switch(num){
                    case 1: $("#titleImg").attr("src", null); break;
                    case 2: $("#contentImg1").attr("src", null); break;
                    case 3: $("#contentImg2").attr("src", null); break;
                    case 4: $("#contentImg3").attr("src", null); break;
                    case 5: $("#contentImg4").attr("src", null); break;
                    case 6: $("#contentImg5").attr("src", null); break;
                    case 7: $("#contentImg6").attr("src", null); break;
                    case 8: $("#contentImg7").attr("src", null); break;
                    case 9: $("#contentImg8").attr("src", null); break;
                    case 10: $("#contentImg9").attr("src", null); break;
            }
        }
    }
    
  

$("#insertCar").on("submit", function() {
 
	// event.preventDefault(); // 기본 동작 방지
	
  const $verifyName = $("input[name=verifyName]");
  const $verifyContent = $("textarea[name=verifyContent]");
  const $verifyNotice = $("textarea[name=verifyNotice]");
  const $verifyAddress = $("input[name=verifyAddress]");
  const $verifyReason = $("input[name=verifyReason]");
  const $file1 = $("#myFile1");
  const $file2 = $("#contentImg1");
  const $file3 = $("#contentImg2");
  const $file4 = $("#contentImg3");
  const $file5 = $("#contentImg4");
  
  if ($verifyName.val() === '') {
	  alert('제목을 확인해주세요.');
	  return false; // form submit 방지
	} else if ($verifyContent.val() === '') {
	  alert('차박정보 내용을 확인해주세요.');
	  return false; // form submit 방지
	} else if ($verifyNotice.val() === '') {
	  alert('유의사항을 확인해주세요.');
	  return false; // form submit 방지
	} else if ($verifyReason.val() === '') {
	  alert('사유를 확인해주세요.');
	  return false; // form submit 방지
	} else if ($verifyAddress.val() === undefined ||$verifyAddress.val() === '' ) {
	  alert('주소를 확인해주세요.');
	  return false; // form submit 방지
	} else if ($file1.attr('src') == undefined || $file1.attr('src') == '' || $file1.attr('src') == 'resources/img/click.png') {
	  alert('메인 이미지를 확인해주세요.');
	  return false; // form submit 방지
	} else if ($file2.attr('src') == undefined || $file2.attr('src') === '') {
	  alert('첫번째 서브 이미지를 확인해주세요.');
	  return false; // form submit 방지
	} else if ($file3.attr('src') == undefined || $file3.attr('src') === '') {
	  alert('두번째 서브 이미지를 확인해주세요.');
	  return false; // form submit 방지
	} else if ($file4.attr('src') == undefined || $file4.attr('src') === '') {
	  alert('세번째 서브 이미지를 확인해주세요.');
	  return false; // form submit 방지
	} else if ($file5.attr('src') == undefined || $file5.attr('src') === '') {
	  alert('네번째 서브 이미지를 확인해주세요.');
	  return false; // form submit 방지
	} else {
	  alert("제출 완료되었습니다.");
	  return true;
	  //$("#insertCar").submit();
	}
})

</script>

</body>
</html>