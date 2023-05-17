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
        height: 105px;
        background-color: white;
    }
    
    .ul_line {
   		list-style-type: none;
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
                        
                        <div class="listing__details__gallery">
                            <div class="col-lg-12">
                                <div class="contact__map" style="margin-top: 50px;">
                                    <iframe
                                        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d423283.43556031643!2d-118.69192431097179!3d34.020730495817475!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80c2c75ddc27da13%3A0xe22fdf6f254608f4!2sLos%20Angeles%2C%20CA%2C%20USA!5e0!3m2!1sen!2sbd!4v1586670019340!5m2!1sen!2sbd"
                                        height="550" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                                </div>
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
        <input type="hidden" value="${ b.memNo }" id="memNo">
    </section>
    
    <!-- Listing Details Section End -->

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
            			 
            			ReplyNotification();// 댓글 등록이 성공하면 알람테이블에 담기
            			 
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
	
   	/* 댓글달림 알람테이블에 insert */
   	function ReplyNotification(){
   	
   	    let memNo = $("#memNo").val(); //작성자아이디번호 
   	  //  let boardNo = "${ b.boardNo }"  //글제목
   	    
   	   console.log("댓글알람 작성자 : " + memNo );
   	  
   	    
   		 $.ajax({
   			
   			 url: "insertFreeReplyAlarm.me",
   	         type: "POST",
   	         data: {
   	        	
   	        	 memNo: memNo,  // 알림 수신자 ID
   	             userNo: '${loginMember.memNo}',   // 알림 발신자 ID
   	             alaCategory: "pReply",        // 알림 유형 : 무료게시판 댓글
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

    <!-- Footer Section Begin -->
    <jsp:include page="../common/footer.jsp"/>
    <!-- Footer Section End -->

    
</body>
</html>