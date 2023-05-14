<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<form>
	<div class="box-in">

		<div id="step1">
			<h4 align="center">차박의 얼굴을 만들어주세요</h4>
			<br>
			<div class="row">
				<div class="col-sm-6 col-sm-offset-1">
					<div align="center">
						<img id="myFile1" class="avatar-img"
                                       src="" onclick="myChooseFile();"
                                        alt="클릭하여 대표이미지를 설정해주세요" style="width:300px; height:200px;  cursor:pointer">
                                       
                   <input type="file" name="cinfoImg1" id="myFileInput" style="display: none;" onchange="myLoadImg(this);" accept="image/*"/>
					</div>
					
					<small align="center">메인에 나올 사진을 등록합니다 <br>
					</small>
				</div>
				<div class="col-sm-6">
					<div class="form-group">
						<label>제목</label> <input name="#" type="text"
							class="form-control" placeholder="추천하신 지역의 재치있는 이름을 지어주세요!">
					</div>
					<div class="form-group">
						<label>내용</label>
						<textarea name="#" type="text" class="form-control"
							placeholder="추천하는 지역을 저희에게 소개해주세요!"></textarea>
					</div>
					<div class="form-group">
						<label>주의사항</label>
						<textarea name="#" type="text" class="form-control"
							placeholder="추천하는 지역은 이걸 주의해야해요!"></textarea>
					</div>
				</div>
			</div>

		</div>
		<div id="step2" style="display: none;">
			<h4 align="center">위치는 어디일까요, 주변은 괜찮나요?</h4>
			<div class="row">
				<div class="col-sm-12">
					<div class="col-sm-12">
						<div class="form-group">
							<div id="addressDiv2">

								<input type="text" id="address1" placeholder="우편번호"
									name="poster" class="form-control"> <input
									type="button" class="btn primary-btn btn-md" onclick="juso();"
									value="우편번호 찾기"><br> <br> <input type="text"
									class="form-control" id="address2" placeholder="주소"
									name="street"><br> <input type="text"
									class="form-control" id="address3" placeholder="상세주소"
									name="address">	
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-12 padding-top-15">
					<div class="form-group">
						<div class="map_wrap">
							<div id="map"></div>
							<div class="hAddr">
								<span class="title">지도중심기준 행정동 주소정보</span> <span
									id="centerAddr"></span>
							</div>
						</div>
					</div> 
				</div>

				<div class="col-sm-3">
					<div class="checkbox">
						<label> <input type="checkbox"> 공중화장실
						</label>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="form-group">
						<div class="checkbox">
							<label> <input type="checkbox"> 주차장
							</label>
						</div>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="form-group">
						<div class="checkbox">
							<label> <input type="checkbox"> 병원
							</label>
						</div>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="form-group">
						<div class="checkbox">
							<label> <input type="checkbox"> 편의점
							</label>
						</div>
					</div>
				</div>


				<div class="col-sm-3">
					<div class="form-group">
						<div class="checkbox">
							<label> <input type="checkbox"> 화기사용이 안돼요!
							</label>
						</div>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="form-group">
						<label> <input type="checkbox"> 조용해야해요!
						</label>
					</div>
				</div>
				<div class="col-sm-3">
					<label> <input type="checkbox"> 취사가 안돼요!
					</label>
				</div>
				<div class="col-sm-3">
					<div class="form-group">
						<label> <input type="checkbox" style="height: auto;">
							수평이 안맞아요!
						</label>
					</div>
				</div>
			</div>
		</div>
		<br>
		<div id="step3" style="display: none;">
			<!-- step3의 내용 -->
			<h4>3실행</h4>
		</div>
		<div id="step4" style="display: none;">
			<h4>4 실행</h4>
			<!-- step4의 내용 -->
		</div>
	</div>

	<div class="box-in">
		<div></div>
		<div class="btn-div">
			<button type="button" id="progress-prev" class="btn" disabled>이전</button>
		</div>
		<div class="btn-div" align="right">
			<button type="button" id="progress-next" class="btn">다음</button>
			<button id="progress-submit" class="btn" style="display: none">제출</button>
		</div>
	</div>
</form>

