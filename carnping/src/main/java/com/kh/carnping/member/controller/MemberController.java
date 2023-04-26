package com.kh.carnping.member.controller;

import javax.servlet.http.HttpSession;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.thymeleaf.context.Context;
import org.thymeleaf.spring5.SpringTemplateEngine;
import com.kh.carnping.member.model.service.MemberServiceImpl;
import com.kh.carnping.member.model.vo.Member;
import com.kh.carnping.member.model.vo.Question;


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
		//System.out.println(count);
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
	
	@RequestMapping("login.me")
	public String loginMember(Member m, HttpSession session) {
		Member loginUser = mService.loginMember(m);
		if(loginUser != null && bcryptPasswordEncoder.matches(m.getMemPwd(), loginUser.getMemPwd())) {
			session.setAttribute("loginUser", loginUser);
			
		} else {
			session.setAttribute("alertMsg", "아이디나 비밀번호를 확인하세요");
			
		}
		
		return "redirect:/"; 
		
	}

	//소영시작 ===================================
	
	//마이프로필 진입 전 유저비번확인
	@RequestMapping("userPwdCheck.me")
	public String userCheck(HttpSession session, String userPwd) {
		
		String memId = ((Member)session.getAttribute("loginUser")).getMemId();
		//System.out.println("유저아디:"+memId+"입력한비번:"+userPwd);
		Member loginUser = mService.userCheck(memId);
		if(loginUser.getMemPwd().equals(userPwd)) {
			//System.out.println("비번같음"); => myProfileUpdate 로 
			return "member/myProfileUpdate";
		}else {
			//System.out.println("비번다름");
			session.setAttribute("alertMsg", "비밀번호를 잘못입력하셨습니다.");
			return "member/myPageMainSelect";
		}
	}
	
	//임시로그인
	@RequestMapping("templogin.me")
	public String templogin(Member m, Model model, HttpSession session) {
		Member temploginUser = mService.temploginMember(m);
		
		if(temploginUser == null) {
			model.addAttribute("errorMsg","로그인 실패!");
			return "common/errorPage" ;
		}else {
			session.setAttribute("loginUser", temploginUser);
			return "redirect:/";
		}
	}
	
	//마이페이지 닉네임업데이트
	@ResponseBody
	@RequestMapping("nickNameUpdate.me")
	public int nickNameUpdate(HttpSession session, Member m, String nickName) {
		String memId = ((Member)session.getAttribute("loginUser")).getMemId();
		m.setNickName(nickName);
		m.setMemId(memId);
		int result = mService.nickNameUpdate(m);
		return result;
	}
	
	//비밀번호 업데이트
	@ResponseBody
	@RequestMapping("passwordUpdate.me")
	public int passwordUpdate(HttpSession session,Member m, String password) {
		System.out.println(password);
		String memId = ((Member)session.getAttribute("loginUser")).getMemId();
		m.setMemPwd(password);
		m.setMemId(memId);
		int result = mService.passwordUpdate(m);
		return result;
	}
	
	
	//문의하기리스트 조회
	@RequestMapping("myQuestionList.me")
	public String questionSelectList (HttpSession session,Question q, Model model) {
		
		String memId = ((Member)session.getAttribute("loginUser")).getMemId();
		//System.out.println("컨트롤러 아이디 : " +memId);
		ArrayList<Question> list = mService.questionSelectList(memId);
		//System.out.println(list);
		model.addAttribute("list", list);
		return "member/myQuestionList";
	}
	
	
	
	//문의하기 상세페이지 조회
	@RequestMapping("myQuestionDetail.me")
	public String selectQuestion(String queNo, Model model) {
		
		Question q = mService.selectQuestion(queNo);
		//System.out.println(q);
		model.addAttribute("q", q);
		return "member/myQuestionDetail";
	}
	

	//문의하기 입력폼으로 이동 
	@RequestMapping("questionForm.me")
	public String questionForm() {
		return "member/questionForm";
	}
	 
	//문의하기 insert
	@RequestMapping("questionInsert.me")
	public String insertBoard(Question q,MultipartFile upfile, HttpSession session, Model model) {
		
		String memId = ((Member)session.getAttribute("loginUser")).getMemId();
		q.setMemId(memId);
		
		int result = mService.insertQuestion(q);
		
		if(result >0 ) {
			session.setAttribute("alertMsg", "문의사항이 등록되었습니다.");
			return "redirect:myQuestionList.me";
		}else {
			model.addAttribute("errorMsg", "요청에 문제가 발생했습니다.");
			return "common/errorPage";
		}
	}
	
	//문의하기 수정폼으로 이동
	@RequestMapping("questionUpdateForm.me")
	public String questionUpdateForm(String queNo, Model model) {
		
		Question q = mService.selectQuestion(queNo);
		System.out.println(q);
		model.addAttribute("q", q);
		
		return "member/questionUpdateForm";
	}
	
	//문의하기 update

	@RequestMapping("updateQuestion.me")
	public String updateQuestion(HttpSession session,Question q,String queNo, Model model) {
		System.out.println("업데이트컨트롤탄다");
		System.out.println(q);
		String memId = ((Member)session.getAttribute("loginUser")).getMemId();
		q.setMemId(memId);
		q.setQueNo(queNo);
		
		
		int result = mService.updateQuestion(q);
		
		if(result>0) {
			session.setAttribute("alertMsg", "성공적으로 수정되었습니다.");
			return "redirect:myQuestionDetail.me?queNo="+queNo;
		}else {
			model.addAttribute("errorMsg", "요청에 문제가 발생했습니다.");
			return "common/errorPage";
		}
		
	}
	
	
	@RequestMapping("logoutPage.me")
	public String logoutPage() {
		return "member/logoutPage";
	}
	
	@RequestMapping("logout.me")
	public String logoutMember(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	@RequestMapping("templogin")
	public String templogin() {
		return "member/temporarylogin";
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
	

	
	//소영끝  =======================
	
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
	