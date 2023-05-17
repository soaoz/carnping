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
                <h5>소모임 게시판</h5>
                
            </div>
            <div class="listing__text__top__right" onclick="location.href='lastest.bo'" style="cursor: pointer">최신순<i class="fa fa-sort-amount-asc"></i></div> <br><br>
            
			<button onclick = "partyBoardInsert();" style="float: right; background-color: rgb(104, 135, 115); color: white; border-color: rgb(104, 135, 115);">모임등록</button>


        </div>
        <div class="listing__list" style="align-content: center;">
        	<c:forEach var="b" items="${ list }">
            <div class="listing__item">
                <div class="listing__item__pic set-bg" data-setbg="지도자리"> <!-- 지도 넣어보자 -->
                    
                </div>
                <div class="listing__item__text">
                    <div class="listing__item__text__inside">
                        <h5 onclick="location.href='partyBoardDetail.bo'" style="cursor: pointer">
                        	<input type="hidden" class="bno" value="${ b.boardNo }">
                            ${ b.boardTitle }</h5>
                        <div class="listing__item__text__rating">
                           
                            <h6>${ b.memId }</h6>
                        </div>
                        <ul>
                        </ul>
                    </div>
                    
                </div>
            </div>
            </c:forEach>
            
            
        </div>
        <jsp:include page="../common/footer.jsp"/>
    </section>
   
   <script>
  	 	$(function(){
  	 		$(".listing__item__text__inside>h5").click(function(){
  	 			location.href='partyBoardDetail.bo?bno=' + $(this).children(".bno").val();
  	 			
  	 		})
  	 		
  	 	})
  	 	
  	 	function partyBoardInsert(){
  	 		location.href = 'enrollPartyBoardForm.bo';
  	 	}
    </script>

    
</body>
</html>