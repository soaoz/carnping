<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700;800&display=swap" rel="stylesheet">
	<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/flaticon.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/barfiller.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
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
<body class="ov-hid">
	
	<header class="header header--normal">


	    <div class="header_back">
	        <jsp:include page="../common/header.jsp" />
	    </div>


	</header>

    

    <!-- Filter Begin -->
    <!-- Filter End -->

    <!-- Listing Section Begin -->
    <section class="listing nice-scroll" style="width: 100%;">
        
        
        <div class="content-area user-profiel" style="background-color: white;">
        <div class="container">
            <div class="row">
                <div class="col-sm-10 col-sm-offset-1">
                    <div class="profiel-header">
                        <h3>
                            <br><br>
                            <b class="title">공지사항</b>
                            
                          
                            <small></small>
                        </h3>
                        <hr>
                        <br><br>
                    </div>


                    <table border="0px" class="table table-hover"  style="width: 100%; margin:auto;" align="center" id="postTable">
                        <thead>
                            <tr id="tr1">
                                <th width="100">번호</th>
                                <th  width="500">제목</th>
                                <th width="100">작성일</th>
                                
                            </tr>
                        </thead>
                        
                        <tbody>
                        	<c:if test="${empty list }">
                                <tr>
                                    <td colspan="5" align="center">존재하는 글이 없습니다</td>
                                </tr>
                            </c:if>

                            <c:forEach var="b" items="${ list }">

                                <tr id="notice" style="line-height: 14px;" onclick="location.href='noticeBoardDetail.bo'">
                                	<input type="hidden" class="bno" value="${ b.boardNo }">
                                    <td class="boardNo">${ b.boardNo }</td>
                                    <td>${ b.boardTitle }</td>
                                    <td style="font-size: 13px; padding:10px;">${ b.createDate }</td>
                                    
                                </tr>
                   			 </c:forEach>				
                        </tbody>
                    </table>
        </div>
        
        <jsp:include page="../common/footer.jsp"/>
    </section>
    <!-- Listing Section End -->
    
    	
    
    <script>
  	 	$(function(){
  	 		$("#notice").click(function(){
  	 			location.href='noticeBoardDetail.bo?bno=' + $(this).children(".bno").val();
  	 		})
  	 	})
  	 	
  	 	function freeBoardInsert(){
  	 		location.href = 'enrollFreeBoardForm.bo';
  	 	}
  	 	
  	 	
    </script>
    
    

    
</body>
</html>