<!--       property area
     <div class="content-area submit-property" style="background-color: #FCFCFC;">&nbsp;
         <div class="container">
             <div class="clearfix" > 
                 <div class="wizard-container"> 

                     <div class="wizard-card ct-wizard-orange" id="wizardProperty">
                         <form action="" method="">                        
                             <div class="wizard-header">
                                 <h3>
                                     <b>차박정보 등록</b><br>
                                     <small>차박 정보등록을 해주셔서 진심으로 감사드립니다.</small>
                                 </h3>
                                 <br>
                             </div>

                             <ul class="nav nav-pills">
                                 <li><a href="#step1" data-toggle="tab">Step 1 </a></li>
                                 <li><a href="#step2" data-toggle="tab">Step 2 </a></li>
                                 <li><a href="#step3" data-toggle="tab">Step 3 </a></li>
                                 <li><a href="#step4" data-toggle="tab">Finished </a></li>
                             </ul>

                             <div class="tab-content">
                                 
                                 <div class="tab-pane" id="step1">
                                     <h4 class="info-text">차박의 얼굴을 만들어주세요</h4>
                                     <div class="row p-b-15  ">
                                         
                                         <div class="col-sm-4 col-sm-offset-1">
                                             <div class="picture-container">
                                                 <div class="picture">
                                                     <img src="assets/img/default-property.jpg" class="picture-src" id="wizardPicturePreview" title=""/>
                                                     <input type="file" id="wizard-picture">
                                                 </div> 
                                                 <small>메인 사진을 등록해주세요 가로x세로 길이는 동일하게 해주시면 감사합니다.</small>
                                             </div>
                                         </div>
                                         <div class="col-sm-6">
                                             <div class="form-group">
                                                 <label>제목<small>(required)</small></label>
                                                 <input name="#" type="text" class="form-control" placeholder="추천하신 지역의 재치있는 이름을 지어주세요!">
                                             </div>

                                             <div class="form-group">
                                                 <label>내용 <small>(required)</small></label>
                                                 <textarea name="#" type="text" class="form-control" placeholder="추천하는 지역을 저희에게 소개해주세요!"></textarea>
                                             </div> 
                                             <div class="form-group">
                                                 <label>주의사항 <small>(required)</small></label>
                                                 <textarea name="#" type="text" class="form-control" placeholder="추천하는 지역은 이걸 주의해야해요!"></textarea>
                                             </div> 
                                         </div>
                                     </div>
                                     
                                 </div>
                                  End step 1
                                 
                                 <div class="tab-pane" id="step2">
                                     <h4 class="info-text"> 위치는 어디일까요, 주변은 괜찮나요? </h4>
                                     <div class="row">
                                         <div class="col-sm-12"> 
                                             <div class="col-sm-12"> 
                                                 <div class="form-group">
                                                     <div id="addressDiv2">
                                                        
                                                         <input type="text" id="address1"
                                                             placeholder="우편번호" name="poster"
                                                             class="form-control">
                                                         <input type="button"
                                                             class="btn primary-btn btn-md"
                                                             onclick="juso();" value="우편번호 찾기"><br><br>
                                                         <input type="text" class="form-control"
                                                             id="address2" placeholder="주소"
                                                             name="street"><br>
                                                         <input type="text" class="form-control"
                                                             id="address3" placeholder="상세주소"
                                                             name="address">
                                                     </div>
                                                 </div> 
                                             </div> 
                                         </div>
                                         <div class="col-sm-12 padding-top-15">
                                             <div class="form-group">
                                                 <div class="map_wrap">
                                                     <div id="map"></div>
                                                     <div class="hAddr">
                                                         <span class="title">지도중심기준 행정동 주소정보</span>
                                                         <span id="centerAddr"></span>
                                                     </div>
                                                 </div>
                                             </div>
                                         </div>
                                        
                                         <div class="col-sm-12 padding-top-15">
                                             <div class="col-sm-3">
                                                 <div class="form-group">
                                                     <div class="checkbox">
                                                         <label>
                                                             <input type="checkbox"> 공중화장실
                                                         </label>
                                                     </div>
                                                 </div>
                                             </div> 
                                             <div class="col-sm-3">
                                                 <div class="form-group">
                                                     <div class="checkbox">
                                                         <label>
                                                             <input type="checkbox"> 주차장
                                                         </label>
                                                     </div>
                                                 </div>
                                             </div>                                                 
                                             <div class="col-sm-3">
                                                 <div class="form-group">
                                                     <div class="checkbox">
                                                         <label>
                                                             <input type="checkbox"> 병원
                                                         </label>
                                                     </div>
                                                 </div>
                                             </div>                                                 
                                             <div class="col-sm-3">
                                                 <div class="form-group">
                                                     <div class="checkbox">
                                                         <label>
                                                             <input type="checkbox"> 편의점
                                                         </label>
                                                     </div>
                                                 </div>
                                             </div> 
                                         </div> 
                                         <div class="col-sm-12 padding-bottom-15">
                                             <div class="col-sm-3">
                                                 <div class="form-group">
                                                     <div class="checkbox">
                                                         <label>
                                                             <input type="checkbox"> 화기사용이 안돼요!
                                                         </label>
                                                     </div>
                                                 </div>
                                             </div>
                                             <div class="col-sm-3">
                                                 <div class="form-group">
                                                     <div class="checkbox">
                                                         <label>
                                                             <input type="checkbox"> 조용해야해요!
                                                         </label>
                                                     </div>
                                                 </div>
                                             </div>
                                             <div class="col-sm-3">
                                                 <div class="form-group">
                                                     <div class="checkbox">
                                                         <label>
                                                             <input type="checkbox"> 취사가 안돼요!
                                                         </label>
                                                     </div>
                                                 </div>
                                             </div>
                                             <div class="col-sm-3">
                                                 <div class="form-group">
                                                     <div class="checkbox">
                                                         <label>
                                                             <input type="checkbox"> 수평이 안맞아요!
                                                         </label>
                                                     </div>
                                                 </div>
                                             </div>
                                         </div>
                                         <br>
                                     </div>
                                 </div>
                                 End step 2
                                 
                                 <div class="tab-pane" id="step3">                                        
                                     <h4 class="info-text">사진 조금 더 보여주실래요? </h4>
                                     <div class="row">  
                                         <div class="wrap-vertical col-sm-12">
                                             
                                             <label for="file" class="col-form-label col-md-3">서브
                                                 이미지 (최소4장 최대9장)</label>
                                                 <hr>
                                             <table>
                                                 <tr>
                                                     
                                                     <td>
                                                         <img id="contentImg1" width="200"
                                                             height="200" onclick="chooseFile(2);"
                                                             onerror="this.style.display='none'">
                                                     </td>
                                                     <td>
                                                         <img id="contentImg2" width="200"
                                                             height="200" onclick="chooseFile(3);"
                                                             onerror="this.style.display='none'">
                                                     </td>
                                                     <td>
                                                         <img id="contentImg3" width="200"
                                                             height="200" onclick="chooseFile(4);"
                                                             onerror="this.style.display='none'">
                                                     </td>
                                                     <td>
                                                         <img id="contentImg4" width="200"
                                                             height="200" onclick="chooseFile(5);"
                                                             onerror="this.style.display='none'">
                                                     </td>
                                                     <td>
                                                         <img id="contentImg5" width="200"
                                                             height="200" onclick="chooseFile(6);"
                                                             onerror="this.style.display='none'">
                                                     </td>
                                                     <td>
                                                         <img id="contentImg6" width="200"
                                                             height="200" onclick="chooseFile(7);"
                                                             onerror="this.style.display='none'">
                                                     </td>
                                                     <td>
                                                         <img id="contentImg7" width="200"
                                                             height="200" onclick="chooseFile(8);"
                                                             onerror="this.style.display='none'">
                                                     </td>
                                                     <td>
                                                         <img id="contentImg8" width="200"
                                                             height="200" onclick="chooseFile(9);"
                                                             onerror="this.style.display='none'">
                                                     </td>
                                                     <td>
                                                         <img id="contentImg9" width="200"
                                                             height="200" onclick="chooseFile(10);"
                                                             onerror="this.style.display='none'">
                                                     </td>
 
                                                 </tr>
                                             </table>
                                                
                                             <input type="file" name="file2" id="file2"
                                                 style="display: none;" onchange="loadImg(this,2);" required>
                                             <input type="file" name="file3" id="file3"
                                                 style="display: none;" onchange="loadImg(this,3);" required>
                                             <input type="file" name="file4" id="file4"
                                                 style="display: none;" onchange="loadImg(this,4);" required>
                                             <input type="file" name="file5" id="file5"
                                                 style="display: none;" onchange="loadImg(this,5);" required>
                                             <input type="file" name="file6" id="file6"
                                                 style="display: none;" onchange="loadImg(this,6);" >
                                             <input type="file" name="file7" id="file7"
                                                 style="display: none;" onchange="loadImg(this,7);" >
                                             <input type="file" name="file8" id="file8"
                                                 style="display: none;" onchange="loadImg(this,8);" >
                                             <input type="file" name="file9" id="file9"
                                                 style="display: none;" onchange="loadImg(this,9);" >
                                             <input type="file" name="file10" id="file10"
                                                 style="display: none;" onchange="loadImg(this,10);">
                                         </div>
                                     </div>
                                 </div>
                                  End step 3


                                 <div class="tab-pane" id="step4">                                        
                                     <h4 class="info-text"> 관리자에게 제출하기 </h4>
                                     <div class="row">  
                                         <div class="col-sm-12">
                                             <div class="">
                                                 <p>
                                                     <label><strong>Carnping</strong></label>
                                                     에서 해당 게시글을 확인 후 게시글을 등록하겠습니다. <br>
                                                 저희 홈페이지에 글을 남겨주셔서 감사합니다!
                                             </p>



                                                 <div class="checkbox">
                                                     <label>
                                                         <input type="checkbox" required/> <strong>게시글을 제출하시겠습니까?</strong>
                                                     </label>
                                                 </div> 

                                             </div> 
                                         </div>
                                     </div>
                                 </div>
                                  End step 4

                             </div>

                             <div class="wizard-footer">
                                 <div class="pull-right">
                                     <input type='button' class='btn btn-next primary-btn' name='next' value='다음'/>
                                     <input type='submit' class='btn btn-finish primary-btn ' name='finish' value='제출' />
                                 </div>

                                 <div class="pull-left">
                                     <input type='button' class='btn btn-previous btn-default' name='previous' value='이전' />
                                 </div>
                                 <div class="clearfix"></div>                                            
                             </div>	
                         </form>
                     </div>
                     End submit form
                 </div> 
             </div>
         </div>
     </div> -->
