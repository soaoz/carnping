<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="description" content="Directing Template">
  <meta name="keywords" content="Directing, unica, creative, html">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">

  <!-- Google Font -->
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700;800&display=swap" rel="stylesheet">
  

  <!-- Css Styles -->
    <link rel="stylesheet" href="resources/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="resources/css/flaticon.css" type="text/css">
    <link rel="stylesheet" href="resources/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="resources/css/barfiller.css" type="text/css">
    <link rel="stylesheet" href="resources/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="resources/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="resources/css/style.css" type="text/css">

  <!-- icon(fontawesome.com) 등록 -->
<script src="https://kit.fontawesome.com/78c41960c5.js" crossorigin="anonymous"></script>

<style>
  #addSite{
      border-radius: 50px;
      background-color: #0ca678;
  }


  @font-face {
      font-family: 'Jal_Onuel';
      src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-10-21@1.0/Jal_Onuel.woff') format('woff');
      font-weight: normal;
      font-style: normal;
  }

  h2{
      font-family: unset;
  }

  p{
      font-family: unset;
  }

  *{
      font-family: 'Jal_Onuel';
      font-weight: 200;
      letter-spacing: 0.15em;
  }


  .footer *{
      letter-spacing: 0em;
  }

  i{
      padding-right:5px;
  }
  
  

  #themeTags a{
      border-radius:50px;
      background-color:rgba(255, 255, 255, 0.1);
  }

  [type=checkbox] {

      position: absolute;
      opacity: 0;
      width: 0;
      height: 0;

  }

  input[type=checkbox] + label { 
          display: inline-block; 
          cursor: pointer; 
  }

  #loginBtn{
      border-radius: 50px;
      border: 1px solid #0ca678;
      background-color: transparent;
      color:#0ca678;
  }

  #loginBtn:hover{
      background-color:white;
      transition: color .4s ease 0s,background-color .4s ease 0s
  }

</style>
</head>

    <!-- Footer Section Begin -->
    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <div class="footer__about">
                        <div class="footer__about__logo">
                            <a href="./index.html"><img src="resources/img/logo_1.png" width="250px" alt=""></a>
                        </div>
                        <p> 시들어 아름답고 그들의 그들을 부패를 이것이다. 긴지라 그들은 풀이 피고 있으랴? </p>
                    </div>
                </div>
                <div class="col-lg-4 offset-lg-1 col-md-6" style="flex: 0 0 40%; margin-left: 5%; max-width: 40%;">
                    <div class="footer__address">
                        <ul>
                            <li>
                                <span>대표번호:</span>
                                <p>(+12) 345-678-910</p>
                            </li>
                            <li>
                                <span>이메일:</span>
                                <p>info.colorlib@gmail .com</p>
                            </li>
                            <li>
                                <span>주소:</span>
                                <p>서울시 강남구 역삼동 테헤란로</p>
                            </li>
                            <li>
                                <span>Connect Us:</span>
                                <div class="footer__social" >
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                    <a href="#"><i class="fa fa-instagram"></i></a>
                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                    <a href="#"><i class="fa fa-skype"></i></a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 offset-lg-1 col-md-6" style="margin-left:5%;" >
                    <div class="footer__widget" id="footer__widget">
                        <ul>
                            <li><a href="#">Home</a></li>
                            <li><a href="#">Support</a></li>
                            <li><a href="#">How it work</a></li>
                            <li><a href="#">Contact</a></li>
                            <li><a href="#">Blog</a></li>
                        </ul>
                        <ul>
                            <li><a href="#">로그인</a></li>
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
                            <a href="#">이용약관</a>
                            <a href="#">개인정보 취급방침</a>
                            <a href="#">고객센터</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="resources/js/jquery-3.3.1.min.js"></script>
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/jquery.nice-select.min.js"></script>
    <script src="resources/js/jquery-ui.min.js"></script>
    <script src="resources/js/jquery.nicescroll.min.js"></script>
    <script src="resources/js/jquery.barfiller.js"></script>
    <script src="resources/js/jquery.magnific-popup.min.js"></script>
    <script src="resources/js/jquery.slicknav.js"></script>
    <script src="resources/js/owl.carousel.min.js"></script>
    <script src="resources/js/main.js"></script>
</body>

</html>