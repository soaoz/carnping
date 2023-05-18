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
                                        <th>지역</th>
                                        <td colspan="3">
                                            ${ b.location }
                                        </td>
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
   
    
    
    </script>
    
</body>
</html>