package com.kh.carnping.member.controller;

import java.util.Random;

import javax.mail.internet.MimeMessage;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.carnping.member.model.service.MemberServiceImpl;

@Controller
public class MemberController {
	

	@Autowired
	private MemberServiceImpl mService;
	
	@Autowired
	private JavaMailSender mailSender;
	
//	@Autowired
//	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	@RequestMapping("enrollForm.me")
	public String memberEnrollForm(){
		return "member/memberEnrollForm";
	}
	
	@ResponseBody
	@RequestMapping("emailCheck.me")
	public String emailCheck(String checkEmail){
		int count = mService.emailCheck(checkEmail);
		return count > 0 ? "NNNNN" : "NNNNY";
	}
	
	

	@ResponseBody
	@RequestMapping("idCheck.me")
	public String idCheck(String checkId){
		int count = mService.idCheck(checkId);
//		System.out.println(count);
		return count > 0 ? "NNNNN" : "NNNNY";
	}
	
	@ResponseBody
	@RequestMapping("agree.me")
	public void agreeEnroll(boolean marketingAgree){
		System.out.println(marketingAgree);
	}

	@ResponseBody
	@RequestMapping("idConfirmed.me")
	public void idConfirmed(String memId) {
		System.out.println(memId);
	}
	
	@ResponseBody
	@RequestMapping("pwdConfirmed.me")
	public void pwdConfirmed(String memPwd) {
		System.out.println(memPwd);
	}
	
	@ResponseBody
	@RequestMapping("nicknameCheck.me")
	public String nicknameCheck(String nickname){
		int count = mService.nicknameCheck(nickname);
		return count > 0 ? "NNNNN" : "NNNNY";
	}



	
	@RequestMapping("myProfileUpdate.me")
	public String myProfileUpdate() {
		return "member/myProfileUpdate";

	}
	@RequestMapping("myAlarmList.me")
	public String myAlarmList() {
		return "member/myAlarmList";
	}
	
	@RequestMapping("myLikeList.me")
	public String myLikeList() {
		return "member/myLikeList";
	}
	
	@RequestMapping("myPostList.me")
	public String myPostList() {
		return "member/myPostList";
	}
	
	@RequestMapping("myReplyList.me")
	public String myReplyList() {
		return "member/myReplyList";
	}
	
	@RequestMapping("myQuestionList.me")
	public String questionList() {
		return "member/myQuestionList";
	}
	
	@RequestMapping("questionForm.me")
	public String questionForm() {
		return "member/questionForm";
	}
	
	@RequestMapping("myPageMainSelect.me")
	public String myPageMainSelect() {
		return "member/myPageMainSelect";
	}
	
	@RequestMapping("myCarbakList.me")
	public String myCarbakList() {
		return "member/myCarbakList";
	}
	@RequestMapping("unregister.me")
	public String unregister() {
		return "member/unregister";
	}
	
