<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="kor">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="GARO is a real-estate template">
    <meta name="author" content="Kimarotec">
    <meta name="keyword" content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Carnping | 마이페이지</title>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>

    <!-- Css Styles -->
<!-- 	<link rel="stylesheet" href="resources/member/css/bootstrap.min.css" type="text/css"> 
    <link rel="stylesheet" href="resources/member/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="resources/member/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="resources/member/css/flaticon.css" type="text/css">
    <link rel="stylesheet" href="resources/member/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="resources/member/css/barfiller.css" type="text/css">
    <link rel="stylesheet" href="resources/member/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="resources/member/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="resources/member/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="resources/member/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="resources/member/css/style.css" type="text/css">
    <link rel="stylesheet" href="resources/member/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/member/assets/css/style.css">
    <script src="https://kit.fontawesome.com/f54b74b3a0.js" crossorigin="anonymous"></script> -->
    <style>
		#delbtn{
		    margin-right: 190px;
		}   
		
		.checkbox input[type="checkbox"].checkbox2 + label:before { /* 체크박스 배경 */
		    display: inline-block;
		    content: '';
		    width: 2em; 
		    height: 2em;
		    border: 1px solid #272727;
		    background-color: #47D090;
		  	background: url('/img/noneimg.png') no-repeat;
		  	background: url('resoures/img/checkbox.png') no-repeat;
		   /*  background: rgba(255, 255, 255, 0.2); */
		    border-radius: 50%;
		    margin: 0 5px -6px 0;
		}
		.checkbox input[type="checkbox"].checkbox2 + label:after { /* 체크 마크 */
		    position: absolute;
		    left: 5px;
		    top:2px;
		    content: '✔'; /* 체크 마크 ASCii 문자 */
		    font-size: 2em;
		    line-height: 0.8;
		    color: #0b0b0b;
		   
		}
		.innercheckbox{
		    position: absolute;
			right: -200px;
			top: 20px;
		}
		
		[type="checkbox"].checkbox2 + label:after { /* 기본 상태 - 투명에 크기 0, 체크해제  */
		    opacity: 0;
		    transform: scale(0);
		}
		[type="checkbox"]:checked.checkbox2 + label:after { /* 체크 상태 - 불투명에 크기 1 */
		    opacity: 1;
		    transform: scale(1);
		}
		input[type="checkbox"] label {
		    background: url('data:image/png;base64,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') no-repeat;
		    background-size: contain;
		    border: none; /* optional */
		}
		
		.innercheckbox {
		   /*  display: none !important; */
		}

		.listing__item .innercheckbox {
			display: block !important; 
			position: absolute !important;
			right: 20px !important;
			top: 10px !important;
			z-index: 1 !important;
			/* 나타날 때의 스타일을 추가합니다 */
		}
		
		.listing__item:hover .listing__item__pic .set-bg{
		    opacity: 0.7;
		}
		.checkbox label, .radio label {
		    min-height: 20px;
		    padding-left: 0px !important;
		    margin-bottom: 0;
		    font-weight: 400;
		    cursor: pointer;
		}
		/* 두줄되도 div 사이즈 안변하게 */
		.listing__item__text h5{
		    min-height: 44px;
		}
		.location{
		    line-height: 18px !important;
		    min-height: 30px;
		}

		@font-face {
		    font-family: 'Dovemayo_gothic';
		    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2302@1.1/Dovemayo_gothic.woff2') format('woff2');
		    font-weight: normal;
		    font-style: normal;
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
		.title{
			color : #1C3053;
		}
		.space{
			height : 200px;
		}
		.listing__item__pic__btns a {
		    font-size: 17px !important;
		    color: #ffffff;
		    height: 34px;
		    width: 34px;
		    background: rgba(255, 255, 255, 0.2);
		    border-radius: 50%;
		    line-height: 34px;
		    text-align: center;
		    display: inline-block;
		    margin-right: 6px;
		    padding-right : 0px !important;
		    
		}
		.like-button i {
			padding-right: 0px !important;
			padding-top : 8px !important;
		}
		
		.fa-regular.fa-heart {
		  color: #fff;
		}
		
		.fa-solid.fa-heart {
		  color: red;
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
            <a href="myLikeList.me" class="menu"><i class="fa-brands fa-gratipay"></i> 좋아요</a>
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
    
    <script>

    

    $(document).ready(function() {
    	  $('.like-button').click(function(e) {
    	    e.preventDefault();
    	    $(this).find('i.fa-regular').toggleClass('fa-solid');
    	  });
    	}); 
    </script>

        <!-- Filter End -->
    <div class="space"></div> 
    <div class="content-area user-profiel" style="background-color: white;">
        <div class="container">
            <div class="row">
                <div class="col-sm-10 col-sm-offset-1">
                    <div class="profiel-header">


                        <h3>
                            <br><br>
                            <b class= "title">좋아요한 차박지 장소</b> <small> </small><br>
                            
                          
                            <small></small>
                        </h3>
                        <hr>

                    </div>
                    <!-- property area -->
                    <div class="properties-area recent-property" style="background-color: #FFF;">
                        <div class="container"> 
                            
<!--                             <div class="checkbox" id="checkbox1">
                                <input type="checkbox" name="check2" id="check2" value="2" class="checkbox2">
                                <label for="check2">전체 선택</label>
                                <a href="" class="btn-sm btn-primary me-2 float-right" id="delbtn" onClick = "deleteMyCar();"> 삭제하기 </a>
                            </div> -->
                            <div class="row">
                                    <!-- Listing Section Begin -->  
                                <section class="listing nice-scroll hover">
                                    <div class="listing__list">
                                    
                                    
                                    
                                      <c:choose>
								            <c:when test="${ not empty list }">
								                <c:forEach var="list" items="${ list }" varStatus="status">   
			                                        <div class="listing__item">
			                                            <div class="listing__item__pic set-bg" style="cursor:pointer; background-image : url(${ list.cinfoImg1 }); background-size : cover;">
			                                                <img src="resources/img/carList/icon/ocean.png" alt="">
				
			<%--                                                 <div class="checkbox innercheckbox">
			                                                	<input type="hidden" name="post-id" value="${ list.cinfoNo }">
			                                                    <input type="checkbox" name="check2" value="${status.count}" class="check-item checkbox2" id="check-item${status.count}">
			                                                    <label for="check-item${status.count}" ></label>
			                                                </div> --%>
			                                                <!-- <div class="listing__item__pic__tag">Popular</div> -->
			                                                	<input type="hidden" name="post-id" value="${ list.cinfoNo }" >
			                                                <div class="listing__item__pic__btns">
			                                                   <!--  <a href="#"><span class="icon_zoom-in_alt"></span></a> -->
			                                                      <script>
			                                                      $(document).ready(function() {
			                                                    	  
			                                                      
																	    selectLike("${ list.cinfoNo }" , "#like${ list.cinfoNo }");
																	    function selectLike(cinfoNo, id){
																			 //var cinfoNo = $('input[name="post-id"]').val();  //글번호
																			 //var cinfoNo = document.getElementById('postId').val();
																			 var cinfoNo = cinfoNo;
																			 //var likeId = $(this).find('i.fa-regular.fa-heart'); //좋아요버튼 아이디 값
																			 var id  = id;
																			 
																			 console.log("좋아요조회 함수 실행함")
																			 console.log(cinfoNo);
																			 console.log(id);
																			 $.ajax({
																				 url : "selectLike.me",
																				 type : "post",
																				 data : {"cinfoNo": cinfoNo},
																				 success : function(result){
																					 console.log("성공  : " + result)
																					
																				  if(result>0){
	
																				   	 console.log("성공 " + id);
																				   	 $(id).addClass('fa-solid');
																				   
																				  }else{
																					 
	
																				  }
																					 
																				 },
																			     error: function(xhr, status, error) {
																				        // 삭제 실패시 처리할 로직
																			        alert("삭제 실패: " + error);
																			        console.error(error); 
																			      }
																				 
																			 });
																		 
																		}
																	
			                                                      });
																    </script>
																    <script type="text/javascript">
																	$(document).on('click', '.like-button', function(e) {
																	    e.preventDefault();
																	    $(this).find('i.fa-solid').toggleClass('fa-regular');
																	});
																	</script>
			                                                   <a href="#" class="like-button" onClick="like('${ list.cinfoNo }' , '#like${ list.cinfoNo }');"><i class="fa-regular fa-heart" id="like${ list.cinfoNo }"></i></a> 
			                                                </div>
			                                                
			                                            </div>
			                                            <div class="listing__item__text">
			                                                <div class="listing__item__text__inside">
			                                                    <h5>${ list.cinfoName }</h5>
			
			                                                    <div class="listing__item__text__rating">
			                                                        <div class="listing__item__rating__star">
						                                                <c:forEach var="rating" begin="1" end="${ list.cinfoRating }" 
								                                            step="1">
								                                            <span class="icon_star"></span>
								                                        </c:forEach>
						                                                <c:if test="${ ((list.cinfoRating)*10) % 10 >= 5  }">
						                                            		<span class="icon_star-half_alt"></span>
						                                       			 </c:if>
			                                                        </div>
			                                                    </div>
			                                                    <ul>
			                                                        <li class="location"><span class="icon_pin_alt"></span>${ list.cinfoAddress }</li>
			                                                        <li><span class="icon_phone"></span> (+12) 345-678-910</li>
			                                                    </ul>
			                                                </div>
			                                                <div class="listing__item__text__info">
			                                                    <div class="listing__item__text__info__left">
			                                                        
			                                                        <span>오픈요일</span>
			                                                    </div>
			                                                    <div class="listing__item__text__info__right">${ list.cinfoDays }</div>
			                                                </div>
			                                            </div>
			                                        </div>
			                                   </c:forEach>
			            					</c:when>
			                                <c:otherwise>
								                <h4>${ emp }</h4>
								            </c:otherwise>
								        </c:choose>      
                                    </div>
                                </section>
                        
                            </div>  <!--row-->
                        </div><!--container-->      
                    </div><!--properties-area recent-property-->
                </div><!--col-sm-10 col-sm-offset-1-->   
            </div><!--row-->
            
            <div id="pagingArea" align="center" >
                <ul class="pagination" align="center">
              
              		<c:choose>
              			<c:when test="${ pi.currentPage eq 1}">
                       	 	<li class="page-item disabled"><a class="page-link" href="">Previous</a></li>
                        </c:when>
                        <c:otherwise>
                        <li class="page-item"><a class="page-link" href="myCarbakList.me?cpage=${ pi.currentPage -1 }">Previous</a></li>
                        </c:otherwise>
                   	</c:choose>
                    <c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
                        <li class="page-item"><a class="page-link" href="myCarbakList.me?cpage=${ p }">${ p }</a></li>
        			</c:forEach>
                    <c:choose>
                    	<c:when test="${ pi.currentPage eq pi.maxPage }">
                            <li class="page-item disabled"><a class="page-link" href="">Next</a></li>
                         </c:when>
                         <c:otherwise>
                            <li class="page-item"><a class="page-link" href="myCarbakList.me?cpage=${ pi.currentPage +1 }">Next</a></li>
                          </c:otherwise>
                      </c:choose>
                </ul>
            </div>
            
        </div><!--container-->

    </div><!-- content-area user-profiel -->
<div class="space"></div>


<script>

function like(cinfoNo , id){
	//클래스가 뭐면 insert 
	console.log("글번호 : "+cinfoNo+ " 아이디 : " + id);
	
	if ($(id).hasClass('fa-solid')) {
	    // fa-regular 클래스가 있을 때
	    console.log("하트가 빨간색일떄 클릭함 -> delete해야함 ")
	    
	    //좋아요 삭제
        $.ajax({
            url: "deleteLike.me",
            type: "POST",
            data: { "cinfoNo": cinfoNo },
            success: function(result) {
                if (result>0) {
                	console.log("좋아요삭제완료");
                	/* deletedCount = result;
                    alert(deletedCount + "개의 게시물이 삭제되었습니다.");
                    myPostList();  */
                } else {
                	console.log("좋아요삭제 실패패패패패");
                    /* alert("삭제에 실패하였습니다."); */
                }
            },
            error: function(jqXHR, textStatus, errorThrown) {
                console.log("Error: " + textStatus + " " + errorThrown);
            }

        });
	    
	    
	    
	} else {
	    // fa-regular 클래스가 없을 때
	    console.log("하트가 흰색일떄 클릭함 -> insert해야함 ")
	    
	    //좋아요 INSERT
        $.ajax({
            url: "insertLike.me",
            type: "POST",
            data: { "cinfoNo": cinfoNo },
            success: function(result) {
                if (result>0) {
                	console.log("좋아요인서트완료");
                	/* deletedCount = result;
                    alert(deletedCount + "개의 게시물이 삭제되었습니다.");
                    myPostList();  */
                } else {
                	console.log("좋아요인서트실패패패패패");
                    /* alert("삭제에 실패하였습니다."); */
                }
            },
            error: function(jqXHR, textStatus, errorThrown) {
                console.log("Error: " + textStatus + " " + errorThrown);
            }

        });
		
	}

}


/* 
//좋아요 조회

//좋아요 색 바꾸기 


//'전체 선택' 체크박스를 클릭하면 다른 체크박스들도 선택되게 하는 함수
const selectAllCheckbox = document.getElementById('check2');
const otherCheckboxes = document.querySelectorAll('.check-item');

selectAllCheckbox.addEventListener('click', () => {
    otherCheckboxes.forEach((checkbox) => {
        checkbox.checked = selectAllCheckbox.checked;
    });
});

// 다른 체크박스들을 클릭하면, '전체 선택' 체크박스도 선택되게 함
otherCheckboxes.forEach((checkbox) => {
    checkbox.addEventListener('click', () => {
        if (!checkbox.checked) {
            selectAllCheckbox.checked = false;
        } else if (document.querySelectorAll('.check-item:checked').length === otherCheckboxes.length) {
            selectAllCheckbox.checked = true;
        }
    });
});


function deleteMyCar(){
	
	var cinfoNoArr = [];
	$('.check-item:checked').each(function() {
		cinfoNoArr.push($(this).siblings('input[name="post-id"]').val());
	});
	
		//console.log(cinfoNoArr);
		
	  if (cinfoNoArr.length == 0) {
	    alert("선택된 글이 없습니다.");
	    return;
	  }

	  if (confirm("선택된 글을 삭제하시겠습니까?")) {
		  //console.log("탄다ㅏㅏㅏㅏㅏㅏㅏㅏㅏ")
		  
	    $.ajax({
	      type: "POST",
	      url: "deleteMyCar.me",
	      data: { "cinfoNoArr[]" : cinfoNoArr },
	      success: function(result) {
	        // 삭제 성공시 처리할 로직
	        
	        alert(result +"개의 글이 삭제되었습니다.");
	      
	      },
	      error: function(xhr, status, error) {
	        // 삭제 실패시 처리할 로직
	        alert("삭제 실패: " + error);
	      }
	    });
	  }
}
*/
</script>
 <%-- <jsp:include page="../common/footer.jsp"/> --%>
<%--      <jsp:include page="../common/footer.jsp"/>	 --%>
</div><!-- master-area -->
    <!-- Js Plugins -->

<!--     <script src="resources/member/assets/js/modernizr-2.6.2.min.js"></script>
    <script src="resources/member/assets/js/jquery-1.10.2.min.js"></script>
    <script src="resources/member/js/main.js"></script> -->

<%-- <jsp:include page="../common/footer.jsp"/> 푸터에서 마지막 css  --%>


</body>
</html>