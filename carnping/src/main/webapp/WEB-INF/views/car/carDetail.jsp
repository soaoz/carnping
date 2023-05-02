<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    
    <meta charset="UTF-8">
    <meta name="description" content="Directing Template">
    <meta name="keywords" content="Directing, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Directing | Template</title>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700;800&display=swap" rel="stylesheet">
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
    .list_detail_reply{
	padding-left: 75px;
	}
	.ul_line{
		list-style-type:none;  
	}
	.ul_reply3{
		display: none;
	}

    </style>
   
</head>

<body>
    <jsp:include page="../common/header.jsp"/>

<section class="listing-hero set-bg" data-setbg="${ cinfo.cinfoImg1 }">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="listing__hero__option">
                    <div class="listing__hero__icon">
                        <img src="img/listing/ocean.png" alt="">
                    </div>
                    <div class="listing__hero__text">
                        <h2>${ cinfo.cinfoName }</h2>
                        <div class="listing__hero__widget">
                            <div class="listing__hero__widget__rating">
                                <c:forEach var="rating" begin="1" end="${ cinfo.cinfoRating }" 
                                        step="1">
                                        <span class="icon_star"></span>
                                </c:forEach>
                                <c:if test="${ ((cinfo.cinfoRating)*10) % 10 >= 5  }">
                                    <span class="icon_star-half_alt"></span>
                                </c:if>
                            </div>
                        </div>
                            <div></div>
                        <p><span class="icon_pin_alt"></span>${ cinfo.cinfoAddress }</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="listing__hero__btns">
                    <a href="#" class="primary-btn share-btn"><i class="fa fa-mail-reply"></i>뒤로가기 </a>
                    <a href="#" class="primary-btn"><i class="fa fa-bookmark"></i> 위시리스트</a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Listing Section End -->

