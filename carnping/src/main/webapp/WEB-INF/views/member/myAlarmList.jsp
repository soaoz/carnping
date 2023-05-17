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
    <title>Carnping | 마이페이지</title>
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
		.pagination > li > a{
			border-radius : 100% !important;
		}
		.page-item.active .page-link{
			color : #1C3053 !important;
			background-color : white !important;
		}
		.page-item .active{
			color: red;
		}
        .pagebtn.active{
            color : green;

        }
       .pagination > li.active > a:hover{
       		cursor: pointer;
       }
       .highlight {
		  color: #0CA678;
		  font-size : 14px;
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
            <a href="myLogoutPage.me" class="	menu"><i class="fa-solid fa-right-from-bracket"></i> 로그아웃</a>
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
                              <a class="nav-link active" data-toggle="tab" aria-current="page" href="myAlarmList.me" onclick="myAlarmList();">활동 알림</a>
                              
                            </li>
                            <li class="nav-item">
                             <!--  <a class="nav-link" href="myPostList.me">내가 쓴 글</a> -->
                              <a class="nav-link" data-toggle="tab" onClick="myPostList();" id="myPostTab">내가 쓴 글</a>
                            </li>
                            <li class="nav-item">
                              <a class="nav-link" data-toggle="tab" onClick="myReplyList();" id="myReplyTab">내가 쓴 댓글</a>
                            </li>
                          </ul>
                    </div>

                    <br>
				  <table>
				    <tr>
				        <td colspan="5" class="td1"><input type="checkbox" name="" class="ckbox-all"></td>
				        <td class="td1" width="900">&nbsp;&nbsp;전체선택</td>
				        <td class="td2"><a href="#" class = "btn btn-sm btn-primary" id="deleteBtn">삭제하기</a></td>
				        
				    </tr>
				    
				</table>
				<br>
				<table border="0px" id="result" class="table table-hover table1" style="width: 100%; margin:auto;" align="center">
				    <thead>
				
				    </thead>
				
				    <tbody>
				
				    </tbody>
				</table>
				
				<script type="text/javascript">
					$(document).on("change", ".ckbox-all", function(){
						var checked = $(this).is(":checked");
						$(".ckbox").prop("checked", checked);
					});
				
					
					//첫화면에서도 뜨게
					$(document).ready(function() {
						myAlarmList();
					});
					
					
					
					//내 알람 목록
					function myAlarmList(cpage){
						
							$.ajax({
								url: "myAlarmSelectList.me",
								type: "POST",
								data:  { cpage: cpage }, 
								success: function(result) {
					
									console.log(result);
									
									
									var html = "";
									var value = "";
									let likeCounts = {};
									
									value+= "<tr id='tr1'>";
									value+= "<th width='50'>선택</th>";
									value+= "<th width='50'>번호</th>";
									value+= "<th width='150'>카테고리</th>";
									value+= "<th width='500' style='text-align: center;'>제목</th>";
									value+= "<th width='150'>작성일</th>";
									value+= "</tr>";
									$("#result thead").html(value);
					
									if (result.list.length == 0) {
										html += "<tr><td colspan='5' align='center'>존재하는 알림이 없습니다.</td></tr>";
									} else {
										for(let i in result.list){
											 const alaNo = result.list[i].alaNo;
											
											html += "<tr>";
											html += "<td><input type='checkbox' class='ckbox'></td>";
											html += "<td>"+result.list[i].alaNo+"</td>";
											// html += "<td>"+result.list[i].alaCategory+"</td>";
											
											if (result.list[i].alaCategory=='like') {
												html += "<td>[좋아요]</td>";
											} else if (result.list[i].alaCategory=='fReply' || result.list[i].alaCategory=='pReply') {
												html += "<td>[댓글]</td>";
											}  else {
												html += "<td>[승인]</td>";
											}
											//html += "<td>"+result.list[i].alaContent+"</td>";
												if (result.list[i].alaCategory=='like') {

													html += "<td>" + result.list[i].alaContent+"</td>";
												}else if (result.list[i].alaCategory=='fReply'||result.list[i].alaCategory=='pReply') {
													//~글에 댓글이 달렸습니다. html += "<td><span class='highlight'>" + result.list[i].alaContent.substring(0, 10) + "...</span> 글에 좋아요가 눌렸습니다.</td>";
													html += "<td>" + result.list[i].alaContent+"</td>";
												}
											html += "<td>"+result.list[i].alaDate+"</td>";
											html += "</tr>";
			
										}
									}
											$("#result tbody").html(html);
									
									
									
									
									var a = '';
										var page = result.page;
										var startpage = result.startPage;
										var endpage = result.endPage;
										var list = result.list;
										var maxpage = result.maxPage;
										
										console.log(page+" , "+startpage+" , "+endpage+" , "+list);
										
										a += '<ul class="pagination" align="center">';
										if(page== 1) {
											// 실행할 코드
											console.log("페이지가1임")
											a += '<li class="page-item disabled"><a class="page-link" href="">이전</a></li>';
										}else{
											console.log("페이지가1이아님")
											a += '<li class="page-item"><a class="page-link"  onclick="myAlarmList('+(page- 1)+');">이전</a></li>';
											
										}
										
										for(var num = startpage; num<= endpage; num++){
												a += '<li class="page-item active pagebtn"><a class="page-link pagebtn" onclick="myAlarmList(' + num +'); return false;">' + num + '</a></li>'
											}
										
										if(page== maxpage){
											a += '<li class="page-item disable d"><a class="page-link" href="">Next</a></li>';
										}else{
											a += '<li class="page-item"><a class="page-link"  onclick="myAlarmList(' + (page + 1) +'); return false;">다음</a></li>';
										}
										
										
										a += '</ul>';
										a += ' </div>';
					

										$("#pagingArea").html(a);

									
		
								},
								error: function(jqXHR, textStatus, errorThrown) {
									console.log("Error: " + textStatus + " " + errorThrown);
								}
								
							});
						
						
						
					}
					
					
					
				    //내가 쓴 게시글 목록
				function myPostList(cpage){
					$.ajax({
						url: "myPostList.me",
						type: "POST",
						data:  { cpage: cpage }, 
						success: function(result) {
			
							console.log(result);
							//console.log(result.list[1].boardNo);
							
							var html = "";
							var value = "";
			
							value+= "<tr id='tr1'>";
							value+= "<th width='50'>선택</th>";
							value+= "<th width='50'>번호</th>";
							value+= "<th width='150'>카테고리</th>";
							value+= "<th width='500' style='text-align: center;'>제목</th>";
							value+= "<th width='70'>조회수</th>";
							value+= "<th width='150'>작성일</th>";
							value+= "</tr>";
							$("#result thead").html(value);
			
							if (result.list.length == 0) {
								html += "<tr><td colspan='6' align='center'>작성한 글이 없습니다.</td></tr>";
							} else {
								for(let i in result.list){
									html += "<tr>";
									html += "<td><input type='checkbox' class='ckbox'></td>";
									html += "<td>"+result.list[i].boardNo+"</td>";
									if (result.list[i].boardNo.startsWith('BRD')) {
										html += "<td>[자유게시판]</td>";
									} else if (result.list[i].boardNo.startsWith('PRT')) {
										html += "<td>[소모임]</td>";
									}  else {
										html += "<td>[무료나눔]</td>";
														}
									html += "<td>"+result.list[i].boardTitle+"</td>";
									html += "<td>"+result.list[i].count+"</td>";
									html += "<td>"+result.list[i].createDate+"</td>";
									html += "</tr>";

								}
							}
									$("#result tbody").html(html);
							
							
							
							
							var a = '';
								var page = result.page;
								var startpage = result.startPage;
								var endpage = result.endPage;
								var list = result.list;
								var maxpage = result.maxPage;
								
								console.log(page+" , "+startpage+" , "+endpage+" , "+list);
								
								a += '<ul class="pagination" align="center">';
								if(page== 1) {
									// 실행할 코드
									console.log("페이지가1임")
									a += '<li class="page-item disabled"><a class="page-link" href="">이전</a></li>';
								}else{
									console.log("페이지가1이아님")
									a += '<li class="page-item"><a class="page-link"  onclick="myPostList('+(page- 1)+');">이전</a></li>';
									
								}
								
								for(var num = startpage; num<= endpage; num++){
										a += '<li class="page-item active pagebtn"><a class="page-link pagebtn" onclick="myPostList(' + num +'); return false;">' + num + '</a></li>'
									}
								
								if(page== maxpage){
									a += '<li class="page-item disable d"><a class="page-link" href="">Next</a></li>';
								}else{
									a += '<li class="page-item"><a class="page-link"  onclick="myPostList(' + (page + 1) +'); return false;">다음</a></li>';
								}
								
								
								a += '</ul>';
								a += ' </div>';
			

								$("#pagingArea").html(a);

							

						},
						error: function(jqXHR, textStatus, errorThrown) {
							console.log("Error: " + textStatus + " " + errorThrown);
						}
						
					});
				}
                    
                 	
                  //내가 쓴 댓글 목록
                    function myReplyList(cpage){
                    	$.ajax({
                    		url: "myReplyList.me",
                            type: "POST",
                            data:  { cpage: cpage }, 
                            success: function(result) {
                            	
                            	console.log(result.list.length);
                            	
         			            var html = "";
         			            var value = "";
         			            
          			            value+= "<tr id='tr1'>";
    							value+= "<th width='50'>선택</th>";
    							value+= "<th width='50'>번호</th>";
    							value+= "<th width='150'>카테고리</th>";
         			            value+= "<th width='500' style='text-align: center;'>제목</th>";
         			            value+= "<th width='150' style='text-align: center;'>작성일</th>";
         			            value+= "</tr>";
         			           $("#result thead").html(value);
         			           
        			            if (result.list.length === 0) {
        			                html += "<tr><td colspan='5' align='center'>작성한 댓글이 없습니다.</td></tr>";
        			                
        			            } else {
        			            	for(let i in result.list){
        			                    html += "<tr>";
        			                    html += "<td><input type='checkbox' class='ckbox'></td>";
        			                    html += "<td>"+result.list[i].breNo+"</td>";
        			                    if (result.list[i].boardNo.startsWith('BRD')) {
    										html += "<td>[무료나눔]</td>";
    									} else if (result.list[i].boardNo.startsWith('PRT')) {
    										html += "<td>[소모임]</td>";
    									}  else {
    										html += "<td>[차박지]</td>";
    														}
        			                    html += "<td>"+result.list[i].commContent+"<div><span class='myReplyBoardTitle' style='font-size: 13px;'> 원문 제목 : "+result.list[i].boardTitle+"</span></div></td>"; 
        			                    html += "<td>"+result.list[i].createDate+"</td>";
        			                    html += "</tr>";
        			                }
        			            }
        			            	 $("#result tbody").html(html);
        			            
        			            
        			            //////////////////////
				                var a = '';
					              var page = result.page;
					              var startpage = result.startPage;
					              var endpage = result.endPage;
					              var list = result.list;
					              var maxpage = result.maxPage;
					              
					              console.log(page+" , "+startpage+" , "+endpage+" , "+list);
					             
				            	  a += '<ul class="pagination" align="center">';
				            	  if(page== 1) {
				            		    // 실행할 코드
				            		    //console.log("페이지가1임")
					            	  a += '<li class="page-item disabled"><a class="page-link" href="">이전</a></li>';
				            	  }else{
				            		    //console.log("페이지가1이아님")
					            	  a += '<li class="page-item"><a class="page-link"  onclick="myReplyList('+(page- 1)+');">이전</a></li>';
				            		  
				            	  }
				            		
					              for(var num = startpage; num<= endpage; num++){
			                    		 a += '<li class="page-item active pagebtn"><a class="page-link pagebtn" onclick="myReplyList(' + num +'); return false;">' + num + '</a></li>'
		                    		 }
					            	
					              if(page== maxpage){
					            	  a += '<li class="page-item disable d"><a class="page-link" href="">Next</a></li>';
					              }else{
					            	  a += '<li class="page-item"><a class="page-link"  onclick="myReplyList(' + (page + 1) +'); return false;">다음</a></li>';
					              }
					              
					              
				            	  a += '</ul>';
				            	  a += ' </div>';
				

				            	  $("#pagingArea").html(a);
        			            
        			            /////////////////////////
                            },
                            error: function(jqXHR, textStatus, errorThrown) {
                                console.log("Error: " + textStatus + " " + errorThrown);
                            }
                    		
                    	});
                    }
                    
                    </script>


<!--                     <div align="left" >
                        <br>
                        <a href="#" class = "btn btn-sm btn-primary" id="deleteBtn">삭제하기</a>
                        <br><br>
                    </div>   -->
                    
                    <script type="text/javascript">
                    $("#deleteBtn").on("click", function() {
                    	
                        if ($("#myPostTab").hasClass("active")) {
                            console.log("myPostTab 내글삭제삭제함수탄다")
                            deleteMyPost();
                        } else if ($("#myReplyTab").hasClass("active")) {
                            deleteMyReply();
                            console.log("myReplyTab 내댓글삭제삭제함수탄다")
                        }
                    });
                    
                    
                    
                    // 게시물 삭제 함수
                    function deleteMyPost() {
                        // 선택된 게시물 번호를 담을 배열
                        var boardNoArr = [];
                        $(".ckbox:checked").each(function() {
                            boardNoArr.push($(this).closest("tr").find("td:eq(1)").text());
                        });
                        if (boardNoArr.length == 0) {
                            alert("삭제할 게시물을 선택해주세요.");
                            return;
                        }
                        if (!confirm("삭제하시겠습니까?")) {
                            return;
                        }
                        
                        console.log(boardNoArr);
                        var deletedCount = 0; // 삭제된 게시물의 개수를 저장할 변수
                        
                        $.ajax({
                            url: "deleteMyPost.me",
                            type: "POST",
                            data: { "boardNoArr[]": boardNoArr },
                            success: function(result) {
                                if (result>0) {
                                	console.log("게시물삭제완료");
                                	deletedCount = result;
                                    alert(deletedCount + "개의 게시물이 삭제되었습니다.");
                                    myPostList(); 
                                } else {
                                	console.log("게시물삭제 실패패패패패");
                                    alert("삭제에 실패하였습니다.");
                                }
                            },
                            error: function(jqXHR, textStatus, errorThrown) {
                                console.log("Error: " + textStatus + " " + errorThrown);
                            },
                            complete: function() {
                                // 삭제된 게시물의 개수에 따라 알림창을 한번만 띄우기 위해
                                // ajax 요청이 완료된 후 deletedCount 값을 초기화합니다.
                                deletedCount = 0;
                            }
                        });
                    }
                    
                    
                    //댓글 삭제 함수
                    function deleteMyReply(){
                    	// 선택된 댓글 번호를 담을 배열
                        var replyNoArr = [];
                        $(".ckbox:checked").each(function() {
                        	replyNoArr.push($(this).closest("tr").find("td:eq(1)").text());
                        });
                        
                        if (replyNoArr.length == 0) {
                            alert("삭제할 댓글을 선택해주세요.");
                            return;
                        }
                        if (!confirm("삭제하시겠습니까?")) {
                            return;
                        }
                        
                        console.log(replyNoArr);
                        
                        $.ajax({
                            url: "deleteMyReply.me",
                            type: "POST",
                            data: { "replyNoArr[]": replyNoArr },
                            success: function(result) {
                                if (result>0) {
                                	//console.log("게시물삭제완료");
                                    alert("삭제되었습니다.");
                                    myReplyList();
                                } else {
                                	//console.log("게시물삭제 실패패패패패");
                                    alert("삭제에 실패하였습니다.");
                                }
                            },
                            error: function(jqXHR, textStatus, errorThrown) {
                                console.log("Error: " + textStatus + " " + errorThrown);
                            }
                        });
                    	
                    }
                   
                  //////////
/*                     
                    $("#deleteBtn").on("click", function() {
                    	
                        if ($("#myPostTab").hasClass("active")) {
                            console.log("myPostTab 내글삭제삭제함수탄다")
                            deleteMyPost();
                        } else if ($("#myReplyTab").hasClass("active")) {
                            deleteMyReply();
                            console.log("myReplyTab 내댓글삭제삭제함수탄다")
                        }
                    }); */
                    
                    </script>
                    
                    

                    
               <div id="pagingArea" align="center" >

          	  </div>
                     

                    
                    
                    
                    
<!--  -->










<!--  -->
                    
                    



                   
                </div>
            </div>
        </div>
    </div>
</div>    
    <jsp:include page="../common/footer.jsp"/>
</body>
</html>