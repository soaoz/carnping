<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
    .header_back {
        width: 100%;
        height: 110px;
        background-color: #b3d9b1;
    }
    
    .header{
    	background-color: #b3d9b1;
    }
</style>
</head>
<body class="nk-body bg-lighter npc-default has-sidebar no-touch nk-nio-theme">

	<header class="header header--normal">
	
		<div class="header_back">
	        <jsp:include page="../common/header.jsp" />
	    </div>

	</header>


	<div class="content container-fluid">
		<div class="row">
			<div class="col-xl-8 offset-xl-2">
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<div class="page-header">
					<div class="row">
						<div class="col-sm-12">
							<h3 class="page-title">소모임</h3>
						</div>
					</div>
				</div>
				
				<form id="enrollForm" method="post" action="partyBoardInsert.bo" enctype="multipart/form-data" >
				<input type="hidden" name="memNo" value="${ loginMember.memNo }">
				<div class="card">
					<div class="card-body">
						<div class="bank-inner-details">
							<div class="row">
								<div class="col-lg-12 col-md-12">
									<div class="form-group">
										<label>제목<span class="text-danger"> *</span></label> 
										<input type="text" name="boardTitle" id="boardTitle"
											class="form-control" style="width: 57%;">
									</div>
								</div>
								<div class="col-lg-12 col-md-12">
									<div class="form-group">
										<br> <label>작성자<span class="text-danger">
												*</span></label> 
												<input type="text" class="form-control" name="memId" value="${ loginMember.memId }"
												style="width: 20%; text-align: center;" readonly="readonly">
									</div>
								</div>

								<div class="listing__details__gallery">
									<div class="col-lg-12">
										<div class="contact__map" style="margin-top: 50px;">
											<div id="map" style="width:1000px; height:500px;"></div>
										</div>
									</div>
								</div>



								<div class="col-sm-12">
									<div class="form-group">
										<div id="addressDiv2">
											<label>주소</label> <input type="text" class="form-control"
												id="address2" placeholder="주소찾기를 통해 주소를 입력받으세요!"
												name="boardAddress" readonly><br> <input
												type="button" class="btn primary-btn btn-md" onclick="juso();"
												value="주소찾기"><br> <br> 
												<input type="hidden" name="boardLttd"> 
												<input type="hidden" name="boardHrdns">
		
										</div>
									</div>
								</div>		
								
								
								
								
								<div class="col-lg-12 col-md-12">
									<div class="form-group">
										<br> <label style="float: left;">내용<span class="text-danger">*</span></label> 
										<textarea name="boardContent" id="boardContent" cols="100px"
										rows="15px" style="resize: none;"></textarea>
									</div>
								</div>		
										
										
								</div>
							</div>
						</div>
						
						<div class=" blog-categories-btn pt-0">
							<div class="bank-details-btn ">
								<button type = "button" class="btn btn-primary me-2"
								style="background-color: rgb(104, 135, 115); color: white; border-color: rgb(104, 135, 115);" onclick="insertPartyContent();">등록</button>
							</div>
						</div>
					</div>
					</form>	
					
					
				</div>
			
			</div>
		
	</div>
	
	<!-- 주소 api -->
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

	<!-- 지도 api -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c51db8bdf50f603f1ca7fd3444ea0dab&libraries=services"></script>
	
	
	<script>
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
			                   $("input[name=boardLttd]").val(result[0].y);
			                   $("input[name=boardHrdns]").val(result[0].x);
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
	</script>
	
	
	
	
	<script>
	
		function insertPartyContent(){
		
			if($("#boardContent").val().trim().length != 0 && 
		  	 	$("#boardTitle").val().trim().length != 0){
			
		   		$("#enrollForm").submit();
			
			}else{
				alert("하지마");
			}
		}
	
	</script>
	
	


	<jsp:include page="../common/footer.jsp" />
</body>
</html>