<!-- Listing Details Section Begin -->
<section class="listing-details spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="listing__details__text">
                    <div class="listing__details__about">
                        <h4>소개</h4>
                        <p>
                        	${ cinfo.cinfoContent }
                        </p>
                    </div>
                    <hr>
                    <div class="listing__details__about">
                        <h4>유의사항</h4>
                        <p>
                        	${ cinfo.cinfoNotice }
                        </p>
                    </div>
                    
                    
                    <div class="listing__details__gallery">
                        <h4>사진</h4>
                        <div class="listing__details__gallery__pic">
                            <div class="listing__details__gallery__item">
                                <img  style="width:1000px; height:450px;"
                                 class="listing__details__gallery__item__large"
                                    src="${ cinfo.cinfoImg1 }" alt="">
                                <span><i class="fa fa-camera"></i> Image</span>
                            </div>
                            <div class="listing__details__gallery__slider owl-carousel">
                                <!-- 포문으로 돌릴거 클래스 유지 되면 온클릭으로 이미지 크게 띄울거-->


					<c:if test="${ cinfo.cinfoImg1 != null }">
                                 <img data-imgbigurl="${ cinfo.cinfoImg1 }"
                                 style="width:200px; height:120px;"
                                     src="${ cinfo.cinfoImg1 }" alt="">									
					</c:if>
					<c:if test="${ cinfo.cinfoImg2 != null }">
                                 <img data-imgbigurl="${ cinfo.cinfoImg2 }"
                                 style="width:200px; height:120px;"
                                     src="${ cinfo.cinfoImg2 }" alt="">									
					</c:if>
					<c:if test="${ cinfo.cinfoImg3 != null }">
                                 <img data-imgbigurl="${ cinfo.cinfoImg3 }"
                                 style="width:200px; height:120px;"
                                     src="${ cinfo.cinfoImg3 }" alt="">									
					</c:if>
					<c:if test="${ cinfo.cinfoImg4 != null }">
                                 <img data-imgbigurl="${ cinfo.cinfoImg4 }"
                                 style="width:200px; height:120px;"
                                     src="${ cinfo.cinfoImg4 }" alt="">									
					</c:if>
					<c:if test="${ cinfo.cinfoImg5 != null }">
                                 <img data-imgbigurl="${ cinfo.cinfoImg5 }"
                                 style="width:200px; height:120px;"
                                     src="${ cinfo.cinfoImg5 }" alt="">									
					</c:if>
					<c:if test="${ cinfo.cinfoImg6 != null }">
                                 <img data-imgbigurl="${ cinfo.cinfoImg6 }"
                                 style="width:200px; height:120px;"
                                     src="${ cinfo.cinfoImg6 }" alt="">									
					</c:if>
					<c:if test="${ cinfo.cinfoImg7 != null }">
                                 <img data-imgbigurl="${ cinfo.cinfoImg7 }"
                                 style="width:200px; height:120px;"
                                     src="${ cinfo.cinfoImg7 }" alt="">									
					</c:if>
					<c:if test="${ cinfo.cinfoImg8 != null }">
                                 <img data-imgbigurl="${ cinfo.cinfoImg8 }"
                                 style="width:200px; height:120px;"
                                     src="${ cinfo.cinfoImg8 }" alt="">									
					</c:if>
					<c:if test="${ cinfo.cinfoImg9 != null }">
                                 <img data-imgbigurl="${ cinfo.cinfoImg9 }"
                                 style="width:200px; height:120px;"
                                     src="${ cinfo.cinfoImg9 }" alt="">									
					</c:if>
					<c:if test="${ cinfo.cinfoImg10 != null }">
                                 <img data-imgbigurl="${ cinfo.cinfoImg10 }"
                                 style="width:200px; height:120px;"
                                     src="${ cinfo.cinfoImg10 }" alt="">									
					</c:if>
                                

                            </div>
                        </div>
                    </div>
                    <div class="listing__details__amenities">
                        <h4>주변시설</h4>
                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-6">
                                <div class="listing__details__amenities__item">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-0-circle" viewBox="0 0 16 16">
                                        <path d="M7.988 12.158c-1.851 0-2.941-1.57-2.941-3.99V7.84c0-2.408 1.101-3.996 2.965-3.996 1.857 0 2.935 1.57 2.935 3.996v.328c0 2.408-1.101 3.99-2.959 3.99ZM8 4.951c-1.008 0-1.629 1.09-1.629 2.895v.31c0 1.81.627 2.895 1.629 2.895s1.623-1.09 1.623-2.895v-.31c0-1.8-.621-2.895-1.623-2.895Z"/>
                                        <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0ZM1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8Z"/>
                                      </svg>
                                    <i class="bi bi-thermometer-snow"></i>
                                    <i class="bi bi-0-circle"></i>
                                    <h6>Accept Credit Card</h6>
                                 
                                </div>
                                
                            </div>
                            <div class="col-lg-3 col-md-3 col-6">
                                <div class="listing__details__amenities__item">
                                    <img src="img/listing/details/amenities/ame-2.png" alt="">
                                    <h6>Free Wifi</h6>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-6">
                                <div class="listing__details__amenities__item">
                                    <img src="img/listing/details/amenities/ame-3.png" alt="">
                                    <h6>Smoking Area</h6>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-6">
                                <div class="listing__details__amenities__item">
                                    <img src="img/listing/details/amenities/ame-4.png" alt="">
                                    <h6>Free Parking</h6>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-6">
                                <div class="listing__details__amenities__item">
                                    <img src="img/listing/details/amenities/ame-5.png" alt="">
                                    <h6>Family Friendly</h6>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-6">
                                <div class="listing__details__amenities__item">
                                    <img src="img/listing/details/amenities/ame-6.png" alt="">
                                    <h6>Coffee</h6>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-6">
                                <div class="listing__details__amenities__item">
                                    <img src="img/listing/details/amenities/ame-7.png" alt="">
                                    <h6>Massage</h6>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-6">
                                <div class="listing__details__amenities__item">
                                    <img src="img/listing/details/amenities/ame-8.png" alt="">
                                    <h6>Coupons</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="listing__details__rating">
                        <h4>평점</h4>
                        <div class="listing__details__rating__overall">
                            <h2>${ reCount.reviewType }</h2>
                            <div class="listing__details__rating__star">
                                  <c:forEach var="rating" begin="0" end="${ reCount.reviewAllView }" 
                                      step="1">
                                      <span class="icon_star"></span>
                                  </c:forEach>
                                  <c:if test="${ ((reCount.reviewAllView)*10) % 10 >= 5  }">
										<span class="icon_star-half_alt"></span>
								  </c:if>
								  <c:if test="${ reCount.reviewAllView <= 4 }">
									  <c:forEach var="rating" begin="2" end="${ 5 - reCount.reviewAllView }"
	                                      step="1">
	                                      <span class="icon_star_alt"></span>
	                                  </c:forEach>
                                  </c:if>
                            </div>
                            <span>(${ reCount.count }개 리뷰)</span>
                        </div>
                        <div class="listing__details__rating__bar">
                            <div class="listing__details__rating__bar__item">
                                <span>${ reCount.reviewAllView }</span>
                                <div id="bar1" class="barfiller">
                                    <span class="fill" data-percentage="${ reCount.reviewAllView * 20 }"></span>
                                </div>
                                <span class="right">뷰</span>
                            </div>
                            <div class="listing__details__rating__bar__item">
                                <span>${ reCount.reviewView }</span>
                                <div id="bar2" class="barfiller">
                                    <span class="fill" data-percentage="${ reCount.reviewView * 20 }"></span>
                                </div>
                                <span class="right">편의</span>
                            </div>
                            <div class="listing__details__rating__bar__item">
                                <span>${ reCount.reviewConv }</span>
                                <div id="bar3" class="barfiller">
                                    <span class="fill" data-percentage="${ reCount.reviewConv * 20 }"></span>
                                </div>
                                <span class="right">접근</span>
                            </div>
                            <div class="listing__details__rating__bar__item">
                                <span>${ reCount.reviewAccess }</span>
                                <div id="bar4" class="barfiller">
                                    <span class="fill" data-percentage="${ reCount.reviewAccess * 20}"></span>
                                </div>
                                <span class="right">지형</span>
                            </div>
                        </div>
                    </div>
                    <ul class="listing__details__comment ul_line">
                        <h4>리뷰</h4>
                        <div></div>
                        <%-- <c:forEach var="re" items="${ review }">
                        <hr>
                        <li>
                            <div class="listing__details__comment__item">
                                <div class="listing__details__comment__item__pic">
                                    <img src="https://postfiles.pstatic.net/MjAxODA1MzFfNTUg/MDAxNTI3NzE4ODQyNTQx.MuY4zkhAAP6FvTcjK30FvFu45Q5inuSPLtDM4IHgByAg.0oWFI5ewAqk_XNYmUo_xNDn0JS0ifsiX9SEEWqaBuCAg.JPEG.wellduo33/IMG_8548.jpg?type=w580" alt="">
                                </div>
                                <div class="listing__details__comment__item__text">
                                    <div class="listing__details__comment__item__rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                    <span>${ re.createDate }</span>
                                    <h5>${ re.memNo }</h5>
                                    <div class="row">
                                    <div class="col-md-9">
                                    <p>${ re.reviewContent }</p>
                                    </div>
                                    <div class="col-md-3">
                                    	<img src="https://postfiles.pstatic.net/MjAxODA1MzFfNTUg/MDAxNTI3NzE4ODQyNTQx.MuY4zkhAAP6FvTcjK30FvFu45Q5inuSPLtDM4IHgByAg.0oWFI5ewAqk_XNYmUo_xNDn0JS0ifsiX9SEEWqaBuCAg.JPEG.wellduo33/IMG_8548.jpg?type=w580">
                                    </div>
                                    </div>
                                    <ul class="ul_line">
                                        <li>${ re.reviewLike }<i class="fa fa-hand-o-right"></i> 좋아요</li>
                                        <li><button type="button" class="scroll_reply"><i class="fa fa-share-square-o"></i>댓글</button></li>
                                        <br>                        
                                    </ul>
                                </div>
                            </div>
                            <ul class="ul_line ul_reply3">
                                <hr>
                                <div class="list_detail_reply">
                                    <li>
                                        <div class="listing__details__comment__item__pic">
                                            <img src="https://talkimg.imbc.com/TVianUpload/tvian/TViews/image/2019/02/11/c3fb2eb9-8326-40db-a29e-56685f8af6f7.JPG" alt="">
                                        </div>
                                        <div class="listing__details__comment__item__text">
                                            <span>March 22, 2019</span>
                                            <h5>윈터1</h5>
                                            <p>은우랑 같이왔어요 바람도 적당하고 너무너무 좋았습니다 나중에 또와도 좋을것 같아요!!</p>
                                        </div>
                                    </li>
                                </div>
                                <hr>          
	                            <li>
	                                <div class="listing__details__review">
	                                <form action="">
	                                    <textarea placeholder="대댓글"></textarea>
	                                    <button type="submit" class="site-btn">대댓글 등록</button>
	                                </form>
	                            	</div>
	                            </li>
							</ul>
                        </li>
                        </c:forEach> --%>
                    </ul>
                    <br>
                    <div class="listing__details__review">
                        <h4>리뷰 작성</h4>
                        <form action="#">
                         	<small style="color: gray">*평점을 입력해주세요!*
                         	<br> 1. 뷰: 전망이 좋은가요?
                         	<br> 2. 편의성 : 주변에 편의시설들이 어떠한가요?
                         	<br> 3. 접근성 : 접근하기 편한가요?
                         	<br> 4. 지형 : 지형은 평평하며 차박하기에 편한 지형인가요?
                         	</small>
                         <div class="row">
                         	<div class="col-md-3"><input type="number" class="form-control" placeholder="뷰" required/></div>
                         	<div class="col-md-3"><input type="number" class="form-control" placeholder="편의성" required/></div>
                         	<div class="col-md-3"><input type="number" class="form-control" placeholder="접근성" required/></div>
                         	<div class="col-md-3"><input type="number" class="form-control" placeholder="지형" required/></div>
                            <textarea placeholder="Review"></textarea>
                            <button type="submit" class="site-btn">리뷰등록</button>
						</div>
                        </form>
                    </div>
                </div>
            </div>
            <!-- 리뷰 끝 -->
            <div class="col-lg-4">
                <div class="listing__sidebar">
                    <div class="listing__sidebar__contact">
                        <div class="listing__sidebar__contact__map">
                            <div id="map" style="width: 100%; height: 100%;position: absolute; "></div>
                            <img src="img/listing/details/map-icon.png" alt="">
                        </div>
                        <div class="listing__sidebar__contact__text">
                            <h4>지도정보</h4>
                            <ul>
                                <li><span class="icon_pin_alt"></span> ${ cinfo.cinfoAddress }</li>
                                <li><span class="icon_phone"></span> ${ cinfo.phone } </li>
                            </ul>
                            <!-- <div class="listing__sidebar__contact__social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a>
                                <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
                                <a href="#" class="google"><i class="fa fa-google"></i></a>
                            </div> -->
                        </div>
                    </div>
                    <div class="listing__sidebar__working__hours">
                        <h4>오픈일자</h4>
                        <ul>
                        	<c:forEach var="i" begin="0" end="6">
                        		<c:choose>
	                        		<c:when test="${ cinfo.cinfoDays.contains(week[i]) }">
			                            <li>${week[i]}요일 <span class="opening">Opening</span></li>
	                        		</c:when>
									<c:otherwise>
		                           		<li>${week[i]}요일 <span class="closed">Closed</span></li>
									</c:otherwise>
                        		</c:choose>
                        	</c:forEach>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Listing Details Section End -->


