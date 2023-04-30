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
    <profile="http://www.w3.org/2005/10/profile">
    <title>Document</title>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>

    <!-- Css Styles -->
    <link rel="stylesheet" href="resources/member/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="resources/member/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="resources/member/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="resources/member/css/flaticon.css" type="text/css">
    <link rel="stylesheet" href="resources/member/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="resources/member/css/barfiller.css" type="text/css">
    <link rel="stylesheet" href="resources/member/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="resources/member/css/jquery-ui.min.css" type="text/css">
    
    <link rel="stylesheet" href="resources/member/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="resources/member/css/style.css" type="text/css">
    <link rel="stylesheet" href="resources/member/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/member/assets/css/style.css">

<style>
@font-face {
		    font-family: 'Dovemayo_gothic';
		    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2302@1.1/Dovemayo_gothic.woff2') format('woff2');
		    font-weight: normal;
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
		@font-face {
		     font-family: 'S-CoreDream-3Light';
		     src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-3Light.woff') format('woff');
		     font-weight: 900px;
		     font-style: normal;
		}
        .myPage-header-area{
            width: 100%;
            height: 123px;
            background-color: #b3d9b1;
        }
       .master-area{
            width: 100%;
            height: 100%;
           
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
</style>
</head>
<body>
<input type = "hidden" name="memId" id="memId" value="${ loginMember.memId }">
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
                            <b class="title">나의 활동</b> MY ACTIVITE<br>
                            
                      
                            <small></small>
                        </h3>
                        <hr>
                        <br><br>
                        <ul class="nav nav-tabs">
                            <li class="nav-item">
                              <a class="nav-link active" data-toggle="tab" aria-current="page" href="myAlarmList.me">활동 알림</a>
                            </li>
                            <li class="nav-item">
                             <!--  <a class="nav-link" href="myPostList.me">내가 쓴 글</a> -->
                              <a class="nav-link" data-toggle="tab" onClick="myPostList();">내가 쓴 글</a>
                            </li>
                            <li class="nav-item">
                              <a class="nav-link" data-toggle="tab" onClick="myReplyList();">내가 쓴 댓글</a>
                            </li>
                          </ul>
                    </div>

                    <br>
                    <table>
                        <tr>
                            <td colspan="5" class="td1"><input type="checkbox" name="" class="ckbox"></td>
                            <td class="td1">&nbsp;&nbsp;전체선택</td>
                        </tr>
                    </table>
                    <table border="0px" id = "result" class="table table-hover table1"  style="width: 100%; margin:auto;" align="center">
                        <thead>

                        </thead>
                        
                        <tbody>

                        </tbody>
                    </table>
                    
                    <script type="text/javascript">
                    
                    //내가 쓴 게시글 목록
                    function myPostList(){
                    	$.ajax({
                    		url: "myPostList.me",
                            type: "POST",
                            data: { memId: $("#memId").val() }, //로그인유저아이디
                            success: function(list) {
                            	
         			            var html = "";
         			            var value = "";
         			            
         			            value+= "<tr id='tr1'>";
         			            value+= "<th width='50'>선택</th>";
         			            value+= "<th width='40'>번호</th>";
         			            value+= "<th width='150'>카테고리</th>";
         			            value+= "<th width='500' style='text-align: center;'>제목</th>";
         			            value+= "<th width='70'>조회수</th>";
         			            value+= "<th width='150'>작성일</th>";
         			            value+= "</tr>";
         			           $("#result thead").html(value);
         			           
        			            if (list.length == 0) {
        			                html += "<tr><td colspan='5' align='center'>존재하는 글이 없습니다</td></tr>";
        			            } else {
        			            	for(let i in list){
        			                    html += "<tr>";
        			                    html += "<td><input type='checkbox' class=''></td>";
        			                    html += "<td>"+list[i].boardNo+"</td>";
        			                    /* html += "<td>"+list[i].boardNo+"</td>"; */
        			                        if (list[i].boardNo.startsWith('BRD')) {
										        html += "<td>[자유게시판]</td>";
										    } else if (list[i].boardNo.startsWith('PRT')) {
										        html += "<td>[소모임]</td>";
										    }  else {
										    	 html += "<td>[무료나눔]</td>";
										    }
        			                    html += "<td>"+list[i].boardTitle+"</td>";
        			                    html += "<td>"+list[i].count+"</td>";
        			                    html += "<td>"+list[i].createDate+"</td>";
        			                    html += "</tr>";
        			                }
        			            	 $("#result tbody").html(html);
        			            } 
 
                            },
                            error: function(jqXHR, textStatus, errorThrown) {
                                console.log("Error: " + textStatus + " " + errorThrown);
                            }
                    		
                    	});
                    }
                    
                 	
                  //내가 쓴 댓글 목록
                    function myReplyList(){
                    	$.ajax({
                    		url: "myReplyList.me",
                            type: "POST",
                            data: { memId: $("#memId").val() }, //로그인유저아이디
                            success: function(list) {
                            	
         			            var html = "";
         			            var value = "";
         			            
          			            value+= "<tr id='tr1'>";
         			            value+= "<th width='50'>선택</th>";
         			            value+= "<th width='40'>번호</th>";
         			            value+= "<th width='500' style='text-align: center;'>제목</th>";
         			            value+= "<th width='150' style='text-align: center;'>작성일</th>";
         			            value+= "</tr>";
         			           $("#result thead").html(value);
         			           
        			            if (list.length == 0) {
        			                html += "<tr><td colspan='5' align='center'>존재하는 글이 없습니다</td></tr>";
        			            } else {
        			            	for(let i in list){
        			                    html += "<tr>";
        			                    html += "<td><input type='checkbox' class=''></td>";
        			                    html += "<td>"+list[i].reNo+"</td>";
        			                    html += "<td>"+list[i].commContent+"<div><span class='myReplyBoardTitle' style='font-size: 13px;'> 원문 제목 : "+list[i].boardTitle+"</span></div></td>"; 
        			                    html += "<td>"+list[i].createDate+"</td>";
        			                    html += "</tr>";
        			                }
        			            	 $("#result tbody").html(html);
        			            }  
                            },
                            error: function(jqXHR, textStatus, errorThrown) {
                                console.log("Error: " + textStatus + " " + errorThrown);
                            }
                    		
                    	});
                    }
                    
                    </script>
                    


	


                    <div align="left" >
                        <br>
                        <a href="#" class = "btn btn-sm btn-primary">삭제하기</a>
                        <br><br>
                    </div>  
                    <div id="pagingArea" align="center">
                        <ul class="pagination">
                            
                                <li class="page-item"><a class="page-link" href=""> &lt;&lt; </a></li>
                                <li class="page-item"><a class="page-link" href="">1</a></li>
                                <li class="page-item"><a class="page-link" href="">2</a></li>
                                <li class="page-item"><a class="page-link" href="">3</a></li>
                                <li class="page-item"><a class="page-link" href="">4</a></li>
                                <li class="page-item"><a class="page-link" href="">5</a></li>
                                    <li class="page-item"><a class="page-link" href="">&gt;&gt;</a></li>
                        </ul>
                    </div>
                   
                </div>
            </div>
        </div>
    </div>
</div>    
    <jsp:include page="../common/footer.jsp"/>
</body>
</html>