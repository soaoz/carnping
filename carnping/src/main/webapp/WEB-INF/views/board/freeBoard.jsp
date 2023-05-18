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
        <div class="listing__text__top">
            <div class="listing__text__top__left">
                <h5>무료나눔 게시판</h5>
                
            </div>
            <div class="listing__text__top__right" onclick="location.href='lastest.bo'" style="cursor: pointer">최신순<i class="fa fa-sort-amount-asc"></i></div> <br><br>
            
            <button onclick = "freeBoardInsert();" style="float: right; background-color: rgb(104, 135, 115); color: white; border-color: rgb(104, 135, 115);">글쓰기</button>
		

        </div>
        
        <div class="listing__list" style="align-content: center;">
            <c:forEach var="b" items="${ list }">
            <div class="listing__item">
                <div class="listing__item__pic_IJS set-bg" data-setbg="${ b.boardChangeImg1 }"> <!-- 나눔상품이미지 -->
                    
                </div>
                <div class="listing__item__text">
                    <div class="listing__item__text__inside">
                        <h5 onclick="location.href='freeBoardDetail.bo'" style="cursor: pointer">
                        		<input type="hidden" class="bno" value="${ b.boardNo }">
                        		${ b.boardTitle }</h5>
                        <div class="listing__item__text__rating">
                           
                            <h6>${ b.memId }</h6>
                        </div>
                        <ul>
                            <li><span class="icon_pin_alt"></span>${ b.location }</li>
                            
                        </ul>
                    </div>
                    
                </div>
            </div>
            </c:forEach>
            
        </div>
        
        <jsp:include page="../common/footer.jsp"/>
    </section>
    <!-- Listing Section End -->
    
    	
    
    <script>
  	 	$(function(){
  	 		$(".listing__item__text__inside>h5").click(function(){
  	 			location.href='freeBoardDetail.bo?bno=' + $(this).children(".bno").val();
  	 		})
  	 	})
  	 	
  	 	function freeBoardInsert(){
  	 		location.href = 'enrollFreeBoardForm.bo';
  	 	}
  	 	
  	 	
    </script>
    
    

    
</body>
</html>