	@RequestMapping(value="/mailCheck", method=RequestMethod.GET)
	@ResponseBody
	public void mailCheckGET(String email) {
		/* 넘어온 데이터 확인 */
		Logger logger = LoggerFactory.getLogger(this.getClass());
		logger.info("이메일 데이터 전송 확인");
		logger.info("인증번호 : " + email);
		
		/* 인증번호(난수) 생성 */
		Random random = new Random();
		int checkNum = random.nextInt(888888) + 111111;
		logger.info("인증번호 " + checkNum);
		
		/* 이메일 보내기 */
		
		String setFrom = "Carnping 카앤핑 <chadollbagi@gmail.com>";
		String toMail = email;
		String title = "카앤핑 회원가입 본인 인증 코드입니다.";


		String content = "<!DOCTYPE html>"+
							"<html>"+
							""+
							"<head>"+
							"    <meta charset=\"UTF-8\">"+
							""+
							""+
							""+
							"    <link rel=\"stylesheet\" href=\"css/style.css\" type=\"text/css\">"+
							""+
							""+
							"    "+
							""+
							"    <style>"+
							""+
							""+
							"        @font-face {"+
							"            font-family: 'Jal_Onuel';"+
							"            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-10-21@1.0/Jal_Onuel.woff') format('woff');"+
							"            font-weight: normal;"+
							"            font-style: normal;"+
							"        }"+
							""+
							"        @font-face {"+
							"            font-family: 'EF_jejudoldam';"+
							"            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2210-EF@1.0/EF_jejudoldam.woff2') format('woff2');"+
							"            font-weight: normal;"+
							"            font-style: normal;"+
							"        }"+
							""+

							"        *{"+
							"            font-family: 'Jal_Onuel';"+
							"            font-weight: 200;"+
							"        }"+
							""+
							""+
							"        #wrapper {"+
							"            background-color:#74E7BF;"+
							"            height: 100%;"+
							"            width: 100%;"+
							"            letter-spacing: 0.08em;"+
							"        }"+
							""+
							"        #wrapper>*{"+
							"            letter-spacing: unset;"+
							"        }"+
							""+
							"        #joinWrapper{"+
							"            background-color:  rgba(255, 240, 156, 0.7);"+
							"            border-radius: 50px;"+
							"            max-width: 600px;"+
							"            height: 100%;"+
							"            margin: auto;"+
							"            padding-top: 50px;"+
							"        }"+
							"        "+
							""+
							"        "+
							""+
							"        .agreement{"+
							"            position: relative;"+
							"            -webkit-flex: 1 0 100%;"+
							"            -ms-flex: 1 0 100%;"+
							"            flex: 1 0 100%;"+
							"            padding-top: 30px;"+
							"        }"+
							""+
							"        .title{"+
							"            margin-top:10px;"+
							"            margin-bottom: 20px;"+
							"            font-size: 18px;"+
							"            font-weight: 500;"+
							"            line-height: 28px;"+
							"            letter-spacing: unset;"+
							"            white-space: pre-wrap;"+
							"            text-align: center;"+
							"        }"+
							""+
							"        .agreeAll{"+
							"            padding: 5px 0px;"+
							"            margin: 0px 35px 50px 35px;"+
							"            border-bottom: 1px solid #0ca678;"+
							"            letter-spacing: unset;"+
							"        }"+
							"        "+
							"        "+
							"    </style>"+
							""+
							"</head>"+
							""+
							"<body>"+
							""+
							"    "+
							"    "+
							""+
							"    <div id=\"wrapper\" style=\"padding: 50px 0px; position:absolute;\" >"+
							"        <div id=\"joinWrapper\" >"+
							"            <img src=\"img/logo_login_1.png\" width=\"125px\" style=\"display:block; margin:auto; padding-top: 25px;\" alt=\"\">"+
							"            <h2 "+
							"            style=\"margin: 25px 0px 20px 0px; "+
							"            text-align: center; "+
							"            letter-spacing: unset; "+
							"            font-size:28px;"+
							"            color:#0ca678;"+
							"            font-family: EF_jejudoldam;\">"+
							"                WELCOME</h2>"+
							"            "+
							"            <div class=\"agreement\">"+
							"                <h3 class=\"title\">차박의 모든 것, 카앤핑에 가입하신 것을 환영합니다!</h3>"+
							"                <h3 class=\"title\">아래의 인증 번호를 입력하여 이메일 본인 인증을 완료해주세요!</h3>"+
							"                <div class=\"agreeAll\"></div>"+
							"                <h4 style=\"text-align: center; padding:20px 0px 30px 0px\">인증번호</h4>"+
							"                <div align=\"center\">"+
							"                    <h4 style=\""+
							"                    color: orangered;"+
							"					 font-size:24px;"+
							"                    letter-spacing: 1.5em;"+
							"                    font-weight: 600;"+
							"                    margin: auto;"+
							"                    background-color: white;"+
							"                    text-align: center;"+
							"                    border-radius: 50px;"+
							"                    width: 60%;"+
							"                    padding: 25px 0px 20px 35px;\">"+checkNum+"</h4>"+
							"                </div>"+
							"            </div>"+
							"        </div>"+
							""+
							"    </div>"+
							""+
							"</body>"+
							""+
							"</html>";


				
		 
        try {
            
            MimeMessage message = mailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
            helper.setFrom(setFrom);
            helper.setTo(toMail);
            helper.setSubject(title);
            helper.setText(content,true);
            mailSender.send(message);
            
        }catch(Exception e) {
            e.printStackTrace();
        }
					
		
	}

}
	