<jsp:include page="../common/footer.jsp" />

<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script src="resources/assets/js/main.js"></script>
<!-- 지도 api -->

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c51db8bdf50f603f1ca7fd3444ea0dab&libraries=services"></script>
<script>

const progressBar = document.getElementById("progress-bar");
const progressNext = document.getElementById("progress-next");
const progressSubmit = document.getElementById("progress-submit");
const progressPrev = document.getElementById("progress-prev");
const steps = document.querySelectorAll(".step");
let active= 1;

myChooseFile = function() {
    $("#myFileInput").click();
}		

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
		
		function myLoadImg(inputFile) {
		    console.log("inputFile");
		    if (inputFile.files.length == 1) { // 파일 선택된 경우 => 파일 읽어들임

		        // 파일을 읽어들일 FileReader 객체 생성
		        const reader = new FileReader();

		        // 파일을 읽어들이는 메소드 호출
		        reader.readAsDataURL(inputFile.files[0]);
		        // 해당 파일을 읽어들이는 순간 해당 이 파일만이 고유한 url부

		        //파일 읽어들이기가 완료 됐을 때 실행할 함수를 정의해두기
		        reader.onload = function (e) {
		            // e.target.result => 읽어들인 파일의 고유한 url                                            
		        console.log(e.target.result);
		        $("#myFile1").removeAttr("src");
		        $("#myFile1").attr("src", e.target.result); 
		        }
		    } else { //선택된 파일이 취소된 경우 => 미리보기 본것도 사라지게
		        $("#myFile1").removeAttr("src");
		    }
		} //loadImg end
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
        document.getElementById('address1').value = data.zonecode;
        addressDetail = document.getElementById("address2").value = addr;
        // 커서를 상세주소 필드로 이동한다.
        document.getElementById("address3").focus();
        
    }
}).open()
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
geocoder.addressSearch('제주특별자치도 제주시 첨단로 242', function(result, status) {

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

</script>

</body>
</html>