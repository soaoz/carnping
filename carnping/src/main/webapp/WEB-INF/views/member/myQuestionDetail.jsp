<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="GARO is a real-estate template">
    <meta name="author" content="Kimarotec">
    <meta name="keyword" content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Document</title>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>

    <!-- Css Styles -->
<!--     <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
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
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/style.css"> -->

<style>
		@font-face {
		    font-family: 'Dovemayo_gothic';
		    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2302@1.1/Dovemayo_gothic.woff2') format('woff2');
		    font-weight: normal;
		    font-style: normal;
		}
		@font-face {
		    font-family: 'SUIT-Regular';
		    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_suit@1.0/SUIT-Regular.woff2') format('woff2');
		    font-weight: normal;
		    font-style: normal;
		}
		@font-face {
		     font-family: 'S-CoreDream-3Light';
		     src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-3Light.woff') format('woff');
		     font-weight: 900px;
		     font-style: normal;
		}
		td{
			font-family: 'Dovemayo_gothic';
			font-size: 16px;
			letter-spacing :0.5px;
		}
		.ckbox{
			border:1px soild gray !important;
		}

        .myPage-header-area{
            width: 100%;
            height: 123px;
            background-color: #b3d9b1;
        }
        .filter{
            position: inherit !important;
            width: 350px !important;
            height: 100% !important;   
            padding: 30px 34px 30px 70px !important;
            /* overflow-y: auto; */
            -webkit-box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.1) !important;
            box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.1) !important;
            /* z-index: 99; */
            padding-top: 140px !important;
            float: left !important;
        }
        .master-area{
            width: 100%;
            height: 100%;
           
        }
        .filter__title h5 i {
            margin-right: 5px;
            color : #1C3053;
        }
        .filter__title h5{
            font-family: 'S-CoreDream-3Light';
            font-weight: 700 ;
            margin-right: 5px;
            color : #1C3053 !important;
            font-size: 25px !important;
        }
		.myPage_menu {
            border: 2px solid #b3d9b1 !important;
            border-left: none !important;
            border-right: none !important;
            border-top: none !important;
            width: 200px !important;
            height: 60px !important;
            line-height: 60px !important;
        }
            
		.menu{
			display: inline-block;
			width: 100%;
			height: 100%;
			font-family: 'S-CoreDream-3Light';
			font-size : 15px !important;
			color : #7ea67c !important;
		}
		.menu:hover {
			font-size : 17px !important;
			color : #1C3053 !important;
			font-weight : bold !important;
			
		}
		[type=checkbox] {
		  position: static !important;
		  opacity: 1 !important;
		  width: auto !important;
		  height: auto !important;
		}
		.title{
			color : #1C3053;
		}

		
		*{
		    margin: 0; 
		    padding: 0;     
		    
		}
		
		.wrap{
		    width: 1400px; 
		    height: 1000px; 
		    margin: auto; 
		    padding: 20px;
		
		}
		
		.wrap>div{width: 100%;}
		.title{height: 10%;}
		.content{min-height: 60%;}
		.btn_div{height: 5%;}

		
		/* 
		.content{
		    padding-top: 30px;
		
		} */
		.content *{
		    color: gray ;
		    font-size: 13px;
		}
		
		table{
		    width: 100%;
		    height: 40%;
		    border-bottom: 1px solid lightgray;
		    
		
		}
		table th{
		    text-align: center;
		    font-weight: lighter;
		}
		
		#t_title{
		    height: 70px;
		    background-color:  rgb(248, 248, 248);
		    border-top: 1px solid lightgray;
		    border-bottom: 1px solid lightgrey;
		}
		
		#t_title>td{
		    color: rgb(79, 79, 79);
		}
		#t_info{
		    height: 50px;
		    border-bottom: 1px solid lightgrey;
		}
		
		.t_content>td{
		    padding-top: 20px;
		    padding-left: 30px;
		
		}
		.t_content p{
		    font-size: 14px;
		    color: rgb(100, 100, 100);
		    height: 200px;
		}
		#t_file{
			height: 50px;
		 	border-bottom: 1px solid lightgrey;
		 }
		.btn-light{
			border: 2px solid #7ea67c !important;
		}
		h4{
			font-size : 20px !important;
			color : black !important; 
			padding-bottom : 10px !important;
		}
		
</style>
</head>
<body>
   
 <jsp:include page="../common/header.jsp"/>
 <jsp:include page="../common/menubar.jsp"/>  
