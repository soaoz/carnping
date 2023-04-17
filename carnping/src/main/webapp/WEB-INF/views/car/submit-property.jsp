<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> 
<html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>GARO ESTATE | Submit property Page</title>
        <meta name="description" content="GARO is a real-estate template">
        <meta name="author" content="Kimarotec">
        <meta name="keyword" content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>
        <style>
      		.wrap-vertical {
			width: 500px;
			padding: 20px; 
			overflow: scroll;
			align: center;
			/* 가로 스크롤 */
			overflow: auto;
			white-space: nowrap;

		}
            .map_wrap {position:relative;width:100%;height:350px;}
            .title {font-weight:bold;display:block;}
            .hAddr {position:absolute;left:10px;top:10px;border-radius: 2px;background:#fff;background:rgba(255,255,255,0.8);z-index:1;padding:5px;}
            #centerAddr {display:block;margin-top:2px;font-weight: normal;}
            .bAddr {padding:5px;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
        </style>
        <link rel="stylesheet" href="assets/css/normalize.css">
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/fontello.css">
        <link href="assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet">
        <link href="assets/fonts/icon-7-stroke/css/helper.css" rel="stylesheet">
        <!-- <link href="css/animate.css" rel="stylesheet" media="screen"> -->
        <link rel="stylesheet" href="assets/css/bootstrap-select.min.css"> 
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/icheck.min_all.css">
        <link rel="stylesheet" href="assets/css/price-range.css">
        <link rel="stylesheet" href="assets/css/owl.carousel.css">  
        <link rel="stylesheet" href="assets/css/owl.theme.css">
        <link rel="stylesheet" href="assets/css/owl.transitions.css"> 
        <link rel="stylesheet" href="assets/css/wizard.css"> 
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/responsive.css">
        <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
        <!-- <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"> -->
        <!-- <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css"> -->
        <!-- <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
        <link rel="stylesheet" href="css/flaticon.css" type="text/css">
        <link rel="stylesheet" href="css/nice-select.css" type="text/css">
        <link rel="stylesheet" href="css/barfiller.css" type="text/css">
        <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
        <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
        <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
        <link rel="stylesheet" href="css/slicknav.min.css" type="text/css"> -->
        <link rel="stylesheet" href="css/style.css" type="text/css">
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
        <link rel="icon" href="favicon.ico" type="image/x-icon">
         <!-- Css Styles -->
        
  
    </head>
    <body>
        <jsp:include page="../common/header.jsp"/>
    <!-- Page Preloder -->
    <!-- <div id="preloder">
        <div class="loader"></div>
    </div> -->
 <!-- Header Section Begin -->
 <!-- <header class="header">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-3 col-sm-5">
                <div class="header__logo">
                    <a href="./index.html"><img src="img/logo.png" alt=""></a>
                </div>
            </div>
            <div class="col-lg-9 col-md-9">
                <div class="header__nav">
                    <nav class="header__menu mobile-menu">
                        <ul>
                            <li><a href="./index.html">Home</a></li>
                            <li class="active"><a href="./listing.html">Listing</a></li>
                            <li><a href="#">Categories</a></li>
                            <li><a href="#">Pages</a>
                                <ul class="dropdown">
                                    <li><a href="./about.html">About</a></li>
                                    <li><a href="./listing-details.html">Listing Details</a></li>
                                    <li><a href="./blog-details.html">Blog Details</a></li>
                                    <li><a href="./contact.html">Contact</a></li>
                                </ul>
                            </li>
                            <li><a href="./blog.html">Blog</a></li>
                            <li><a href="#">Shop</a></li>
                        </ul>
                    </nav>
                    <div class="header__menu__right">
                        <a href="#" class="primary-btn"><i class="fa fa-plus"></i>Add Listing</a>
                        <a href="#" class="login-btn"><i class="fa fa-user"></i></a>
                    </div>
                </div>
            </div>
        </div>
        <div id="mobile-menu-wrap"></div>
    </div>
</header> -->
<!-- Header Section End -->

<!-- Listing Section Begin -->
<section class="listing-hero set-bg" data-setbg="img/camping.jpg" style="background-image: url('img/camping.jpg');">
    <div class="container">
        <div class="row">
           
            <div class="col-lg-12">
                <div class="listing__hero__btns">
                    <a href="#" class="primary-btn share-btn"><i class="fa fa-mail-reply"></i>뒤로가기 </a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Listing Section End -->


        <!-- property area -->
        <div class="content-area submit-property" style="background-color: #FCFCFC;">&nbsp;
            <div class="container">
                <div class="clearfix" > 
                    <div class="wizard-container"> 

                        <div class="wizard-card ct-wizard-orange" id="wizardProperty">
                            <form action="" method="">                        
                                <div class="wizard-header">
                                    <h3>
                                        <b>차박정보 등록</b><br>
                                        <small>차박 정보등록을 해주셔서 진심으로 감사드립니다.</small>
                                    </h3>
                                    <br>
                                </div>

                                <ul>
                                    <li><a href="#step1" data-toggle="tab">Step 1 </a></li>
                                    <li><a href="#step2" data-toggle="tab">Step 2 </a></li>
                                    <li><a href="#step3" data-toggle="tab">Step 3 </a></li>
                                    <li><a href="#step4" data-toggle="tab">Finished </a></li>
                                </ul>

                                <div class="tab-content">
                                    
                                    <div class="tab-pane" id="step1">
                                        <h4 class="info-text">차박의 얼굴을 만들어주세요</h4>
                                        <div class="row p-b-15  ">
                                            
                                            <div class="col-sm-4 col-sm-offset-1">
                                                <div class="picture-container">
                                                    <div class="picture">
                                                        <img src="assets/img/default-property.jpg" class="picture-src" id="wizardPicturePreview" title=""/>
                                                        <input type="file" id="wizard-picture">
                                                    </div> 
                                                    <small>메인 사진을 등록해주세요 가로x세로 길이는 동일하게 해주시면 감사합니다.</small>
                                                </div>
                                            </div>
                                            <div class="col-sm-6">
                                                <div class="form-group">
                                                    <label>제목<small>(required)</small></label>
                                                    <input name="#" type="text" class="form-control" placeholder="추천하신 지역의 재치있는 이름을 지어주세요!">
                                                </div>

                                                <div class="form-group">
                                                    <label>내용 <small>(required)</small></label>
                                                    <textarea name="#" type="text" class="form-control" placeholder="추천하는 지역을 저희에게 소개해주세요!"></textarea>
                                                </div> 
                                                <div class="form-group">
                                                    <label>주의사항 <small>(required)</small></label>
                                                    <textarea name="#" type="text" class="form-control" placeholder="추천하는 지역은 이걸 주의해야해요!"></textarea>
                                                </div> 
                                                <div class="form-group">
                                                    <label>작성자<small>(작성자의 아이디를 표기하겠습니까?)</small></label>
                                                    <br>
                                                    <input name="#" type="radio" class="form-control" >
                                                    <label>네</label>
                                                    <input name="#" type="radio" class="form-control" >
                                                    <label>아니요</label>
                                                </div>
                                            </div>
                                        </div>
                                        
                                    </div>
                                    <!--  End step 1 -->
                                    
                                    <div class="tab-pane" id="step2">
                                        <h4 class="info-text"> 위치는 어디일까요, 주변은 괜찮나요? </h4>
                                        <div class="row">
                                            <div class="col-sm-12"> 
                                                <div class="col-sm-12"> 
                                                    <div class="form-group">
                                                        <div id="addressDiv2">
                                                           
                                                            <input type="text" id="address1"
                                                                placeholder="우편번호" name="poster"
                                                                class="form-control">
                                                            <input type="button"
                                                                class="btn btn-primary btn-md"
                                                                onclick="juso();" value="우편번호 찾기"><br><br>
                                                            <input type="text" class="form-control"
                                                                id="address2" placeholder="주소"
                                                                name="street"><br>
                                                            <input type="text" class="form-control"
                                                                id="address3" placeholder="상세주소"
                                                                name="address">
                                                        </div>
                                                    </div> 
                                                </div> 
                                            </div>
                                            <div class="col-sm-12 padding-top-15">
                                                <div class="form-group">
                                                    <div class="map_wrap">
                                                        <div id="map"></div>
                                                        <div class="hAddr">
                                                            <span class="title">지도중심기준 행정동 주소정보</span>
                                                            <span id="centerAddr"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                           
                                            <div class="col-sm-12 padding-top-15">
                                                <div class="col-sm-3">
                                                    <div class="form-group">
                                                        <div class="checkbox">
                                                            <label>
                                                                <input type="checkbox"> 공중화장실
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div> 
                                                <div class="col-sm-3">
                                                    <div class="form-group">
                                                        <div class="checkbox">
                                                            <label>
                                                                <input type="checkbox"> 주차장
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>                                                 
                                                <div class="col-sm-3">
                                                    <div class="form-group">
                                                        <div class="checkbox">
                                                            <label>
                                                                <input type="checkbox"> 병원
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>                                                 
                                                <div class="col-sm-3">
                                                    <div class="form-group">
                                                        <div class="checkbox">
                                                            <label>
                                                                <input type="checkbox"> 편의점
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div> 
                                            </div> 
                                            <div class="col-sm-12 padding-bottom-15">
                                                <div class="col-sm-3">
                                                    <div class="form-group">
                                                        <div class="checkbox">
                                                            <label>
                                                                <input type="checkbox"> 화기사용이 안돼요!
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-sm-3">
                                                    <div class="form-group">
                                                        <div class="checkbox">
                                                            <label>
                                                                <input type="checkbox"> 조용해야해요!
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-sm-3">
                                                    <div class="form-group">
                                                        <div class="checkbox">
                                                            <label>
                                                                <input type="checkbox"> 취사가 안돼요!
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-sm-3">
                                                    <div class="form-group">
                                                        <div class="checkbox">
                                                            <label>
                                                                <input type="checkbox"> 수평이 안맞아요!
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                            </div>
                                            <br>
                                        </div>
                                    </div>
                                    <!-- End step 2 -->
                                    
                                    <div class="tab-pane" id="step3">                                        
                                        <h4 class="info-text">사진 조금 더 보여주실래요? </h4>
                                        <div class="row">  
                                            <div class="wrap-vertical col-sm-12">
                                                
                                                <label for="file" class="col-form-label col-md-3">서브
                                                    이미지 (최소4장 최대9장)</label>
                                                    <hr>
                                                <table>
                                                    <tr>
                                                        
                                                        <td>
                                                            <img id="contentImg1" width="200"
                                                                height="200" onclick="chooseFile(2);"
                                                                onerror="this.style.display='none'">
                                                        </td>
                                                        <td>
                                                            <img id="contentImg2" width="200"
                                                                height="200" onclick="chooseFile(3);"
                                                                onerror="this.style.display='none'">
                                                        </td>
                                                        <td>
                                                            <img id="contentImg3" width="200"
                                                                height="200" onclick="chooseFile(4);"
                                                                onerror="this.style.display='none'">
                                                        </td>
                                                        <td>
                                                            <img id="contentImg4" width="200"
                                                                height="200" onclick="chooseFile(5);"
                                                                onerror="this.style.display='none'">
                                                        </td>
                                                        <td>
                                                            <img id="contentImg5" width="200"
                                                                height="200" onclick="chooseFile(6);"
                                                                onerror="this.style.display='none'">
                                                        </td>
                                                        <td>
                                                            <img id="contentImg6" width="200"
                                                                height="200" onclick="chooseFile(7);"
                                                                onerror="this.style.display='none'">
                                                        </td>
                                                        <td>
                                                            <img id="contentImg7" width="200"
                                                                height="200" onclick="chooseFile(8);"
                                                                onerror="this.style.display='none'">
                                                        </td>
                                                        <td>
                                                            <img id="contentImg8" width="200"
                                                                height="200" onclick="chooseFile(9);"
                                                                onerror="this.style.display='none'">
                                                        </td>
                                                        <td>
                                                            <img id="contentImg9" width="200"
                                                                height="200" onclick="chooseFile(10);"
                                                                onerror="this.style.display='none'">
                                                        </td>
    
                                                    </tr>
                                                </table>
                                                   
                                                <input type="file" name="file2" id="file2"
                                                    style="display: none;" onchange="loadImg(this,2);" required>
                                                <input type="file" name="file3" id="file3"
                                                    style="display: none;" onchange="loadImg(this,3);" required>
                                                <input type="file" name="file4" id="file4"
                                                    style="display: none;" onchange="loadImg(this,4);" required>
                                                <input type="file" name="file5" id="file5"
                                                    style="display: none;" onchange="loadImg(this,5);" required>
                                                <input type="file" name="file6" id="file6"
                                                    style="display: none;" onchange="loadImg(this,6);" >
                                                <input type="file" name="file7" id="file7"
                                                    style="display: none;" onchange="loadImg(this,7);" >
                                                <input type="file" name="file8" id="file8"
                                                    style="display: none;" onchange="loadImg(this,8);" >
                                                <input type="file" name="file9" id="file9"
                                                    style="display: none;" onchange="loadImg(this,9);" >
                                                <input type="file" name="file10" id="file10"
                                                    style="display: none;" onchange="loadImg(this,10);">
                                            </div>
                                        </div>
                                    </div>
                                    <!--  End step 3 -->


                                    <div class="tab-pane" id="step4">                                        
                                        <h4 class="info-text"> 관리자에게 제출하기 </h4>
                                        <div class="row">  
                                            <div class="col-sm-12">
                                                <div class="">
                                                    <p>
                                                        <label><strong>Carnping</strong></label>
                                                        에서 해당 게시글을 확인 후 게시글을 등록하겠습니다. <br>
                                                    저희 홈페이지에 글을 남겨주셔서 감사합니다!
                                                </p>



                                                    <div class="checkbox">
                                                        <label>
                                                            <input type="checkbox" required/> <strong>게시글을 제출하시겠습니까?</strong>
                                                        </label>
                                                    </div> 

                                                </div> 
                                            </div>
                                        </div>
                                    </div>
                                    <!--  End step 4 -->

                                </div>

                                <div class="wizard-footer">
                                    <div class="pull-right">
                                        <input type='button' class='btn btn-next btn-primary' name='next' value='다음'onclick="map();" />
                                        <input type='submit' class='btn btn-finish btn-primary ' name='finish' value='제출' />
                                    </div>

                                    <div class="pull-left">
                                        <input type='button' class='btn btn-previous btn-default' name='previous' value='이전' />
                                    </div>
                                    <div class="clearfix"></div>                                            
                                </div>	
                            </form>
                        </div>
                        <!-- End submit form -->
                    </div> 
                </div>
            </div>
        </div>

          <!-- Footer area-->
        <div class="footer-area">

            <div class=" footer">
                <div class="container">
                    <div class="row">

                        <div class="col-md-3 col-sm-6 wow fadeInRight animated">
                            <div class="single-footer">
                                <h4>About us </h4>
                                <div class="footer-title-line"></div>

                                <img src="assets/img/footer-logo.png" alt="" class="wow pulse" data-wow-delay="1s">
                                <p>Lorem ipsum dolor cum necessitatibus su quisquam molestias. Vel unde, blanditiis.</p>
                                <ul class="footer-adress">
                                    <li><i class="pe-7s-map-marker strong"> </i> 9089 your adress her</li>
                                    <li><i class="pe-7s-mail strong"> </i> email@yourcompany.com</li>
                                    <li><i class="pe-7s-call strong"> </i> +1 908 967 5906</li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 wow fadeInRight animated">
                            <div class="single-footer">
                                <h4>Quick links </h4>
                                <div class="footer-title-line"></div>
                                <ul class="footer-menu">
                                    <li><a href="properties.html">Properties</a>  </li> 
                                    <li><a href="#">Services</a>  </li> 
                                    <li><a href="submit-property.html">Submit property </a></li> 
                                    <li><a href="contact.html">Contact us</a></li> 
                                    <li><a href="faq.html">fqa</a>  </li> 
                                    <li><a href="faq.html">Terms </a>  </li> 
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 wow fadeInRight animated">
                            <div class="single-footer">
                                <h4>Last News</h4>
                                <div class="footer-title-line"></div>
                                <ul class="footer-blog">
                                    <li>
                                        <div class="col-md-3 col-sm-4 col-xs-4 blg-thumb p0">
                                            <a href="single.html">
                                                <img src="assets/img/demo/small-proerty-2.jpg">
                                            </a>
                                            <span class="blg-date">12-12-2016</span>

                                        </div>
                                        <div class="col-md-8  col-sm-8 col-xs-8  blg-entry">
                                            <h6> <a href="single.html">Add news functions </a></h6> 
                                            <p style="line-height: 17px; padding: 8px 2px;">Lorem ipsum dolor sit amet, nulla ...</p>
                                        </div>
                                    </li> 

                                    <li>
                                        <div class="col-md-3 col-sm-4 col-xs-4 blg-thumb p0">
                                            <a href="single.html">
                                                <img src="assets/img/demo/small-proerty-2.jpg">
                                            </a>
                                            <span class="blg-date">12-12-2016</span>

                                        </div>
                                        <div class="col-md-8  col-sm-8 col-xs-8  blg-entry">
                                            <h6> <a href="single.html">Add news functions </a></h6> 
                                            <p style="line-height: 17px; padding: 8px 2px;">Lorem ipsum dolor sit amet, nulla ...</p>
                                        </div>
                                    </li> 

                                    <li>
                                        <div class="col-md-3 col-sm-4 col-xs-4 blg-thumb p0">
                                            <a href="single.html">
                                                <img src="assets/img/demo/small-proerty-2.jpg">
                                            </a>
                                            <span class="blg-date">12-12-2016</span>

                                        </div>
                                        <div class="col-md-8  col-sm-8 col-xs-8  blg-entry">
                                            <h6> <a href="single.html">Add news functions </a></h6> 
                                            <p style="line-height: 17px; padding: 8px 2px;">Lorem ipsum dolor sit amet, nulla ...</p>
                                        </div>
                                    </li> 


                                </ul>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 wow fadeInRight animated">
                            <div class="single-footer news-letter">
                                <h4>Stay in touch</h4>
                                <div class="footer-title-line"></div>
                                <p>Lorem ipsum dolor sit amet, nulla  suscipit similique quisquam molestias. Vel unde, blanditiis.</p>

                                <form>
                                    <div class="input-group">
                                        <input class="form-control" type="text" placeholder="E-mail ... ">
                                        <span class="input-group-btn">
                                            <button class="btn btn-primary subscribe" type="button"><i class="pe-7s-paper-plane pe-2x"></i></button>
                                        </span>
                                    </div>
                                    <!-- /input-group -->
                                </form> 

                                <div class="social pull-right"> 
                                    <ul>
                                        <li><a class="wow fadeInUp animated" href="https://twitter.com/kimarotec"><i class="fa fa-twitter"></i></a></li>
                                        <li><a class="wow fadeInUp animated" href="https://www.facebook.com/kimarotec" data-wow-delay="0.2s"><i class="fa fa-facebook"></i></a></li>
                                        <li><a class="wow fadeInUp animated" href="https://plus.google.com/kimarotec" data-wow-delay="0.3s"><i class="fa fa-google-plus"></i></a></li>
                                        <li><a class="wow fadeInUp animated" href="https://instagram.com/kimarotec" data-wow-delay="0.4s"><i class="fa fa-instagram"></i></a></li>
                                        <li><a class="wow fadeInUp animated" href="https://instagram.com/kimarotec" data-wow-delay="0.6s"><i class="fa fa-dribbble"></i></a></li>
                                    </ul> 
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <div class="footer-copy text-center">
                <div class="container">
                    <div class="row">
                        <div class="pull-left">
                            <span> (C) <a href="http://www.KimaroTec.com">KimaroTheme</a> , All rights reserved 2016  </span> 
                        </div> 
                        <div class="bottom-menu pull-right"> 
                            <ul> 
                                <li><a class="wow fadeInUp animated" href="#" data-wow-delay="0.2s">Home</a></li>
                                <li><a class="wow fadeInUp animated" href="#" data-wow-delay="0.3s">Property</a></li>
                                <li><a class="wow fadeInUp animated" href="#" data-wow-delay="0.4s">Faq</a></li>
                                <li><a class="wow fadeInUp animated" href="#" data-wow-delay="0.6s">Contact</a></li>
                            </ul> 
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
        <!-- <script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script> -->
        <!-- <script src="assets/js/vendor/modernizr-2.6.2.min.js"></script> -->
        <script src="assets/js//jquery-1.10.2.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <!-- <script src="assets/js/bootstrap-select.min.js"></script> -->
        <script src="assets/js/bootstrap-hover-dropdown.js"></script>
        <script src="assets/js/easypiechart.min.js"></script>
        <script src="assets/js/jquery.easypiechart.min.js"></script>
        <script src="assets/js/owl.carousel.min.js"></script>
        <script src="assets/js/wow.js"></script>
        <script src="assets/js/icheck.min.js"></script>

        <script src="assets/js/price-range.js"></script> 
        <script src="assets/js/jquery.bootstrap.wizard.js" type="text/javascript"></script>
        <script src="assets/js/jquery.validate.min.js"></script>
        <script src="assets/js/wizard.js"></script>

        <script src="assets/js/main.js"></script>
        <!-- 지도 api -->
        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
            ...
          </div>

          <!-- services와 clusterer, drawing 라이브러리 불러오기 -->
<script type="text/javascript" src="http://dapi.kakao.com/v2/maps/sdk.js?appkey=c51db8bdf50f603f1ca7fd3444ea0dab&libraries=services"></script>

<script>

    let addressDetail ="";
    function juso() {
    new daum.Postcode({
        oncomplete: function (data) {
            var addr = ''; // 주소 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }
            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('address1').value = data.zonecode;
            addressDetail = document.getElementById("address2").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("address3").focus();
        }
    }).open()
    }
   

    function map(){
        console.log("11")
        var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
        mapOption = { 
            center: new kakao.maps.LatLng(37.52948338432969, 126.96441932015492), // 지도의 중심좌표
            level: 5 // 지도의 확대 레벨
        };

    // 지도를 생성합니다    
    var map = new kakao.maps.Map(mapContainer, mapOption); 

    // 주소-좌표 변환 객체를 생성합니다
    var geocoder = new kakao.maps.services.Geocoder();

    // 주소로 좌표를 검색합니다
    geocoder.addressSearch(addressDetail, function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">우리회사</div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
    }); 
    }
 
    
     
   

    chooseFile = function(num){
        $("#file"+num).click();
    }
    
    loadImg = function(inputFile ,num){
        // inputFile : 현재 변화가 생긴 input type = "file" 요소 객체
        // num : 몇번째 input 요소 확인 후 해당 그 영역에 미리보기 하기 위해 전달받아


        // 선택된 파일이 있다면 inputFile.files[0] 에 선택된 파일이 담겨있음
        //                    => inputFiles.files.length 또한 1이 될꺼임

        if(inputFile.files.length ==1){ // 파일 선택된 경우 => 파일 읽어들임
            
            // 파일을 읽어들일 FileReader 객체 생성
            const reader = new FileReader();

            // 파일을 읽어들이는 메소드 호출
            reader.readAsDataURL(inputFile.files[0]);
            // 해당 파일을 읽어들이는 순간 해당 이 파일만이 고유한 url부

            //파일 읽어들이기가 완료 됐을 때 실행할 함수를 정의해두기
            reader.onload = function(e){
                // e.target.result => 읽어들인 파일의 고유한 url

                switch(num){
                    case 1: $("#titleImg").attr("src", e.target.result); break;
                    case 2: $("#contentImg1").attr("src", e.target.result); break;
                    case 3: $("#contentImg2").attr("src", e.target.result); break;
                    case 4: $("#contentImg3").attr("src", e.target.result); break;
                    case 5: $("#contentImg4").attr("src", e.target.result); break;
                    case 6: $("#contentImg5").attr("src", e.target.result); break;
                    case 7: $("#contentImg6").attr("src", e.target.result); break;
                    case 8: $("#contentImg7").attr("src", e.target.result); break;
                    case 9: $("#contentImg8").attr("src", e.target.result); break;
                    case 10: $("#contentImg9").attr("src", e.target.result); break;
                   
                     }
                }
                
            } else { //선택된 파일이 취소된 경우 => 미리보기 본것도 사라지게
            switch(num){
                    case 1: $("#titleImg").attr("src", null); break;
                    case 2: $("#contentImg1").attr("src", null); break;
                    case 3: $("#contentImg2").attr("src", null); break;
                    case 4: $("#contentImg3").attr("src", null); break;
                    case 5: $("#contentImg4").attr("src", null); break;
                    case 6: $("#contentImg5").attr("src", null); break;
                    case 7: $("#contentImg6").attr("src", null); break;
                    case 8: $("#contentImg7").attr("src", null); break;
                    case 9: $("#contentImg8").attr("src", null); break;
                    case 10: $("#contentImg9").attr("src", null); break;
            }
        }
    }

</script>

</body>
</html>