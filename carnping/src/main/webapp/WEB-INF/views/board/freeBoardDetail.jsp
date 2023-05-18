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

    #report:hover{
        text-decoration: underline;
    }
</style>
</head>
<body class="nk-body bg-lighter npc-default has-sidebar no-touch nk-nio-theme">
	
	<header class="header header--normal">


	    <div class="header_back">
	        <jsp:include page="../common/header.jsp" />
	    </div>


	</header>
	
	
    <input type="hidden" value="${ b.memNo}" id="memNo">
    

    <!-- Listing Details Section Begin -->
    <section class="listing-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="listing__details__text">
                        
                        <div class="listing__details__gallery">
                            <div class="listing__details__gallery__pic">
                                <div class="listing__details__gallery__item">
                                    <img class="listing__details__gallery__item__large"
                                        src="${ b.boardChangeImg1 }" alt="" style="margin-top: 50px;">
                                    <span><i class="fa fa-camera"></i> 170 Image</span>
                                </div>
                                <div class="listing__details__gallery__slider owl-carousel">
                                    <img data-imgbigurl="${ b.boardChangeImg1 }"
                                        src="${ b.boardChangeImg1 }" alt="">
                                    <img data-imgbigurl="${ b.boardChangeImg1 }"
                                        src="${ b.boardChangeImg2 }" alt="">
                                    <img data-imgbigurl="${ b.boardChangeImg1 }"
                                        src="${ b.boardChangeImg3 }" alt="">
                                    <img data-imgbigurl="${ b.boardChangeImg1 }"
                                        src="${ b.boardChangeImg4 }" alt="">
                                </div>
                            </div>
                        </div>
                        <div class="content">
                            <br><br>
                            <div class="innerOuter">
                                <h2>무료나눔</h2>
                                <br>
                                <a class="btn btn-secondary" style="float:right" href="freeBoard.bo">목록으로</a>
                                <c:if test="${ not empty loginMember and (loginMember.memId ne b.memId)}">
                                <a id="report" style="float: left;
                                margin-right: 15px;
                                font-size: 18px;
                                color: #ff7070;
                                line-height: 40px;
                                cursor: pointer;" data-toggle="modal" data-target="#reportModal"><i class="fa-solid fa-land-mine-on" style="color: #ff7070; font-size: 20px;"></i>신고</a>
                                </c:if>
                                
                                <br><br>
                                <table id="contentArea" align="center" class="table" border="1" style="border-color: lightgray;">
                                    <tr>
                                        <th width="100">제목</th>
                                        <td colspan="3">${ b.boardTitle }</td>
                                    </tr>
                                    <tr>
                                        <th>작성자</th>

                                        <c:choose>
	                                        <c:when test="${ not empty b.nickName }">
	                                        	<td>${ b.nickName }</td>
	                                       	</c:when>
	                                       	<c:otherwise>
	                                        	<td>${ b.memId }</td>
	                                       	</c:otherwise>
                                        </c:choose>

                                        <th>작성일</th>
                                        <td>${ b.createDate }</td>
                                    </tr>
                                    <tr>
                                        <th>지역</th>
                                        <td colspan="3">
                                            ${ b.location }
                                        </td>
                                    </tr>
                                
                                    <tr>
                                        <th>내용</th>
                                        <td colspan="4"><p style="height:300px">${ b.boardContent }</p></td>
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
									<input type="hidden" name="bno" value="${ b.boardNo }" id="boardNo"/>
									<input type="hidden" name="filePath" value="${ b.boardChangeImg1 }">
				            	</form>
                                
                                </c:if>
                        
                    
                                
                            </div>
                            <br><br>
                        </div>
                        
                        <ul class="listing__details__comment ul_line" id="freeComment">
                            
                            
                        </ul>

                        <c:if test="${ not empty loginMember }">
                        <div class="listing__details__review">
                            <h4>댓글 작성</h4>
                            <form action="#">
                                <textarea placeholder="Review" name="" id="freeContent"></textarea>
                                <button type="button" class="site-btn" onclick="addFreeReply();">댓글등록</button>
                            </form>
                        </div>
						</c:if>
                        
                       
                    </div>
                </div>
                
            </div>
        </div>
        
        <jsp:include page="../common/footer.jsp"/>
        
    </section>
    <script>
    
    function postFormSubmit(num){
		
		if(num == 1){ // 수정하기 클릭시
			$("#postForm").attr("action", "freeBoardUpdateForm.bo").submit();
		}else{ // 삭제하기 클릭시
			$("#postForm").attr("action", "freeBoardDelete.bo").submit();
		}
	}
    
    
    $(function(){
		selectFreeReplyList(); // 화면이 랜더링 되자마자 댓글 조회를 하겠다
	})
	
	
    function addFreeReply(){
       
          // 스페이스바 같은것만 치고 댓글 입력하게 안되게 조건 달기
          if($("#freeContent").val().trim().length != 0){
             // 댓글 쓰는 칸의 val가 trim(공백제거 된)후 length 길이가 0이 아닐때 == 유효한 댓글이 맞음
             
             $.ajax({
            	 url:"freeReplyInsert.bo",
            	 data:{
            		 boardNo:'${b.boardNo}',
            		 commContent:$("#freeContent").val(),
            		 memNo:'${loginMember.memNo}' // 문자열은 이렇게 묶어야함
            	 },
            	 success:function(status){
            		 if(status == "success"){
            			 selectFreeReplyList();
            			 $("#freeContent").val("");
            			 console.log("dddd");
            		 }
            		 
            		 
            		 freeReplyNotification();// 댓글 등록이 성공하면 알람테이블에 담기
            		 
            		 
            	 },
            	 error:function(){
            		 console.log("댓글 작성용 ajax 통신 실패!");
            	 }
            	 
             });
             
          }else{
             alert("댓글 작성 후 등록 요청하세용!")
          }
       
       }
    
    
    


        
        function selectFreeReplyList(){ // 해당 게시글에 딸린 댓글 조회리스트 조회용 ajax
            $.ajax({
                url : "freeReplyList.bo",
                data : {bno:"${ b.boardNo }" },
                success:function(list){
                    console.log(list);
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
                    
                    
                    $("#freeComment").html(value);
                    
                    
                    
                }, 
                error:function(){
                    console.log("ajax 통신 실패!");
                    
                }
            });
            
        }
    

   	
   	/* 댓글달림 알람테이블에 insert */
   	function freeReplyNotification(){
   	
   	    let memNo = $("#memNo").val(); //작성자아이디번호 
   	  //  let boardNo = "${ b.boardNo }"  //글제목
   	    
   	   console.log("댓글알람 작성자 : " + memNo );
   	    
   		 $.ajax({
   			
   			 url: "insertFreeReplyAlarm.me",
   	         type: "POST",
   	         data: {
   	        	
   	        	 memNo: memNo,  // 알림 수신자 ID
   	             userNo: '${loginMember.memNo}',   // 알림 발신자 ID
   	             alaCategory: "fReply",        // 알림 유형 : 무료게시판 댓글
   	             //cinfoName : cinfoName, //글제목 
   	             refNo:"${ b.boardNo }",
   	             //alaContent: cinfoName.substring(0, 10) +"..글에 좋아요가 눌렸습니다. "  // 알림 내용
   	         
   	         },
   	         success: function(result) {
   	             if (result>0) {
   	             	console.log("좌여 알람 인서트성공 : " + result);
   	             } else {
   	             	console.log("인서트실패패패패패");
   	                 
   	             }
   	         },
   	         error: function(jqXHR, textStatus, errorThrown) {
   	             console.log("Error: " + textStatus + " " + errorThrown);
   	         }
   		}); 
   	}
   	 
   		
   		
   		
   	
   
    
    

    </script>

    <div class="modal" id="reportModal" data-backdrop="static">
        <div class="modal-dialog">
            <div class="modal-content">
        
                <!-- Modal Header -->
                <div class="modal-header">
                <h4 class="modal-title" style="font-size:20px; padding: 5px 10px;"> 게시글 신고 </h4>
                <button type="button" id="modalClose" class="close" data-dismiss="modal">&times;</button>
                </div>
        
                <!-- Modal body -->
                <form action="report.bo" method="post" id="reportForm">
                    <div class="modal-body">
                        <div>
                            <span id="modalEmail" style="padding-left: 5px;letter-spacing:unset; font-size:15px;"></span>
                            <span style="color:gray; font-size:15px;">부적절한 게시물인가요? </span>
                            <p style="font-size:15px; padding-left: 5px; color:gray">해당 게시글의 신고 사유를 적어주세요.</p>
                            <hr>
                        </div>
                        <input type="hidden" name="memNo" value="${ b.memNo}">
                        <input type="hidden" name="reporterMemNo" value="${ loginMember.memNo}">
                        <input type="hidden" name="reportRefNo" value="${ b.boardNo}">

                        <table style="width: 100%;">

                            <tr width="100%">
                                <td style="height:20px; padding-bottom:10px; color: #0ca678;">신고 사유 : </td>
                            </tr>
                            <tr width="100%">
                                <td style="width:100%">
                                    <textarea name="reportDetail" id="reportDetail" rows="10" style="resize: none;
                                    width: 100%;
                                    padding: 15px;
                                    border-radius: 5px;
                                    border-color: #0ca678;" placeholder="신고 사유를 입력하세요."></textarea>
                                </td>
                                
                            </tr>
                            
                        </table>
                    </div>
                    
                    
                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <button type="submit" id="reportSubmit"style="background-color: #0ca678; border-color: #0ca678;" class="btn btn-danger" data-dismiss="modal">확인</button>
                    </div>
                </form>
        

                <script>
                    $("#reportSubmit").click(() => {
                        $("#reportForm").submit();
                    });
                </script>
            </div>
        </div>
    </div>
    
</body>
</html>