<div class="myPage-header-area">
<!--     헤더 빈공간  -->
</div>
<div class="master-area">  
  
   
    <!-- Filter Begin -->
 <div class="filter nice-scroll">

				<div class="filter__title">
            <h5><i class="fa-sharp fa-solid fa-house"></i>마이페이지</h5>
        </div>
        <div class="myPage_menu" id="fake">
         </div>

        <div class="myPage_menu">
            <a href="myPageMainSelect.me" class="menu"><i class="fa fa fa-user"></i> 회원정보 </a>
        </div>
        <div class="myPage_menu">
           <a href="myCarbakList.me" class="menu"><i class="fa-sharp fa-solid fa-location-dot"></i> 나의 차박지 </a>
        </div>
        <div class="myPage_menu">
           <a href="myAlarmList.me" class="menu"><i class="fa-sharp fa-solid fa-bookmark"></i> 나의 활동 </a>
        </div>
        <div class="myPage_menu">
            <a href="myLikeList.me" class="menu"><i class="fa-sharp fa-solid fa-heart"></i> 좋아요</a>
        </div>
        <div class="myPage_menu">
            <a href="myQuestionList.me" class="menu"><i class="fa-solid fa-circle-question"></i> 문의하기</a>
        </div>
        <div class="myPage_menu">
            <a href="logoutPage.me" class="	menu"><i class="fa-solid fa-right-from-bracket"></i> 로그아웃</a>
        </div>
        <div class="myPage_menu">
            <a href="unregister.me" class="menu"><i class="fa-solid fa-circle-xmark"></i> 회원탈퇴</a>
        </div>

    </div>
    <!-- Filter End -->
    <div class="space"></div> 
    <div class="content-area user-profiel" style="background-color: white;">
        <div class="container">
            <div class="row">
                <div class="col-sm-10 col-sm-offset-1">
                    <div class="profiel-header">
                        <h3>
                            <br><br>
                            <b class="title">문의 하기</b> MY QUESTION <br>
                            
                          
                            <small></small>
                        </h3>
                        <hr>
                        <br><br>
                    </div>
					
					<!-- 이사이 -->
					
					<div class="content">
					    <table id="detail-area" border="0"  align="center">
					    <!-- (tr>th+td+th+td)*3 -->
					        <tr id="t_title">
					            <th>제목</th>
					            <td colspan="3" width="430">${ q.queTitle }</td>
					            
					        </tr>
					        <tr id="t_info">
					            <th>작성자</th>
					            <td width="400">${ q.memId }</td>
					            <th>작성일</th>
					            <td>${ q.queDate }</td>
					        </tr>
					        <tr id="t_file">
					             <th>첨부파일</th>
					             <td colspan="3">
					             <c:choose>
					              	<c:when test="${ empty b.originName}">
					                  첨부파일이 없습니다.
					               </c:when>
					               <c:otherwise>
					                  <!-- 첨부파일이 있는 경우-->
					                  <a href="${ b.changeName }" download="${ b.originName }">${ b.originName }</a>
					                  <!-- **실제 db로 부터 조회해온 파일 원본명 => 원본명으로 다운이됨  -->
					               </c:otherwise>
					              </c:choose>
					             </td>
					         </tr>
					        <tr class="t_content">
					            
					            <td colspan="4">
					                <p>${ q.queContent }</p>
					            </td>
					        </tr>
					        
					        <c:if test="${ not empty q.queAnswer}">
						        <tr class="t_content">
						            
						            <td colspan="4">
						            	<h4>답변 내용</h4>
						                <p>${ q.queAnswer }</p>
						            </td>
						        </tr>
					        </c:if>
					        
					    </table>
					</div>
					
					<div class="btn_div" align="right">
					    <br>
					    <a href="myQuestionList.me" class="btn btn-sm btn-light">목록가기</a>
					    <!-- 히스토리백 /list.no-->
					    <!-- 현재 로그인한 사용자가 해당 글을 쓴 본인일 경우  -->
					    <c:if test="${ not empty loginUser.memId }">
					        <a class="btn btn-sm btn-warning" onclick="postFormSubmit(1);">수정하기</a>
					        <a class="btn btn-sm btn-danger">삭제하기</a>
					        
					        <form id="postForm" action="" method="post" >
						           <!-- 숨겨야하니까 포스트 넘기고싶은건 글번호 -->
						           		<input type="hidden" name="queNo" value="${ q.queNo }">
						           		<!-- 구현해야할 기능 2개, 폼한개로 동적으로 타게하기  :자바스크립트로 -->
						           		<input type="hidden" name="filePath" value="${ b. changeName }">
					         </form>
						           
						           <script>
						           
						           function postFormSubmit(num){
						        	   console.log("탄다");
						        	   if(num == 1){//수정하기 클릭시
						        		   console.log("if탄다");
						        		   $("#postForm").attr("action", "questionUpdateForm.me").submit();
						        		   //action을 updateForm.bo로 ...submit까지 해줘야 날라갈수잇음
						        	   }else{ //삭제하기 클릭했다
						        		   $("#postForm").attr("action","delete.bo").submit();
						        		   
						        	   }
						        	   
						           }
						           </script>
					        
					        
						 </c:if>
					</div>

                </div>
            </div>
        </div>
    </div>
    <jsp:include page="../common/footer.jsp"/>
  </div>  

</body>
</html>