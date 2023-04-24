package com.kh.carnping.member.controller;

import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.thymeleaf.context.Context;
import org.thymeleaf.spring5.SpringTemplateEngine;
import org.thymeleaf.templatemode.TemplateMode;
import org.thymeleaf.templateresolver.ClassLoaderTemplateResolver;
import org.thymeleaf.templateresolver.ITemplateResolver;
import org.thymeleaf.templateresolver.ServletContextTemplateResolver;

import com.kh.carnping.member.model.service.MemberServiceImpl;
import com.kh.carnping.member.model.vo.Member;


@Controller
public class MemberController {
	

	@Autowired
	private MemberServiceImpl mService;
	
	@Autowired // 이메일 템플릿 
	private SpringTemplateEngine templateEngine;


	@Autowired // 이메일 전송
	private JavaMailSender mailSender;
	
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	
	@RequestMapping("loginForm.me")
	public String memberLoginForm(){
		return "member/loginForm";
	}
	
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
	public void agreeEnroll(String marketingAgree){
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

	@RequestMapping("insert.me")
	public String insertMember(Member m, Model model, HttpSession session) {
		// 암호화 작업 (암호문 만들어내는 과정)
		String encPwd = bcryptPasswordEncoder.encode(m.getMemPwd());
		m.setMemPwd(encPwd);
		int result = mService.insertMember(m);
		
		if (result > 0) { // 성공 => 메인페이지 url 재요청! 알람창
			return "member/welcomePage"; 
		} else { // 실패 => 에러 문구 담아서 에러페이지 포워딩
			model.addAttribute("errorMsg", "회원가입 실패!");
			return "common/errorPage";
		}
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
	public String mailCheckGET(String email) {
		/* 넘어온 데이터 확인 */
		Logger logger = LoggerFactory.getLogger(this.getClass());
		logger.info("이메일 데이터 전송 확인");
		logger.info("인증번호 : " + email);
		
		/* 인증번호(난수) 생성 */
		Random random = new Random();
		int checkNum = random.nextInt(888888) + 111111;
		logger.info("인증번호 " + checkNum);
		String num= "";
		/* 이메일 보내기 */
		
		String setFrom = "Carnping 카앤핑 <chadollbagi@gmail.com>";
		String toMail = email;
		String title = "카앤핑 회원가입 본인 인증 코드입니다.";
		
		Context context = new Context();
		context.setVariable("verificationCode", checkNum);
		System.out.println(context);
		String content = templateEngine.process("emailCode", context);
		

				
		 
        try {
            
            MimeMessage message = mailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
            helper.setFrom(setFrom);
            helper.setTo(toMail);
            helper.setSubject(title);
            helper.setText(content,true);
            mailSender.send(message);
            num=Integer.toString(checkNum);
        }catch(Exception e) {
            e.printStackTrace();
            num="error";
        }
		
        return num;
		
	}

}
	