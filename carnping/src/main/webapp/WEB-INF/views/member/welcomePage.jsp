<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
            #wrapper {
            background-color:#74E7BF;
            width: 100%;
            letter-spacing: 0.08em;
        }

        #wrapper>*{
            letter-spacing: unset;
        }

        #joinWrapper{
            background-color:  rgba(255, 240, 156, 0.7);
            border-radius: 50px;
            max-width: 600px;
            height: 600px;
            margin: auto;
            padding-top: 100px;
        }
        

        

        .agreement{
            position: relative;
            -webkit-flex: 1 0 100%;
            -ms-flex: 1 0 100%;
            flex: 1 0 100%;
            padding-top: 30px;
        }

        .title{
            margin-top:10px;
            margin-bottom: 20px;
            font-size: 18px;
            font-weight: 500;
            line-height: 28px;
            letter-spacing: unset;
            white-space: pre-wrap;
            text-align: center;
        }

        .agreeAll{
            padding: 5px 0px;
            margin: 0px 35px 50px 35px;
            border-bottom: 1px solid #0ca678;
            letter-spacing: unset;
        }

        .joinBtn{
            border-radius: 50px;
            padding: 10px 100px;
            background-color: #0ca678;
            color:white;
            border: 1px solid #0ca678;
            font-size:20px;

        }
</style>
</head>
<body>
	<!-- Header -->
	<jsp:include page="../common/header.jsp"/>
	
	<div id="wrapper" style="padding: 100px 0px; position:absolute;" >
        <div id="joinWrapper" >
            <img src="img/logo_login_1.png" width="125px" style="display:block; margin:auto; padding-top: 25px;" alt="">
            <h2 
            style="margin: 25px 0px 20px 0px; 
            text-align: center; 
            letter-spacing: unset; 
            font-size:28px;
            color:#0ca678;
            font-family: EF_jejudoldam;">
                WELCOME</h2>
            
            <div class="agreement">
                <h3 class="title">차박의 모든 것, 카앤핑에 가입하신 것을 환영합니다!</h3>
                <h3 class="title">로그인하여 카앤핑과 함께 여행을 떠나볼까요?</h3>
                
            </div>
            <div align="center" style="margin-top:45px;">
                <button class="joinBtn" id="agreeBtn" type="button" onclick="location.href='loginForm.me'">로그인</button>
            </div>
        </div>

    </div>
	
	<!-- Footer -->
	<jsp:include page="../common/footer.jsp"/>

</body>
</html>