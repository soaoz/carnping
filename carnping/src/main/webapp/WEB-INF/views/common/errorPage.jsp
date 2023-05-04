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
    <title>Carnping | 카앤핑</title>
<style>
	@font-face {
	     font-family: 'S-CoreDream-3Light';
	     src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-3Light.woff') format('woff');
	     font-weight: 900px;
	     font-style: normal;
	}
	.header_back{
        width: 100%;
        height: 120px;
	    background-color:white;
	}
    .myPage-header-area{
       width: 100%;
       height: 120px;
     }
     h4 {
     	font-family: 'S-CoreDream-3Light';
     }

</style>
</head>

<body>


<header class="header header--normal" >
<div class="header_back">
    <jsp:include page="../common/header.jsp"/>
</div>
</header>
   			<div class="myPage-header-area">
			</div>
			<div class="master-area">
			   
			<br>
			    <div align="center" class="pageContent">
			        <!-- <img src="https://cdn2.iconfinder.com/data/icons/oops-404-error/64/208_balloon-bubble-chat-conversation-sorry-speech-256.png"> -->
			        
			        <img src="resources/img/error.jpg" alt="" style="width:800px; height:500px;">
			        <br><br>
			        <h4 style="font-weight:bold;">요청 페이지를 찾을 수 없습니다.</h1><br>
			        <h3 style="font-weight:bold;">${ errorMsg }</h1>
			        <br>
			        <a href="#" class="primary-btn" id="addSite" >홈으로 돌아가기</a>
			        <br>
			    </div>
			    
			</div>
   
 <jsp:include page="../common/footer.jsp"/>
    
</body>

</html>




