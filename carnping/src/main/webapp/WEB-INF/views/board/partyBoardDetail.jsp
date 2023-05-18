<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
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
    
    .ul_line {
   		list-style-type: none;
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


    

    <!-- Listing Details Section Begin -->
    <section class="listing-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="listing__details__text">
                        
                        <br><br><br>
                        <div class="listing__details__gallery">
                            <div class="col-lg-12">
                                <div id="map" style="width:800px; height:500px;"></div>
                            </div>
                        </div>
                        
                        
                        <div class="content">
                            <br><br>
                            <div class="innerOuter">
                                <h2>소모임</h2>
                                <br>
                                
                                <a class="btn btn-secondary" style="float:right" href="partyBoard.bo">목록으로</a>
                                <br><br>
                                <table id="contentArea" align="center" class="table" border="1" style="border-color: lightgray;">
                                    <tr>
                                        <th width="100">제목</th>
                                        <td colspan="3">${ b.boardTitle }</td>
                                    </tr>
                                    <tr>
                                        <th>작성자</th>
                                        <td>${ b.memId }</td>
                                        <th>작성일</th>
                                        <td>${ b.createDate }</td>
                                    </tr>
                                    
                                    <tr>
                                        <th width="100">주소</th>
                                        <td colspan="3">${ b.boardAddress }</td>
                                    </tr>
                                
                                    <tr>
                                        <th>내용</th>
                                        <td colspan="4"><p style="height:150px">${ b.boardContent }</p></td>
                                    </tr>
                                    
                                </table>
                                <br>
                    
                                <c:if test="${ not empty loginMember.memId and loginMember.memId eq b.memId }">
                                <div align="center">
                                    <!-- 수정하기, 삭제하기 버튼은 이글이 본인글일 경우만 보여져야됨 -->
                                    <button type="button" class="btn btn-success" style="background-color: rgb(104, 135, 115); color: white; border-color: rgb(104, 135, 115);" onclick="postFormSubmit(1)">수정하기</button> <!-- 요기에 href="" 를 작성하면 get방식이기 떄문에 노출된다. -->
                                        <a class="btn btn-danger" onclick="postFormSubmit(2)">삭제하기</a>
                                </div><br><br>
                                
                                <form id="postForm" action="" method="post">
									<input type="hidden" name="bno" value="${ b.boardNo }"/>
				            	</form>
                                
                                </c:if>
                                </div><br><br>
                                
                        
                    
                                
                            </div>
                            <br><br>
                        </div>
                        
                        <ul class="listing__details__comment ul_line" id="partyComment">
                            
                            
                        </ul>

                        <c:if test="${ not empty loginMember }">
                        <div class="listing__details__review">
                            <h4>댓글 작성</h4>
                            <form action="#">
                                <textarea placeholder="Review" name="" id="partyContent"></textarea>
                                <button type="button" class="site-btn" onclick="addPartyReply();">댓글등록</button>
                            </form>
                        </div>
						</c:if>
                        
                       
                    </div>
                </div>
                
            </div>
        </div>
    </section>
    
    
    
    
    <!-- 주소 api -->
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

	<!-- 지도 api -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c51db8bdf50f603f1ca7fd3444ea0dab&libraries=services,clusterer,drawing"></script>
	
	
	<script>
		
		
		$(function(){
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		    mapOption = { 
		        center: new kakao.maps.LatLng(${ b.boardLttd }, ${ b.boardHrdns }), // 지도의 중심좌표
		        level: 3 // 지도의 확대 레벨
		    };

			var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	
			// 마커가 표시될 위치입니다 
			var markerPosition  = new kakao.maps.LatLng(${ b.boardLttd }, ${ b.boardHrdns }); 
	
			// 마커를 생성합니다
			var marker = new kakao.maps.Marker({
			    position: markerPosition
			});
	
			// 마커가 지도 위에 표시되도록 설정합니다
			marker.setMap(map);
	
			
			
			// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
			// marker.setMap(null);  
			})
		
		
		
		
	</script>
	
   	<script>
	function postFormSubmit(num){
			
			if(num == 1){ // 수정하기 클릭시
				$("#postForm").attr("action", "partyBoardUpdateForm.bo").submit();
			}else{ // 삭제하기 클릭시
				$("#postForm").attr("action", "partyBoardDelete.bo").submit();
			}
		}
	
	
	$(function(){
		selectPartyReplyList(); // 화면이 랜더링 되자마자 댓글 조회를 하겠다
		
	})
	
	
    function addPartyReply(){
       
          // 스페이스바 같은것만 치고 댓글 입력하게 안되게 조건 달기
          if($("#partyContent").val().trim().length != 0){
             // 댓글 쓰는 칸의 val가 trim(공백제거 된)후 length 길이가 0이 아닐때 == 유효한 댓글이 맞음
             
             $.ajax({
            	 url:"partyReplyInsert.bo",
            	 data:{
            		 boardNo:'${b.boardNo}',
            		 commContent:$("#partyContent").val(),
            		 memNo:'${loginMember.memNo}' // 문자열은 이렇게 묶어야함
            	 },
            	 success:function(status){
            		 if(status == "success"){
            			 selectPartyReplyList();
            			 $("#partyContent").val("");
            			 
            		 }
            	 },
            	 error:function(){
            		 console.log("댓글 작성용 ajax 통신 실패!");
            	 }
            	 
             });
             
          }else{
             alert("댓글 작성 후 등록 요청하세용!")
          }
       
       }
    
    
    

    
   	function selectPartyReplyList(){ // 해당 게시글에 딸린 댓글 조회리스트 조회용 ajax
   		$.ajax({
   			url : "partyReplyList.bo",
   			data : {bno:"${ b.boardNo }" },
   			success:function(list){
   				let value = "<h4>댓글</h4>";
   				for(let i in list){
   					value += "<li>"
   								+ "<div class='listing__details__comment__item'>"
   									+ "<div class='listing__details__comment__item__pic'>"
   										+ "<img src=" + list[i].memImgChange + ">"
   									+ "</div>"
   									+ "<div class='listing__details__comment__item__text'>"
   										+ "<span>"+ list[i].createDate + "</span>"
   										+ "<h5>" + list[i].memId + "</h5>"
   										+ "<div>"
   											+ "<p>" + list[i].commContent + "</p>"
			   							+ "</div>"
			   						+ "</div>"
	   							+ "</div>"
   							+ "</li>";
   				}
   				
   				
   				$("#partyComment").html(value);
   				
   				
   				
   			}, 
   			error:function(){
   				console.log("ajax 통신 실패!");
   				
   			}
   		});
   		
   	}
	
   	</script>

    <!-- Footer Section Begin -->
    <jsp:include page="../common/footer.jsp"/>
    <!-- Footer Section End -->

    
</body>
</html>