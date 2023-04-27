package com.kh.carnping.member.controller;

import javax.servlet.http.HttpSession;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
import org.springframework.web.bind.annotation.RequestParam;
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
	
	
	// 현재 넘어온 첨부파일 그 자체를 서버의 폴더에 저장시키는 역할 
	public String saveMemImg(MultipartFile memImg, HttpSession session) {
		
		String originName = memImg.getOriginalFilename(); // flower.png
		
		// "20230331101855" (년월일시분초)
		String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		
		// 랜덤한 숫자 5자리
		int ranNum = (int)(Math.random() * 90000 + 10000 ); // 10000~99999 사이 -> 시작수는 더하고 몇개 생성할지 곱하기 
		
		// 확장자
		String ext = originName.substring(originName.lastIndexOf("."));
		
		// 최종 수정명
		String changeName = currentTime + ranNum + ext;
		
		// 업로드 시키고자 하는 폴더의 물리적인 경로를 알아내기 
		String memImgPath = session.getServletContext().getRealPath("/resources/uploadFiles/memImg/"); // "/" => webapp 의미 
							   // getServletContext() => 애플리케이션 영역에 진입
		// 서버에 파일을 업로드
		try {
			memImg.transferTo(new File(memImgPath + changeName));
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		
		return changeName;
	}
	
	
	@RequestMapping("insert.me")
	public String insertMember(Member m, MultipartFile memImg, Model model, HttpSession session) {
		System.out.println(m);
		System.out.println(memImg);
		// 암호화 작업 (암호문 만들어내는 과정)
		if(memImg != null && !memImg.getOriginalFilename().equals("")) {
			String changeName = saveMemImg(memImg, session);
			m.setMemImgOrigin(memImg.getOriginalFilename());
			m.setMemImgChange("resources/uploadFiles/memImg/" + changeName);
		}
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
	public String userCheck(HttpSession session, String userPwd, Model model, Member m) {
		
		String memId = ((Member)session.getAttribute("loginUser")).getMemId();
		
		
		//System.out.println("유저아디:"+memId+"입력한비번:"+userPwd);
		 m = mService.selectMember(memId);
		 
		if(m.getMemPwd().equals(userPwd)) {
			//System.out.println("비번같음"); => myProfileUpdate 로 
			
			//데이터를 조회해서 m으로 넘기기
			model.addAttribute("m", m);
			System.out.println("진입 전 조회결과 : "+ m);
			return "member/myProfileUpdate";
		}else {
			//System.out.println("비번다름");
			session.setAttribute("alertMsg", "비밀번호를 잘못입력하셨습니다.");
			return "member/myPageMainSelect";
		}
	}
	
	//마이프로필 조회 
	
	
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
	
	//비밀번호만 업데이트
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
	
	//업데이트된 회원정보 화면
	@RequestMapping("mypage.me")
	public String mypage(HttpSession session, Model model, Member m) {
		
		String memId = ((Member)session.getAttribute("loginUser")).getMemId();
		
		
		//System.out.println("유저아디:"+memId+"입력한비번:"+userPwd);
		 m = mService.selectMember(memId);

			//데이터를 조회해서 m으로 넘기기
		model.addAttribute("m", m);
		System.out.println("진입 전 조회결과 : "+ m);
		return "member/myProfileUpdate";

	}
	
	//회원정보 전체 업데이트
	@RequestMapping("updateProfile.me")
	public String updateProfile(HttpSession session,  MultipartFile reupfile, Member m, Model model) {
		System.out.println("업데이트컨트롤탄다");
	
		//System.out.println(reupfile); 파일 담겨있음 
		System.out.println("업데이트 버튼 누르고 담긴 m 값 : " + m);
		String memId = ((Member)session.getAttribute("loginUser")).getMemId();
		String memPwd = ((Member)session.getAttribute("loginUser")).getMemPwd();
		m.setMemId(memId);
		m.setMemPwd(memPwd);
		
		// 새로 넘어온 첨부파일이 있을 경우
		if(!reupfile.getOriginalFilename().equals("")) {
			//진짜 원본명 리턴
			
			//기존에 첨부파일 있었을경우 , 또올림 => 기존의 첨부파일 지우고 
			if(m.getMemImgOrigin() != null) { //널이아니면 제거
				new File(session.getServletContext().getRealPath(m.getMemImgChange())).delete();
				//기존의 실제 물리적인 파일 삭제 
			}
			
			//새로 넘어온 파일 서버 업로드 
			String changeName = saveMemImg(reupfile, session);
			m.setMemImgOrigin(reupfile.getOriginalFilename());//넘겨받은 첨부파일의 원본명
			m.setMemImgChange("resources/uploadFiles/memImg/" + changeName);

			
			
		}
		
		int result = mService.updateProfile(m);
		System.out.println(m);
		System.out.println(result +"리절트값");
		
		if(result>0) {
			session.setAttribute("alertMsg", "성공적으로 수정되었습니다.");
			return "redirect:mypage.me";
		}else {
			model.addAttribute("errorMsg", "요청에 문제가 발생했습니다.");
			return "common/errorPage";
		}
		
		
		
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
			model.addAttribute("errorMsg", "요청에 문제가 발생해 작업을 완료하지못했습니다.");
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
		//System.out.println("업데이트컨트롤탄다");
		System.out.println(q);
		String memId = ((Member)session.getAttribute("loginUser")).getMemId();
		q.setMemId(memId);
		q.setQueNo(queNo);
		
		
		int result = mService.updateQuestion(q);
		
		if(result>0) {
			session.setAttribute("alertMsg", "성공적으로 수정되었습니다.");
			return "redirect:myQuestionDetail.me?queNo="+queNo;
		}else {
			model.addAttribute("errorMsg", "요청에 문제가 발생해 작업을 완료하지못했습니다.");
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
	