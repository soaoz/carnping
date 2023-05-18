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
                        
                        
                        <div class="content">
                            <br><br><br><br><br><br><br>
                            <div class="innerOuter">
                                <h2>공지사항</h2>
                                <br>
                                
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
                    
                               
                                
                        
                    
                                
                            </div>
                            <br><br>
                        </div>
                        
                        <ul class="listing__details__comment ul_line" id="partyComment">
                            
                            
                        </ul>

                      
                        
                       
                    </div>
                </div>
                
            </div>
        </div>
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
	
	
	
   	</script>

    <!-- Footer Section Begin -->
    <jsp:include page="../common/footer.jsp"/>
    <!-- Footer Section End -->

    
</body>
</html>