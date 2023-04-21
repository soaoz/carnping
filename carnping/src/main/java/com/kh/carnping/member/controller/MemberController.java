package com.kh.carnping.member.controller;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
	
//	@RequestMapping("sendMail")
//    public void sendMailTest() throws Exception{
//        
//        String subject = "test 메일";
//        String content = "메일 테스트 내용" + "<img src=\"https://t1.daumcdn.net/cfile/tistory/214DCD42594CC40625\">";
//        String from = "보내는이 아이디@도메인주소";
//        String to = "받는이 아이디@도메인주소";
//        
//        try {
//            MimeMessage mail = mailSender.createMimeMessage();
//            MimeMessageHelper mailHelper = new MimeMessageHelper(mail,true,"UTF-8");
//            // true는 멀티파트 메세지를 사용하겠다는 의미
//            
//            /*
//             * 단순한 텍스트 메세지만 사용시엔 아래의 코드도 사용 가능 
//             * MimeMessageHelper mailHelper = new MimeMessageHelper(mail,"UTF-8");
//             */
//            
//            mailHelper.setFrom("Carnping <chadollbagi@gmail.com>");
//            // 빈에 아이디 설정한 것은 단순히 smtp 인증을 받기 위해 사용 따라서 보내는이(setFrom())반드시 필요
//            // 보내는이와 메일주소를 수신하는이가 볼때 모두 표기 되게 원하신다면 아래의 코드를 사용하시면 됩니다.
//            //mailHelper.setFrom("보내는이 이름 <보내는이 아이디@도메인주소>");
//            mailHelper.setTo(to);
//            mailHelper.setSubject(subject);
//            mailHelper.setText(content, true);
//            // true는 html을 사용하겠다는 의미
//            
//            
//            mailSender.send(mail);
//            
//        } catch(Exception e) {
//            e.printStackTrace();
//        }
//        
//    }
//	
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
	

}
	