<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html class="no-js"> 
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Carnping | 마이페이지 </title>
        <meta name="description" content="GARO is a real-estate template">
        <meta name="author" content="Kimarotec">
        <meta name="keyword" content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>

        <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->

    <!-- Css Styles -->
<!--     <link rel="stylesheet" href="resources/member/css/bootstrap.min.css" type="text/css">
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
    <link rel="stylesheet" href="resources/member/assets/css/style.css"> 	-->
 
 
 	<style type="text/css">
    .finish-btn{
	    color: #0CA678 !important;
	    background-color: #FFF !important;
	    border-color: #0CA678 !important;
    }
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
		[type=checkbox] {
		  position: static !important;
		  opacity: 1 !important;
		  width: auto !important;
		  height: auto !important;
		}
		.title{
			color : #1C3053;
		}
		
		.menu .active{
			color : red;
		}
		#nickNameCheckResult{
			width: auto !important;
		  	height: 20px !important;
		}	
        .btn-primary.disabled, .btn-primary[disabled], fieldset[disabled] .btn-primary, .btn-primary.disabled:hover, .btn-primary[disabled]:hover, fieldset[disabled] .btn-primary:hover, .btn-primary.disabled:focus, .btn-primary[disabled]:focus, fieldset[disabled] .btn-primary:focus, .btn-primary.disabled:active, .btn-primary[disabled]:active, fieldset[disabled] .btn-primary:active, .btn-primary.disabled.active, .btn-primary.active[disabled], fieldset[disabled] .btn-primary.active {
            background-color: #595959 !important;
            border-color: #595959 !important;
            color: #2c2c2c !important;
        }
        .icheckbox_square-yellow{
        	display: inline-block !important;
        	top : 5px !important; 
        }
        .mail-check-box{
        	display : none ;
        }
		.check1{
		    position: absolute;
		    top: 0px;
		    right: -110px;
		    height: 42px;
		}
		abbr[title] {
   			border-bottom: none !important; 
   			text-decoration: none !important;
		}
		.phone-check-box{
			display : none ; 
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

        <!-- property area -->

        <div class="content-area user-profiel" style="background-color: #FCFCFC;">&nbsp;
            <div class="container">   
                <div class="row">
                    <div class="space"></div> 
                    <div class="col-sm-10 col-sm-offset-1 profiel-container">

                        <form action="updateProfile.me" method="post" id="enrollForm" enctype="multipart/form-data">
                            <div class="profiel-header">
                                <h3>
                                    <br>
                                    <b class="title">회원 정보 수정</b> MY PROFILE <br>
                                    <br>
                                    <small></small>
                                </h3>
                                <hr>
                            </div>

                            <div class="clear">
                                <div class="col-sm-3 col-sm-offset-1">
                                    <div class="picture-container">
                                        <div class="picture" >
                                            <img src="${m.memImgChange}" class="picture-src" id="wizardPicturePreview" title="" style="max-width: 100%;" />
                                            <input type="file" id="wizard-picture" name="reupfile">
                                            <input type="hidden" value="${m.memImgChange}" name="memImgChange">
                                        </div>
                                        <label>프로필 사진</label>
                                    </div>
                                </div>

                                

                                <div class="col-sm-5 padding-top-25">

                                    <div class="form-group">
                                        <label>이름</label>
                                        <input name="name" type="text" class="form-control" value="${m.memName}" readonly>
                                    </div>
                                    
                                    <div class="form-group checkdiv">
                                        <label>닉네임</label>
                                        <input name="nickName" type="text" class="form-control" placeholder="" id="nickName" value="${m.nickName}">
                                        <input type="hidden" class="form-control" placeholder="" id="originNickName" value="${m.nickName}">
                                        <input type='button' id="nickUpdate" class='btn btn-finish btn-primary check' name='' value='변경하기' />
                                        <div id="nickNameCheckResult"  style="font-size: 0.8em; display:none"></div>

                                    </div>
                                    
                                    <div class="form-group checkdiv">
                                        <label>이메일</label>
                                        <input name="email" type="email" class="form-control" placeholder="email@email.com" id="email" value="${m.email}">
                                        <div id="emailCheckResult"  style="font-size: 0.8em; display:none"></div>
                                        <label style="font-size: 11px; font-weight : nomal;"><abbr title="다양한 정보 및 이벤트를 이메일로 받을 실 수 있습니다."><input type="checkbox" name="marketing" value="Y" id="mailing" style="font-size: 10px;"   ${m.marketing eq 'Y' ? 'checked="checked"' : ''} > 메일링 수신하기</abbr> </label>
                                        <input type='button' id="email-Btn" class='btn btn-finish btn-primary check' name='' value='인증하기' onClick="mailajax();"/>

                                    </div> 
                                    <div class="form-group checkdiv mail-check-box">
											<input type="text" class="form-control mail-check-input" placeholder="인증번호 6자리를 입력해주세요" id="codeInput" name="" >
	                                        <input type='button' id="email-check-Btn" class='btn btn-finish btn-primary check1' name='' value='인증확인'  onClick=""/>
	                                        <span id="timer" style="color : red;"></span>
	                                        <div id="emailNumberCheckResult"  style="font-size: 0.8em; display:none"></div>
									</div>
                                    <div class="form-group checkdiv">
                                        <label>연락처</label>
                                        <input name="phone" type="text" class="form-control" value="${m.phone}" id="tel">
                                        <input type='button' id="phoneBtn" class='btn btn-finish btn-primary check' name='' value='인증하기'  />
                                    </div>
                                    <div class="form-group checkdiv phone-check-box">
											<input type="text" class="form-control phone-check-input" placeholder="인증번호 6자리를 입력해주세요" id="phoneCodeInput" name="" >
	                                        <input type='button' id="phoneCheckBtn" class='btn btn-finish btn-primary check1' name='' value='인증확인'  onClick=""/>
	                                        <span id="timer" style="color : red;"></span>
	                                        <div id="phoneNumberCheckResult"  style="font-size: 0.8em; display:none"></div>
	                                        
									</div>
                                    <div class="form-group">
                                        <label>비밀번호</label>
                                        <input name="password1" id="password1" type="password" class="form-control">
                                        <div id="passRegResult"></div>
                                    </div>
                                    <div class="form-group checkdiv">
                                        <label>비밀번호 확인</label>
                                        <input name="password2" id="password2" type="password" class="form-control">
                                        <div id="passwordEquls"  style=" display:none"></div>
                                        <input type='button' id="passwordUpdate" class='btn btn-finish btn-primary check' name='' value='변경하기' />
                                    </div>
                                
                                </div>
                            </div>
                            <script>

					        
					        
          					 </script>

                    
                            <div class="col-sm-5 col-sm-offset-1" style="text-align: right;">
                                <br><br>
                                <!-- <input  type='button' class='btn btn-finish btn-primary finish-btn' name='finish' value='회원 정보 수정 완료' /> -->
                                <button type="submit" class='btn btn-primary me-2' id="updateBtn">회원 정보 수정 완료</button> &nbsp;&nbsp;&nbsp;&nbsp;
                                <br><br><br>
                            </div>                
                            <br>
                    </form>
                </div>
            </div><!-- end row -->
        </div>
        <script>

        //핸드폰인증 ------------------------------------------------
        
        //인증하기 클릭했을 시 문자발송
        $(function(){
        	$("#phoneBtn").click(function(){
        		
        		$('#updateBtn').attr('disabled',true);
        		
        		const tel = $("#tel").val(); //전화번호 
        		console.log("탄다 폰번 " +tel );
        		 $('#phoneBtn').attr('disabled', false);
     			const mailCheckBox = document.querySelector('.phone-check-box');
     			mailCheckBox.style.display = 'block';
     			//const email = $('#email').val()  // 폰번
     			
     			
        		 console.log(tel);
        		$.ajax({
    				url:"sms.api",
    				method : 'post',
    				data:{ phoneNumber: tel},
    				success:function(data){
    					console.log("성공");
    					//console.log(data.response.body.items);
    					console.log(data +"데이터값");
    					$('#phoneBtn').attr('disabled',true);
    					
    					
    					
    					if(data == "0"){
    						alert("에러발생");
    						console.log("널값" + data);
    					}else{
    						//console(data + "데이터값");
    						alert("인증 번호 발송 완료.")
    						$("#phoneNumberCheckResult").css("color", "green").text("인증번호를 입력해주세요");
    						number = data;
    					}
        		
    					
    					
    				},error:function(){
    					console.log("ajax 통신 실패!!");
    				}
    			});
        		
        		
        	});
        });
        
        
        
      //폰번호 인증번호 맞는지 확인---------------------
          $(function(){
        	
        	  

					const $checkNum = $('#phoneCodeInput'); // 인증번호 입력하는곳
					console.log("입력한번호 : " +$checkNum);
					$('#phoneCheckBtn').val('인증확인');
					$('#phoneCodeInput').keyup(function(){ 
						console.log("실행됨");
						console.log($checkNum.val());
						if($checkNum.val().length>=6){
							console.log("6자리이상");
		 					if(number == $checkNum.val()){
								console.log("같음");
								$('#updateBtn').attr('disabled',false);
								//같으면 번호 업데이트  -> div에 일차한다고 결과 보여주고 버튼은 변경하기로 변경 누르면 업데이트 
								//alert("인증번호가 일치합니다.");
								$("#phoneNumberCheckResult").show();
								$("#phoneNumberCheckResult").css("color", "green").text("인증번호가 일치합니다.");
			                    $('#phoneCheckBtn').val('변경하기');
			                    $('#phoneCheckBtn').attr('disabled',false);
							}else{
								$('#phoneCheckBtn').val('인증확인');
								console.log("다름");
								//다르면 alert
								//alert("인증번호가 일치하지 않습니다.")
								 $("#phoneNumberCheckResult").show();
								$("#phoneNumberCheckResult").css("color", "red").text("인증번호가 일치하지않습니다.");
							} 
						}else if($checkNum.val().length <=6){
							console.log("xka");
							$("#phoneNumberCheckResult").show();
							$("#phoneNumberCheckResult").text("");
						}
					});
				});
      
      
      	//폰번호만 업데이트
          $('#phoneCheckBtn').on('click', function(){
  		    if($(this).val() === '변경하기'){
  		    	
  		    	 var phone = $("#tel").val();
  		    	 console.log("폰번:"+phone);
  		    	 $.ajax({
  	                url: "phoneUpdate.me",
  	                type: "POST",
  	                data: { "phone": phone },
  	                success: function(result) {
  	                    console.log(result+"리절트값");
  	                    if(result>0){
  	                    	console.log("리절트 0이상탄다");
  	                    	alert("핸드폰 번호가 변경 되었습니다.");
  	                        
  	                    }else{
  	                        
  	                    alert("핸드폰 변경 오류 발생");
  	                    }
  	                },
  	                error: function() {
  	                    console.log("ajax요청 실패");
  	                }
  	                });
  		    	
  		    	}
  		    });
        //=========================================================
        
        
        
        //닉네임 변경만 저장 ajax--------------------
        $(function(){
            $("#nickUpdate").click(function() {
                
                var nickName = $("#nickName").val();
                
                $.ajax({
                url: "nickNameUpdate.me",
                type: "POST",
                data: { "nickName": nickName },
                success: function(result) {
                    console.log(result)
                    if(result>0){
                    alert("닉네임이 변경 되었습니다.");
                        
                    }else{
                        
                    alert("닉네임 변경 오류 발생");
                    }
                },
                error: function() {
                    console.log("ajax요청 실패");
                    //alert("ajax요청 실패");
                }
                });
            });
        })

        //닉네임 변경시 아래의 div에 중복확인 메세지 출력--------------------
		$(function(){
			
			
			const $nickInput = $("#nickName");
			const $nickUpdate = $("#nickUpdate");
			const originNic = $("#originNickName").val();
			
			if($nickInput.val() == originNic ){

				$nickUpdate.prop("disabled", true);
				
			}
			
			$nickInput.keyup(function(){ //띄어지는순간 계쏙 실행
				console.log($nickInput.val());
				$nickUpdate.prop("disabled", false);
				if($nickInput.val().length >= 3){
                    $.ajax({
                        url : "nicknameCheck.me",
                        data:{nickname:$nickInput.val()},
                        success:function(result){
                            if(result == "NNNNN"){ // 사용불가능
                                $("#nickNameCheckResult").show();
                                $("#nickNameCheckResult").css("color", "red").text("중복된 닉네임이 존재합니다. 다시 입력해주세요.");
                                $nickUpdate.prop("disabled", true);
                            }else { // 사용가능
                                // => 초록색 메세지 (사용가능) 출력
                                $("#nickNameCheckResult").show();
                                $("#nickNameCheckResult").css("color", "green").text("사용가능한 닉네임입니다!");
                                $nickUpdate.prop("disabled", false);
                            }
                        }, error:function(){
                            console.log("ajax 통신 실패!");
                        }
                    });
                } else {
                    $("#nickNameCheckResult").hide();
                    $nickUpdate.prop("disabled", true);
                    }
                }) 
		})
                                

		//이메일 변경시 div에 중복확인 메세지 출력--------------------
		$(function(){
			
			const $emailInput = $("#email");
			//const $nickUpdate = $("#nickUpdate");
			
			$emailInput.keyup(function(){ //띄어지는순간 계쏙 실행
				//console.log($emailInput.val());
				$('#updateBtn').attr('disabled',true);
			
				if($emailInput.val().includes('@') && $emailInput.val().includes('.com')){
					
                    $.ajax({
                        url : "emailCheck.me",
                        data:{checkEmail:$emailInput.val()},
                        success:function(result){
                            if(result == "NNNNN"){ // 사용불가능
                            	
                                $("#emailCheckResult").show();   
                                $("#emailCheckResult").css("color", "red").text("중복된 이메일이 존재합니다. 다시 입력해주세요.");
                                //$nickUpdate.prop("disabled", true);
                            } else { // 사용가능
                            	
                                // => 초록색 메세지 (사용가능) 출력
                                $("#emailCheckResult").show();
                                $("#emailCheckResult").css("color", "green").html("사용가능한 이메일입니다.<br> 이메일 변경을 원하시면 인증을 진행해주세요!");
                               // $nickUpdate.prop("disabled", false);
                            }
                        }, error:function(){
                            console.log("ajax 통신 실패!");
                        }
                    });
                } else {
                    $("#emailCheckResult").hide();
                    //$nickUpdate.prop("disabled", true);
                    }
                })

		});
         
        
        //이메일 인증하기 클릭시 이메일 보내기 ---------------------
        function mailajax(){
        	
        	alert("전송을 요청하였습니다. 이메일 전송은 수초 이상 걸릴 수 있습니다.")
           	
        	 $("#emailCheckResult").text("");
           	$('#email-check-Btn').attr('disabled', false); 
			const mailCheckBox = document.querySelector('.mail-check-box');
			mailCheckBox.style.display = 'block';
			
			const email = $('#email').val()  // 이메일 
			const checkInput = $('.mail-check-input') // 인증번호 입력하는곳
			
			$.ajax({
				type : 'get',
				url : "emailSend.me",
				data : {email : email},
				success : function (data) {
					console.log("data : " +  data);
					checkInput.attr('disabled',false);
					code =data;
					//alert('인증번호가 전송되었습니다.')
					emailTimer();// 이메일 타이머 함수 실행
				}			
			}); // end ajax
			
		}

        
        //이메일타이머
        var timer;
   		function emailTimer(){
	        
	        //이메일 인증 타이머
		    var isRunning = false;
		
		    // 인증번호 발송 및 타이머 함수 실행
		        // 남은 시간(초)
		        var leftSec = 60,
		        display = document.querySelector('#timer');
		        // 이미 타이머가 작동중이면 중지
		        if (isRunning){
		            clearInterval(timer);
		        }
		        startTimer(leftSec, display);
		
		    function startTimer(count, display) {
		        var minutes, seconds;
		        timer = setInterval(function () {
		            minutes = parseInt(count / 60, 10);
		            seconds = parseInt(count % 60, 10);
		            minutes = minutes < 10 ? "0" + minutes : minutes;
		            seconds = seconds < 10 ? "0" + seconds : seconds;
		            display.textContent = minutes + ":" + seconds;
		            // 타이머 종료
		            emailnumbercheck();// 인증코드 일치여부 확인 함수 실행 
		            if (--count < 0) {
		                clearInterval(timer);
		                display.textContent = "";
		                isRunning = false;
		                $("#timer").css("color", "green").css("font-size", "12px").html("시간이 초과되었습니다.<br>위의 재전송 버튼을 눌러 새로운 인증번호를 입력해주세요. ");
		                $('#email-Btn').val('재전송');
		                $('#email-check-Btn').attr('disabled', true); 
		            }
		        }, 1000);
		        isRunning = true;
		    }
   		}
        

   		// 인증코드 일치여부 확인 함수 
		function emailnumbercheck(){
			$('#updateBtn').attr('disabled',true);
			const inputCode = $('#codeInput').val();
			console.log("입력한코드 : " +  inputCode);
			console.log("인증코드 : " + code);
			$('#updateBtn').attr('disabled',true);
			const checkInput = $('.mail-check-input').val();
			
			//인증번호일치
			if(inputCode === code){
				$("#emailNumberCheckResult").show();
                      $("#emailNumberCheckResult").css("color", "green").text("인증번호가 일치합니다.");
                      $('#email-check-Btn').attr('disabled',true);
                      $('#codeInput').attr('readonly',true);
                      $('#email-check-Btn').attr('disabled',false);
                      $('#updateBtn').attr('disabled',false);
                      $('#email-check-Btn').val('변경하기');
                      clearInterval(timer); // 타이머 종료
                      $('#timer').text(''); // 타이머 텍스트 삭제
                      return;
                      
                      
			}else if(checkInput.trim() !== ''){
				$("#emailNumberCheckResult").show();
				$("#emailNumberCheckResult").css("color", "red").text("인증번호가 불일치합니다.");
			}
	       	return;
        }
        
        //이메일 변경하기 클릭시 이메일만 변경 
        $('#email-check-Btn').on('click', function(){
		    if($(this).val() === '변경하기'){
		        // 실행할 코드
		        console.log('이메일 변경하기 버튼이 클릭되었습니다.');
		        const email = $('#email').val();
		        console.log(email);
		        
		        $.ajax({
	                url: "emailUpdate.me",
	                type: "POST",
	                data: { "email": email },
	                success: function(result) {
	                    console.log(result)
	                    if(result>0){
	                    alert("이메일이 변경되었습니다.");
	                        
	                    }else{
	                        
	                    alert("이메일 변경 오류 발생");
	                    }
	                },
	                error: function() {
	                    console.log("ajax요청 실패");
	                    //alert("ajax요청 실패");
	                }
	                });
		        
		    }
		});
        
        

        // 비밀번호 유효성 검사 div에 출력 --------------
        $(function(){
			const $password = $("#password1");
			const $password2 = $("#password2");
			$password.keyup(function(){ //띄어지는순간 계쏙 실행
				//console.log($password.val());
                
                let regExp = /^.{8,20}$/;
                let regExp1 = /(?=.*?[0-9])/;
                let regExp2 = /(?=.*?[!@#$%^&*(),.?":{}|<>])/;
                let regExp3 = /(?=.*?[A-Z])/;
                let result = "8글자 이상 숫자 대문자 특수문자 포함";

                if(regExp.test($password.val())){
                    result = result.replace("8글자 이상", "<span style='color:green'>✔8글자 이상</span>");
                }

                if(regExp1.test($password.val())){
                    result = result.replace("숫자", "<span style='color:green'>✔숫자</span>");
                }
                
                if(regExp2.test($password.val())){
                    result = result.replace("특수문자", "<span style='color:green'>✔특수문자</span>");
                }

                if(regExp3.test($password.val())){
                    result = result.replace("대문자", "<span style='color:green'>✔대문자</span>");
                }
                $("#passRegResult").show().html(result);
            }) 
		})

        //비밀번호 일치여부 div에 보여주기 
        $(function(){
            const $password = $("#password1");
            const $password2 = $("#password2");
			$password2.keyup(function(){ //띄어지는순간 계쏙 실행
				//console.log($password.val());


                if($password.val() != $password2.val()){
                    $("#passwordEquls").show().html("비밀번호 불일치");
                }else{
                    $("#passwordEquls").show().html("<span style='color:green'>✔비밀번호 일치</span>");
                }

            }) 
        })


        //비번 변경만 저장 ajax--------------------
        $(function(){
            $("#passwordUpdate").click(function() {
                let regExp = /^.{8,16}$/;
                let regExp1 = /(?=.*?[0-9])/;
                let regExp2 = /(?=.*?[#?!@$%^&*-])/;
                let regExp3 = /(?=.*?[a-zA-Z])/;
                const $password = $("#password1").val();
                const password2 = $("#password2").val();
                console.log($password + password2); 
                
                if($password === password2 && regExp.test($password) && regExp1.test($password) && regExp2.test($password) && regExp3.test($password)){
                   // console.log("if탄다!!!!!" +password2);
                    $.ajax({
                    
                        url: "passwordUpdate.me",
                        type: "POST",
                        
                        data: { "password" : password2 },
                        success: function() {
                            alert("비밀번호가 변경되었습니다");
                        },
                        error: function() {
                            console.log("ajax요청 실패");
                            alert("요청 실패");
                            //alert("ajax요청 실패");
                        }
                    });
            }else{
                alert("유효한 비밀번호를 넣어주세요")
            }
            });
        })
        
        
        
           
    </script>
        <div class="space"></div>
    </div>
<jsp:include page="../common/footer.jsp"/>
</div>


        <!--  <script cript src="resources/member/assets/js/vendor/modernizr-2.6.2.min.js"></script> -->
        <script src="resources/member/assets/js/jquery-1.10.2.min.js"></script>
        <script src="resources/member/bootstrap/js/bootstrap.min.js"></script>
        <script src="resources/member/assets/js/bootstrap-select.min.js"></script>
        <script src="resources/member/assets/js/bootstrap-hover-dropdown.js"></script>
        <script src="resources/member/assets/js/easypiechart.min.js"></script>
        <script src="resources/member/assets/js/jquery.easypiechart.min.js"></script>
        <script src="resources/member/assets/js/owl.carousel.min.js"></script>
        <script src="resources/member/assets/js/wow.js"></script>
        <script src="resources/member/assets/js/icheck.min.js"></script>

        <script src="resources/member/assets/js/price-range.js"></script> 
        <script src="resources/member/assets/js/jquery.bootstrap.wizard.js" type="text/javascript"></script>
        <script src="resources/member/assets/js/jquery.validate.min.js"></script>
        <script src="resources/member/assets/js/wizard.js"></script>

        <script src="resources/member/assets/js/main.js"></script>


</body>
</html>