<jsp:include page="../common/footer.jsp"/>

<!-- Js Plugins -->

<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.nice-select.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/jquery.nicescroll.min.js"></script>
<script src="js/jquery.barfiller.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/jquery.slicknav.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/main.js"></script>
<script>
$(function(){
	 selectReview();
	
    $(".scroll_reply").on("click", function(){
        const $reply = $(".ul_reply3"); //jQuery 방식으로 선택된 요소를 변수에 담음.
        if($reply.css("display") == "none"){
            $reply.slideDown(); 
        }else{ // 보이는 상태
            $reply.slideUp(); 
        }
    });
})

let values = "";
function selectReview(){
	$.ajax({
		url : 'selectReview.ca',
		data : { cinfoNo : '${cinfo.cinfoNo}'},
		success:function(review){
			console.log(review);
			for(let i in review){
				values += "<li><div class='listing__details__comment__item'>"
                		+  		"<div class='listing__details__comment__item__pic'>"
                    	+  			"<img src='https://postfiles.pstatic.net/MjAxODA1MzFfNTUg/MDAxNTI3NzE4ODQyNTQx.MuY4zkhAAP6FvTcjK30FvFu45Q5inuSPLtDM4IHgByAg.0oWFI5ewAqk_XNYmUo_xNDn0JS0ifsiX9SEEWqaBuCAg.JPEG.wellduo33/IMG_8548.jpg?type=w580' >"
                		+		"</div>"
                		+		"<div class='listing__details__comment__item__text'>"
                		+			"<div class='listing__details__comment__item__rating'>";
                		
                		
               	for(let j= 1; j < review[i].reviewScr; j++){
            	   values += "<span class='icon_star'></span>"
               	}
               	if((review[i].reviewScr * 10)%10 >= 5){
               		values += "<span class='icon_star-half_alt'></span>" ;
               			for(let j=4; j > review[i].reviewScr; j--){
                       	 	values += "<span class='icon_star_alt'></span>"
                       	}
               	}else{
               		for(let j=5; j > review[i].reviewScr; j--){
                   	 	values += "<span class='icon_star_alt'></span>"
                   	}
               	}
               	
                values +=			 "</div>"
                    	+ 			 "<span>" + review[i].createDate +"</span>"
                    	+ 			 "<h5>" + review[i].memNo +"</h5>"
                    	+ 			 "<div class='row'>"
                    	+ 			 	"<div class='col-md-9'>"
                    	+			 		"<p>" + review[i].reviewContent + "</p>"
                   	 	+			 	"</div>"
                    	+ 				"<div class='col-md-3'>"
                    	+					"<img src=\'"+ review[i].reviewImg +"\'>"
                    	+ 				"</div>"
                    	+			 "</div>"
                    	+			 "<ul class='ul_line'>"
                    	+				"<li>" +review[i].reviewLike +"<i class='fa fa-hand-o-right'></i> 좋아요</li>"
                       	+				"<li><button type='button' class='scroll_reply'><i class='fa fa-share-square-o'></i>댓글</button></li>"
                        +			"<br></ul></div></div>";
                        selectReviewComment(review[i].reviewNo);
                        
                        values+="</li>";
                        
				}
				$('.listing__details__comment div').html(values);
		}
	})
}

<ul class="ul_line ul_reply3">
<hr>
<div class="list_detail_reply">
    <li>
        <div class="listing__details__comment__item__pic">
            <img src="https://talkimg.imbc.com/TVianUpload/tvian/TViews/image/2019/02/11/c3fb2eb9-8326-40db-a29e-56685f8af6f7.JPG" alt="">
        </div>
        <div class="listing__details__comment__item__text">
            <span>March 22, 2019</span>
            <h5>윈터1</h5>
            <p>은우랑 같이왔어요 바람도 적당하고 너무너무 좋았습니다 나중에 또와도 좋을것 같아요!!</p>
        </div>
    </li>
</div>
<hr>          
<li>
    <div class="listing__details__review">
    <form action="">
        <textarea placeholder="대댓글"></textarea>
        <button type="submit" class="site-btn">대댓글 등록</button>
    </form>
	</div>
</li>
</ul>

function selectReviewComment(reviewNo){
	$.ajax({
		url : "selectReviewComment.ca",
		data : {reNo : reviewNo},
		success: function(result){
			if(result == null){
				values += "<div><ul class='ul_line ul_reply3'><li>"
						+ "<div class='listing__details__comment__item__text'>"
			}
			
		}
	})
}

</script>

</body>

</html>