<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header Section Begin -->
    <header class="header header--normal">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-3 col-md-3">
                    <div class="header__logo">
                        <a href="./index.html"><img src="img/logo1.png" alt="" width="150px" height="60px"></a>
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
    </header>
    <!-- Header Section End -->

    

    <!-- Listing Details Section Begin -->
    <section class="listing-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="listing__details__text">
                        
                        <div class="listing__details__gallery">
                            <div class="col-lg-12">
                                <div class="contact__map" style="margin-top: 50px;">
                                    <iframe
                                        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d423283.43556031643!2d-118.69192431097179!3d34.020730495817475!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80c2c75ddc27da13%3A0xe22fdf6f254608f4!2sLos%20Angeles%2C%20CA%2C%20USA!5e0!3m2!1sen!2sbd!4v1586670019340!5m2!1sen!2sbd"
                                        height="550" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                                </div>
                            </div>
                        </div>
                        <div class="content">
                            <br><br>
                            <div class="innerOuter">
                                <h2>소모임</h2>
                                <br>
                                
                                <a class="btn btn-secondary" style="float:right" href="">목록으로</a>
                                <br><br>
                                <table id="contentArea" align="center" class="table" border="1" style="border-color: lightgray;">
                                    <tr>
                                        <th width="100">제목</th>
                                        <td colspan="3">가평 번개 파티 구함</td>
                                    </tr>
                                    <tr>
                                        <th>작성자</th>
                                        <td>user01</td>
                                        <th>작성일</th>
                                        <td>2023-03-31</td>
                                    </tr>
                                    
                                
                                    <tr>
                                        <th>내용</th>
                                        <td colspan="3"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="4"><p style="height:150px">차박 ㄱㄱ</p></td>
                                    </tr>
                                </table>
                                <br>
                    
                                <div align="center">
                                    <!-- 수정하기, 삭제하기 버튼은 이글이 본인글일 경우만 보여져야됨 -->
                                    <button type="button" class="btn btn-success" style="background-color: rgb(104, 135, 115); color: white; border-color: rgb(104, 135, 115);">수정하기</button> <!-- 요기에 href="" 를 작성하면 get방식이기 떄문에 노출된다. -->
                                        <a class="btn btn-danger" onclick="">삭제하기</a>
                                </div><br><br>
                                
                        
                    
                                
                            </div>
                            <br><br>
                        </div>
                        
                        <ul class="listing__details__comment ul_line">
                            <h4>댓글</h4>
                            
                            <li>
                                <div class="listing__details__comment__item">
                                    <div class="listing__details__comment__item__pic">
                                        <img src="img/20258.jpg" alt="">
                                    </div>
                                    <div class="listing__details__comment__item__text">
                                        <div class="listing__details__comment__item__rating">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                        <span>March 22, 2019</span>
                                        <h5>임준석</h5>
                                        <div>
                                            <p>DM드릴게요</p>
                                            <img class="zoom" src="" alt="">
                                            <ul class="ul_line">
                                                <li><i class="fa fa-hand-o-right"></i> 좋아요</li>
                                                <li ><button type="button" class="scroll_reply"><i class="fa fa-share-square-o"></i>(3)댓글</button></li>
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
                                        <div class="list_detail_reply">
                                            <li>
                                                <div class="listing__details__comment__item__pic">
                                                    <img src="https://talkimg.imbc.com/TVianUpload/tvian/TViews/image/2019/02/11/c3fb2eb9-8326-40db-a29e-56685f8af6f7.JPG" alt="">
                                                </div>
                                                <div class="listing__details__comment__item__text">
                                                    <span>March 22, 2019</span>
                                                    <h5>윈터2</h5>
                                                    <p>은우랑 같이왔어요 바람도 적당하고 너무너무 좋았습니다 나중에 또와도 좋을것 같아요!!</p>
                                                </div>
                                            </li>
                                        </div>
                                        <hr>
                                        <div class="list_detail_reply">
                                            <li>
                                                <div class="listing__details__comment__item__pic">
                                                    <img src="https://talkimg.imbc.com/TVianUpload/tvian/TViews/image/2019/02/11/c3fb2eb9-8326-40db-a29e-56685f8af6f7.JPG" alt="">
                                                </div>
                                                <div class="listing__details__comment__item__text">
                                                    <span>March 22, 2019</span>
                                                    <h5>윈터3</h5>
                                                    <p>은우랑 같이왔어요 바람도 적당하고 너무너무 좋았습니다 나중에 또와도 좋을것 같아요!!</p>
                                                </div>
                                            </li>
                                        </div>
                                        
                                        <li>
                                            <div class="listing__details__review">
                                            <form action="">
                                                <textarea placeholder="대댓글"></textarea>
                                                <button type="submit" class="site-btn">대댓글 등록</button>
                                            </form>
                                        </div>
                                        </li>
                                    </ul>
                                
                                </div>
                             
                            </li>
                        </ul>

                        <script>
                            
                        </script>
                        <div class="listing__details__review">
                            <h4>댓글 작성</h4>
                            <form action="#">
                                <textarea placeholder="Review"></textarea>
                                <button type="submit" class="site-btn">댓글등록</button>
                            </form>
                        </div>

                        
                       
                    </div>
                </div>
                
            </div>
        </div>
    </section>
    <!-- Listing Details Section End -->

   

    <!-- Footer Section Begin -->
    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <div class="footer__about">
                        <div class="footer__about__logo">
                            <a href="./index.html"><img src="img/footer-logo.png" alt=""></a>
                        </div>
                        <p>Challenging the way things have always been done can lead to creative new options that reward
                            you.</p>
                    </div>
                </div>
                <div class="col-lg-4 offset-lg-1 col-md-6">
                    <div class="footer__address">
                        <ul>
                            <li>
                                <span>Call Us:</span>
                                <p>(+12) 345-678-910</p>
                            </li>
                            <li>
                                <span>Email:</span>
                                <p>info.colorlib@gmail .com</p>
                            </li>
                            <li>
                                <span>Fax:</span>
                                <p>(+12) 345-678-910</p>
                            </li>
                            <li>
                                <span>Connect Us:</span>
                                <div class="footer__social">
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                    <a href="#"><i class="fa fa-instagram"></i></a>
                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                    <a href="#"><i class="fa fa-skype"></i></a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 offset-lg-1 col-md-6">
                    <div class="footer__widget">
                        <ul>
                            <li><a href="#">Home</a></li>
                            <li><a href="#">Support</a></li>
                            <li><a href="#">How it work</a></li>
                            <li><a href="#">Contact</a></li>
                            <li><a href="#">Blog</a></li>
                        </ul>
                        <ul>
                            <li><a href="#">Sign In</a></li>
                            <li><a href="#">How it Work</a></li>
                            <li><a href="#">Advantages</a></li>
                            <li><a href="#">Direo App</a></li>
                            <li><a href="#">Packages</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="footer__copyright">
                        <div class="footer__copyright__text"><p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                        </div>
                        <div class="footer__copyright__links">
                            <a href="#">Terms</a>
                            <a href="#">Privacy Policy</a>
                            <a href="#">Cookie Policy</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->

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
</body>
</html>