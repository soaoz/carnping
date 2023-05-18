<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
<title>Jassa - Bootstrap Admin HTML Template</title>
<link rel="shortcut icon" href="resources/admin/assets/img/favicon.png" type="text/css">
<link rel="stylesheet" href="resources/admin/assets/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="resources/admin/assets/plugins/fontawesome/css/fontawesome.min.css"type="text/css">
<link rel="stylesheet" href="resources/admin/assets/plugins/fontawesome/css/all.min.css"type="text/css">
<link rel="stylesheet" href="resources/admin/assets/css/style.css" type="text/css">
    <script type="text/javascript">
    	window.addEventListener( "pageshow", function ( event ) {
    	  var historyTraversal = event.persisted || 
    	                         ( typeof window.performance != "undefined" && 
    	                              window.performance.navigation.type === 2 );
    	  if ( historyTraversal ) {
    	    // Handle page restore.
    	    window.location.reload();
    	  }
    	});
    </script>
</head>

<body class="nk-body bg-lighter npc-default has-sidebar no-touch nk-nio-theme">
<c:if test="${ loginMember == null }">
<script type="text/javascript">
	alert("로그인 세션이 만료되었습니다. 로그인 페이지로 이동합니다.");
	location.href = "loginForm.me";
</script>
</c:if>

<c:if test="${ not empty alertMsg }">
	<script>
		alert("${ alertMsg }"); <%-- session 영역은 계속 저장되어있기 때문에 사용 후 꼭 제거해줘야 한다.--%>
	</script>
	<c:remove var="alertMsg" scope="session"/>
</c:if>

<div class="main-wrapper">

<div class="header header-one">
    <div class="header-left header-left-one">
        <a href="index.html" class="logo">
            <img src="resources/admin/assets/img/Logo.png" alt="Logo">
        </a>
        <a href="index.html" class="white-logo">
            <img src="resources/admin/assets/img/Logo.png" alt="Logo">
        </a>
        <a href="index.html" class="logo logo-small">
            <img src="resources/admin/assets/img/Logo.png" alt="Logo" width="30" height="30">
        </a>
    </div>
    <a href="javascript:void(0);" id="toggle_btn">
        <i class="fas fa-bars"></i>
    </a>
    <div class="top-nav-search">
        <form>
            <input type="text" class="form-control" placeholder="Search here">
            <button class="btn" type="submit"><i class="fas fa-search"></i></button>
        </form>
    </div>
    <a class="mobile_btn" id="mobile_btn">
        <i class="fas fa-bars"></i>
    </a>
    <ul class="nav nav-tabs user-menu">
        

        <li class="nav-item dropdown has-arrow main-drop">
            <a href="#" class="dropdown-toggle nav-link" data-bs-toggle="dropdown">
                <span class="user-img">
                    <img src="resources/admin/assets/img/userImg.png" alt="">
                    <span class="status online"></span>
                </span>
                <c:choose>
                    <c:when test="${ not empty loginMember.nickName }"><span>${ loginMember.nickName }</span></c:when>
                    <c:otherwise><span>${ loginMember.memId }</span></c:otherwise>
                </c:choose>
            </a>
            <div class="dropdown-menu">
                <a class="dropdown-item" href="login.html"><i data-feather="log-out" class="me-1"></i>
                    Logout</a>
            </div>
        </li>
    </ul>
</div>
<div class="sidebar" id="sidebar">
    <div class="sidebar-inner slimscroll">
        <div id="sidebar-menu" class="sidebar-menu">
            <ul>
                <li class="menu-title"><span>메뉴</span></li>
                <li class="submenu">
                    <a href="#"><i data-feather="users"></i> <span>회원관리</span> <span
                            class="menu-arrow"></span></a>
                    <ul>
                        <li><a href="member.ad">회원관리</a></li>
                        <li><a href="memReport.ad">신고 및 정지관리</a></li>
                    </ul>
                </li>
                <li class="submenu">
                    <a href="#"><i data-feather="clipboard"></i> <span>게시글관리</span> <span
                            class="menu-arrow"></span></a>
                    <ul>
                        <li><a href="carList.ad">차박게시글</a></li>
                        <li><a href="verify.ad">차박게시글 검수</a></li>
                    </ul>
                </li>
                <li>
                    <a href="notice.ad"><i data-feather="star"></i> <span>공지사항관리</span></a>
                </li>
                <li>
                    <a href="inquiryList.ad"><i data-feather="credit-card"></i><span>Q&A관리</span></a>
                </li>
            </ul>
        </div>
    </div>
</div>

<script src="resources/admin/assets/js/jquery-3.6.0.min.js"></script>
<script src="resources/admin/assets/js/bootstrap.bundle.min.js"></script>
<script src="resources/admin/assets/js/feather.min.js"></script>
<script src="resources/admin/assets/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="resources/admin/assets/plugins/apexchart/apexcharts.min.js"></script>
<script src="resources/admin/assets/plugins/apexchart/chart-data.js"></script>
<script src="resources/admin/assets/js/script.js"></script>
</body>

</html>