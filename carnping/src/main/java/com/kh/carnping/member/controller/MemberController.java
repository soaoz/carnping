package com.kh.carnping.member.controller;

import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.net.URLConnection;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mock.web.MockMultipartFile;
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

import com.github.scribejava.core.model.OAuth2AccessToken;
import com.google.gson.Gson;
import com.kh.carnping.board.model.vo.Board;
import com.kh.carnping.board.model.vo.BoardReply;
import com.kh.carnping.car.model.vo.Cinfo;
import com.kh.carnping.common.model.vo.PageInfo;
import com.kh.carnping.common.template.Pagination;
import com.google.api.client.auth.oauth2.AuthorizationCodeRequestUrl;
import com.google.api.client.googleapis.auth.oauth2.GoogleAuthorizationCodeFlow;
import com.google.api.client.googleapis.auth.oauth2.GoogleCredential;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.http.javanet.NetHttpTransport;
import com.google.api.client.json.jackson2.JacksonFactory;
import com.google.api.services.people.v1.PeopleService;
import com.google.api.services.people.v1.model.Person;
import com.google.api.services.people.v1.model.PhoneNumber;
import com.kh.carnping.member.model.service.MailSendService;
import com.kh.carnping.member.model.service.MemberServiceImpl;
import com.kh.carnping.member.model.vo.Alarm;
import com.kh.carnping.member.model.vo.GoogleLoginBO;
import com.kh.carnping.member.model.vo.KakaoLoginBO;
import com.kh.carnping.member.model.vo.Like;
import com.kh.carnping.member.model.vo.Member;
import com.kh.carnping.member.model.vo.NaverLoginBO;
import com.kh.carnping.member.model.vo.Question;



@Controller
public class MemberController {
	

	@Autowired
	private MemberServiceImpl mService;
	
	@Autowired // 이메일 템플릿 
	private SpringTemplateEngine templateEngine;


	@Autowired // 이메일 전송
	private JavaMailSender mailSender;
	
	@Autowired // 비밀번호 암호화
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	@Autowired // 카카오로그인
	private KakaoLoginBO kakaoLoginBO;
	
	@Autowired //네이버 로그인
	private NaverLoginBO naverLoginBO;
	private String apiResult = null;
	
	@Autowired // 카카오로그인
	private GoogleLoginBO googleLoginBO;
	
	@Autowired //소영: 메일보내기
	private MailSendService mailService;
	
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

		// 암호화 작업 (암호문 만들어내는 과정)
		if (m.getMarketing() == null) {
			System.out.println("여기를보셍!!!!!!!!!!!!!!!!!!");
			System.out.println(m.getMarketing());
		    //m.setMarketing("N");
		}
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
		Member loginMember = mService.loginMember(m);
		if(loginMember != null && bcryptPasswordEncoder.matches(m.getMemPwd(), loginMember.getMemPwd()) && loginMember.getStatus().equals("Y")) {
			session.setAttribute("loginMember", loginMember);
			return "redirect:/"; 
			
		} else if(loginMember.getStatus().equals("A")) { 
			session.setAttribute("loginMember", loginMember);
			return "redirect:/member.ad";
		} else if(loginMember.getStatus().equals("N")) {
			session.setAttribute("alertMsg", "탈퇴한 회원의 아이디입니다.");
			return "redirect:loginForm.me";
		} else {
			session.setAttribute("alertMsg", "아이디나 비밀번호를 확인하세요");
			return "redirect:loginForm.me";
		}
	}

	@RequestMapping("logout.me")
	public String logoutMember(HttpSession session){
		session.invalidate();
		return "redirect:/";
	}
	
	@ResponseBody
	@RequestMapping("findIdCheck.me")
	public String findIdByEmailCheck(Member m){
		int count = mService.findIdByEmailCheck(m);
		System.out.println(count);
		return count > 0 ? "NNNNN" : "NNNNY";
	}
	
	@ResponseBody
	@RequestMapping("findIdByEmail.me")
	public Member findIdByEmail(Member m, HttpSession session){
		Member findMember =  mService.findIdByEmail(m);
		System.out.println(findMember);
		if(findMember != null) {
			session.setAttribute("findMember", findMember);
		} else {
			session.setAttribute("alertMsg", "아이디나 비밀번호를 확인하세요");
		}
		return findMember;
	}
	
	@ResponseBody
	@RequestMapping("findPwdCheck.me")
	public String findPwdCheck(Member m, HttpSession session){
		int count = mService.findPwdCheck(m);
		System.out.println(m);
		return count > 0 ? "NNNNN" : "NNNNY";
	}
	
	@ResponseBody
	@RequestMapping("updatePwd.me")
	public String updatePwd(Member m, String newPwd, HttpSession session){
		String encPwd = bcryptPasswordEncoder.encode(newPwd);
		m.setMemPwd(encPwd);
		System.out.println(m);
		int count = mService.updatePwd(m);
		System.out.println(count);
		if (count > 0) { // 성공 => 메인페이지 url 재요청! 알람창
			session.setAttribute("alertMsg", "비밀번호가 변경되었습니다!"); // url 재요청 방식은 세션영역에 담아야하기 때문에 매개변수에 세션 추가
			return "redirect:/"; 
		} else { // 실패 => 에러 문구 담아서 에러페이지 포워딩
			session.setAttribute("alertMsg", "비밀번호 변경에 실패하였습니다");
			return "redirect:/"; 
		}
	}
	
	
//----------------------소영시작 
	
	@RequestMapping("myPageMainSelect.me")
	public String myPageMainSelect(HttpSession session, Member m,Model model) {
		
		
		//만약 멤버api가 null 이 아니면 api 전용 회원업데이트 화면으로 이동 		
		String memNo = ((Member)session.getAttribute("loginMember")).getMemNo();
	
		m.setMemNo(memNo);
		
		Member loginUser  = mService.selectMember(m); 
		//System.out.println(loginUser);
		
		//로그인유저의의 api 값이 null이 아니면 api전용 회원정보조회화면으로 
		if(loginUser.getMemApiType() != null) {
			model.addAttribute("m", loginUser);
			//데이터 보내주면서 회원정보화면으로 바로 진입
			return "member/myProfileUpdateApi";
			
		}else {	
			
			return "member/myPageMainSelect";
		}
		
	}
	
	
	//마이프로필 진입 전 유저비번확인
	@RequestMapping("userPwdCheck.me")
	public String userCheck(HttpSession session, String userPwd, Model model) {
		
		String memId = ((Member)session.getAttribute("loginMember")).getMemId();
		Member loginUser  = mService.selectMember(memId); 
		
		if(loginUser != null && bcryptPasswordEncoder.matches(userPwd, loginUser.getMemPwd())) {
			model.addAttribute("m", loginUser);
			return "member/myProfileUpdate";
		}else {
			session.setAttribute("alertMsg", "비밀번호를 잘못입력하셨습니다.");
			return "member/myPageMainSelect";
		}
	}
	
	//페이지 수정 후 회원정보화면 다시 
	@RequestMapping("mypage.me")
	public String mypage(HttpSession session, Model model, Member m) {
		
		
		String memNo = ((Member)session.getAttribute("loginMember")).getMemNo();
		m = mService.selectMember(memNo);
		
		
		
		//로그인유저의의 api 값이 null이 아니면 api전용 회원정보조회화면으로 
		if(m.getMemApiType() != null) {
			model.addAttribute("m", m);
			//데이터 보내주면서 회원정보화면으로 바로 진입
			return "member/myProfileUpdateApi";
			
		}else {	
			
			model.addAttribute("m", m);
			return "member/myProfileUpdate";
		}
		
		
		
	}
	
	//닉네임만 업데이트
	@ResponseBody
	@RequestMapping("nickNameUpdate.me")
	public int nickNameUpdate(HttpSession session, Member m, String nickName) {
		
		String memNo = ((Member)session.getAttribute("loginMember")).getMemNo();
		m.setNickName(nickName);
		m.setMemNo(memNo);
		int result = mService.nickNameUpdate(m);
		return result;
	}
	
	//폰번호만 업데이트
	@ResponseBody
	@RequestMapping("phoneUpdate.me")
	public int phoneUpdate(HttpSession session, Member m, String phone) {
		
		String memNo = ((Member)session.getAttribute("loginMember")).getMemNo();
		m.setPhone(phone);
		m.setMemNo(memNo);
		//System.out.println(phone +" , "+ memId);
		int result = mService.phoneUpdate(m);
		return result;
	}
	
	//비밀번호만 업데이트
	@ResponseBody
	@RequestMapping("passwordUpdate.me")
	public int passwordUpdate(HttpSession session,Member m, String password) {
		//System.out.println(password);
		String memId = ((Member)session.getAttribute("loginMember")).getMemId();
		String encPwd = bcryptPasswordEncoder.encode(password);
		m.setMemPwd(encPwd);
		m.setMemId(memId);
		int result = mService.passwordUpdate(m);
		return result;
	}

	//회원정보 프로필 전체 업데이트
	@RequestMapping("updateProfile.me")
	public String updateProfile(HttpSession session,  MultipartFile reupfile, Member m, Model model) {
	
		
		//System.out.println(reupfile); 원래 이미지파일명 담겨있음 
		System.out.println("업데이트 버튼 누르고 담긴 m 값 : " + m);
		
		
		
		String memNo = ((Member)session.getAttribute("loginMember")).getMemNo();
		m.setMemNo(memNo);
		
		String memId = ((Member)session.getAttribute("loginMember")).getMemId();
		m.setMemId(memId);

		System.out.println("넣고나서 m 값 : " + m);
		
		
		System.out.println(reupfile);
		
		
		if(!reupfile.getOriginalFilename().equals("")) { // 새로 넘어온 첨부파일이 있을 경우에 탄다
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
		//System.out.println(m);
		
		if(result>0) {
			session.setAttribute("alertMsg", "성공적으로 수정되었습니다.");
			return "redirect:mypage.me";
		}else {
			model.addAttribute("errorMsg", "회원 정보 수정에 실패했습니다.");
			return "common/errorPage";
		}
	}
	

	//문의하기리스트 조회 (페이징까지)
	@RequestMapping("myQuestionList.me")
	public String questionSelectList (@RequestParam(value="cpage",defaultValue="1") int currentPage, HttpSession session,Question q, Model model) {
		
		String memId = ((Member)session.getAttribute("loginMember")).getMemId();
		
		int listCount = mService.selectQuestionListCount(memId);
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 5);
		ArrayList<Question> list = mService.questionSelectList(pi, memId);
		
		//System.out.println("문의하기 리스트 : " + list);
		model.addAttribute("pi", pi);
		model.addAttribute("list", list);
		
		return "member/myQuestionList";
	}
	
	//문의하기 입력 폼으로 이동 
	@RequestMapping("questionForm.me")
	public String questionForm() {
		return "member/questionForm";
	}

	//문의하기 insert
	@RequestMapping("questionInsert.me")
	public String insertBoard(Question q,MultipartFile upfile, HttpSession session, Model model) {
		
		String memId = ((Member)session.getAttribute("loginMember")).getMemId();
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
	
	//문의하기 상세페이지 조회
	@RequestMapping("myQuestionDetail.me")
	public String selectQuestion(String queNo, Model model) {
		Question q = mService.selectQuestion(queNo);
		//System.out.println(q);
		//System.out.println(q);
		model.addAttribute("q", q);
		return "member/myQuestionDetail";
	}

	//문의하기 수정폼으로 이동
	@RequestMapping("questionUpdateForm.me")
	public String questionUpdateForm(String queNo, Model model) {
		
		Question q = mService.selectQuestion(queNo);
		//System.out.println(q);
		model.addAttribute("q", q);
		return "member/questionUpdateForm";
	}
	
	//문의하기 수정하기 업데이트 
	@RequestMapping("updateQuestion.me")
	public String updateQuestion(HttpSession session,Question q,String queNo, Model model) {
		
		String memId = ((Member)session.getAttribute("loginMember")).getMemId();
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
	
	//문의하기 delete
	@RequestMapping("deleteQuestion.me")
	public String deleteQuestion(HttpSession session,Question q,String queNo, Model model) {
		
		String memId = ((Member)session.getAttribute("loginMember")).getMemId();
		q.setMemId(memId);
		q.setQueNo(queNo);
		int result = mService.deleteQuestion(queNo);
		
		//System.out.println("리절트값 : " + result);
		if(result>0) {
			session.setAttribute("alertMsg", "성공적으로 삭제되었습니다.");
			return "redirect:myQuestionList.me";
		}else {
			model.addAttribute("errorMsg", "요청에 문제가 발생해 작업을 완료하지못했습니다.");
			return "common/errorPage";
		}
	}
	
	@RequestMapping("myAlarmList.me")
	public String myAlarmList() {
		return "member/myAlarmList";
	}
	
	//내가 작성한 게시글 목록 조회하기
	@ResponseBody
	@RequestMapping(value = "myPostList.me", produces = "application/json; charset=utf-8")
	public Map<String, Object> myPostList(@RequestParam(value="cpage",defaultValue="1") int currentPage, Model model, HttpSession session) {

		System.out.println("게시글목록조회컨트롤러탄다");
		Map<String, Object> result = new HashMap<String, Object>();
		String memId = ((Member)session.getAttribute("loginMember")).getMemId();
		
		//System.out.println("커런트페이지 : " + currentPage);
		int listCount = mService.selectMyBoardListCount(memId);
		//System.out.println("나의 게시판 글 수 : "+listCount);
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 5);
		ArrayList<Board> list = mService.selectMyBoardList(pi, memId);
		
		int listcount = pi.getListCount();		//현재 총 게시글 개수 저장
		int page = pi.getCurrentPage(); 	// 현재페이지
		int pageLimit = pi.getPageLimit();		// 페이징바의 페이지 최대개수  (1~10)(11~20) ->  10개 
		int boardLimit = pi.getBoardLimit(); //보여질 보드게시글갯수
		int maxPage = pi.getMaxPage(); // 가장 마지막페이지 (총페이지) 전체게시글의 가장 끝
		int startPage = pi.getStartPage(); //페이징바의 시작수  4번선택시 1, 12번시 11
		int endPage = pi.getEndPage(); // 페이징바의 끝수 4번선택시10, 12선택시 20
		
		//System.out.println(listcount +" , "+ page +" , "+ pageLimit +" , "+ boardLimit +" , "+  maxPage+" , "+ startPage+" , "+ endPage);
		//System.out.println("포스트리스트컨트롤러탐 유저아이디 : " + memId);
		System.out.println("게시글목록조회한리스트"+list);
		//sSystem.out.println(list);
		result.put("list", list);
		result.put("listcount", listcount);
		result.put("page", page);
		result.put("pageLimit", pageLimit);
		result.put("boardLimit", boardLimit);
		result.put("maxPage", maxPage);
		result.put("startPage", startPage);
		result.put("endPage", endPage);
		
		//ArrayList<Board> resultList = (ArrayList<Board>) result.get("list");
		//System.out.println(resultList);
		/* return new Gson().toJson(list); */
		
//		for (Map.Entry<String, Object> entry : result.entrySet()) {
//		    String key = entry.getKey();
//		    Object value = entry.getValue();
//		    System.out.println("해쉬맵ㅇㅇㅇㅇㅇㅇㅇㅇ" + key + " : " + value);
//		}
		return result;
	}
	
	//선택한 게시물들 삭제하기 
	@ResponseBody
	@RequestMapping(value="deleteMyPost.me" , produces = "application/json; charset=utf-8")
	public String deleteMyPost(@RequestParam("boardNoArr[]") String[] boardNoArr, HttpSession session) {
		
		//System.out.println(Arrays.toString(boardNoArr));
		int result = 0 ;
		int deleteCount = 0;
	    for(String boardNo : boardNoArr) {
	    	 result = mService.deleteBoard(boardNo);
	    	
	         if (result == 1) { // 삭제에 성공한 경우에만 카운트 증가
	             deleteCount++;
	         }
	    }
	    //System.out.println("리절트값 : " + result + "count 값 " + deleteCount);
	    return new Gson().toJson(deleteCount);
	}
	
	
//	@RequestMapping("myReplyList.me")
//	public String myReplyList() {
//		return "member/myReplyList";
//	}

	//내 댓글 리스트 조회
	@ResponseBody
	@RequestMapping(value = "myReplyList.me", produces = "application/json; charset=utf-8")
	public Map<String, Object> myReplyList(@RequestParam(value="cpage",defaultValue="1") int currentPage, Model model, HttpSession session) {
		
		Map<String, Object> result = new HashMap<String, Object>();
		String memNo = ((Member)session.getAttribute("loginMember")).getMemNo();
		
		int listCount = mService.selectMyCommentListCount(memNo);  // 내 댓글 총갯수
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 5);
		//ArrayList<Board> list = mService.selectMyBoardList(pi, memId);
		ArrayList<BoardReply> list = mService.selectMyCommentList(pi, memNo);
		
		System.out.println(list);
		
		int listcount = pi.getListCount();		//현재 총 게시글 개수 저장
		int page = pi.getCurrentPage(); 	// 현재페이지
		int pageLimit = pi.getPageLimit();		// 페이징바의 페이지 최대개수  (1~10)(11~20) ->  10개 
		int boardLimit = pi.getBoardLimit(); //보여질 보드게시글갯수
		int maxPage = pi.getMaxPage(); // 가장 마지막페이지 (총페이지) 전체게시글의 가장 끝
		int startPage = pi.getStartPage(); //페이징바의 시작수  4번선택시 1, 12번시 11
		int endPage = pi.getEndPage(); // 페이징바의 끝수 4번선택시10, 12선택시 20
		
		//System.out.println("대댇ㄱ그글"+listcount +" , "+ page +" , "+ pageLimit +" , "+ boardLimit +" , "+  maxPage+" , "+ startPage+" , "+ endPage);
		//System.out.println("리스트값: " + list);
		//sSystem.out.println(list);
		result.put("list", list);
		result.put("listcount", listcount);
		result.put("page", page);
		result.put("pageLimit", pageLimit);
		result.put("boardLimit", boardLimit);
		result.put("maxPage", maxPage);
		result.put("startPage", startPage);
		result.put("endPage", endPage);
		
		return result;
	}
	
	//선택한 댓글들 삭제하기 
	@ResponseBody
	@RequestMapping(value="deleteMyReply.me" , produces = "application/json; charset=utf-8")
	public String deleteMyReply(@RequestParam("replyNoArr[]") String[] replyNoArr, HttpSession session) {
		
		//System.out.println("댓글삭제컨트롤러탄다");
		//System.out.println(Arrays.toString(replyNoArr));
		int result = 0 ;
	    for(String reNo : replyNoArr) {
	    	 result = mService.deleteComment(reNo);
	    }
	    //System.out.println("리절트값 : " + result);
	    return new Gson().toJson(result);
	}
	
	//메인페이지로
	@RequestMapping("goHome")
	public String goHome(){
		return "redirect:/";
	}
	
	//회원탈퇴페이지로
	@RequestMapping("unregister.me")
	public String unregister() {
		return "member/unregister";
	}
	
	//회원탈퇴전 확인받기 
	@RequestMapping("deleteCheck.me")
	public String deleteCheck(HttpSession session, Member m, String userPwd) {
		
		String memId = ((Member)session.getAttribute("loginMember")).getMemId();
		Member loginUser  = mService.selectMember(memId); //로그인한 유저의 진짜 정보
		if(loginUser != null && bcryptPasswordEncoder.matches(userPwd, loginUser.getMemPwd())) {
			session.setAttribute("confirmMsg", "정말로 카앤핑을 탈퇴하시겠습니까? ");
			return "member/unregister";
		}else {
			//System.out.println("비번다름");
			session.setAttribute("alertMsg", "비밀번호를 잘못입력하셨습니다.");
			return "member/unregister";
		}
	}
	
	//회원 탈퇴
	@RequestMapping("delete.me")
	public String deleteMember(HttpSession session, Model model) {
		
		String memId = ((Member)session.getAttribute("loginMember")).getMemId();
		int result = mService.deleteMember(memId);
		
		if(result>0) {
			session.invalidate();
			return "member/unregisterFinish";
		}else {
			model.addAttribute("errorMsg", "요청에 문제가 발생해 작업을 완료하지못했습니다.");
			return "common/errorPage";
		}
	}
//	//회원탈퇴 완료 jsp로 
//	@RequestMapping("unregisterFinish.me")
//	public String unregisterFinish() {
//		return "member/unregisterFinish";
//	}
	
	@RequestMapping("myLogoutPage.me")
	public String myLogoutPage() {
		return "member/myLogoutPage";
	}
	

	//차박리스트 (페이징까지)
	@RequestMapping("myCarbakList.me")
	public String myCarbakList(@RequestParam(value="cpage",defaultValue="1") int currentPage, HttpSession session, Model model) {
		
		String memId = ((Member)session.getAttribute("loginMember")).getMemId();
		int listCount = mService.selectMyCarListCount(memId);
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 6);
	
		ArrayList<Cinfo> list = mService.selectMyCarList(pi, memId);
		//System.out.println(list);
		//System.out.println(pi);
		
		model.addAttribute("pi", pi);
		model.addAttribute("list", list);
		
		return "member/myCarbakList";
	}
	
	//선택한 나의 차박지 목록 삭제하기
	@ResponseBody
	@RequestMapping(value="deleteMyCar.me" , produces = "application/json; charset=utf-8")
	public String deleteMyCar(@RequestParam("cinfoNoArr[]") String[] cinfoNoArr, HttpSession session) {
		
		//System.out.println("차박목록삭제컨트롤러탄다");
		//System.out.println(Arrays.toString(cinfoNoArr));
		int result = 0 ;
		int deleteCount = 0;
	    for(String cinfoNo : cinfoNoArr) {
	    	result = mService.deleteMyCinfo(cinfoNo);
	    	if (result == 1) { // 삭제에 성공한 경우에만 카운트 증가
	             deleteCount++;
	         }
	    }
	    return new Gson().toJson(deleteCount);
	}
	
	//내 좋아요 목록
//	@RequestMapping("myLikeList.me")
//	public String myLikeList() {
//		return "member/myLikeList";
//	}
	@RequestMapping("myLikeList.me")
	public String myLikeList(@RequestParam(value="cpage",defaultValue="1") int currentPage, HttpSession session, Model model) {
		
		String memId = ((Member)session.getAttribute("loginMember")).getMemId();
		int listCount = mService.selectMyLikeListCount(memId);
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 6);
	
		ArrayList<Cinfo> list = mService.selectMyLikeList(pi, memId);
		//System.out.println(list);
		//System.out.println(pi);
		
		model.addAttribute("pi", pi);
		model.addAttribute("list", list);
		
		return "member/myLikeList";
	}
	
	//좋아요 조회
	@ResponseBody
	@RequestMapping(value="selectLike.me" , produces = "application/json; charset=utf-8")
	public String selectLike(String cinfoNo, HttpSession session) {
		
		String memId = ((Member)session.getAttribute("loginMember")).getMemId();
		//System.out.println("selectLike컨트롤러탄다");
		//System.out.println(cinfoNo);
		
		Like l = new Like();
		l.setCinfoNo(cinfoNo);
		l.setMemNo(memId);
		  
		int result = mService.selectLikeCount(l);
		 
	    return new Gson().toJson(result);
	}
	
	//좋아요 삭제
	@ResponseBody
	@RequestMapping(value="deleteLike.me" , produces = "application/json; charset=utf-8")
	public String deleteLike(String cinfoNo, HttpSession session) {
		
		String memId = ((Member)session.getAttribute("loginMember")).getMemId();
		
		Like l = new Like();
		l.setCinfoNo(cinfoNo);
		l.setMemNo(memId);
		
		//System.out.println(l.getMemNo() + l.getCinfoNo());
		  
		int result = mService.deleteLike(l);
		//System.out.println(result);
		 
	    return new Gson().toJson(result);
	}


	//좋아요 insert 
	@ResponseBody
	@RequestMapping(value="insertLike.me" , produces = "application/json; charset=utf-8")
	public String insertLike(String cinfoNo, HttpSession session) {
		
		String memId = ((Member)session.getAttribute("loginMember")).getMemId();
		//System.out.println("INSERTLike컨트롤러탄다");
		//System.out.println(cinfoNo);
		
		Like l = new Like();
		l.setCinfoNo(cinfoNo);
		l.setMemNo(memId);
		//System.out.println(l.getMemNo() + l.getCinfoNo());
		
		//좋아요한거 테이블에 존재하는지 조회
		int select = mService.selectLike(l);
		//System.out.println(select +"셀렉트값");
		int result = 0;
		if(select > 0) {
			//존재하면 status 를 'Y'로 
			//System.out.println("셀렉트0이상");
			 result = mService.updateInsertLike(l);
		}else {
			//존재하지않으면 insert
			 result =  mService.insertLike(l);			
		}
		
		  
		//System.out.println(result);
		 
	    return new Gson().toJson(result);
	}
	
	//이메일만 업데이트
	@RequestMapping("emailUpdate.me")
	@ResponseBody
	public int emailUpdate(HttpSession session, String email, Member m) {
		
		String memNo = ((Member)session.getAttribute("loginMember")).getMemNo();
		System.out.println(email);
		
		m.setEmail(email);
		m.setMemNo(memNo);
		
		int result = mService.emailUpdate(m);
		return result;
			
	}
	
	//이메일보내기
	@RequestMapping("emailSend.me")
	@ResponseBody
	public String mailCheck(String email) {
		//System.out.println("이메일 인증 요청이 들어옴!");
		//System.out.println("이메일 인증 이메일 : " + email);
		return mailService.joinEmail(email);
			
	}
	
	
	//좋아요시 알람에 추가 
	@RequestMapping("insertAlarm.me")
	@ResponseBody
	public int insertAlarm(HttpSession session, Alarm al ) {
		//
		
		String cinfoNo = al.getRefNo();
		
		Cinfo c =  mService.selectCinfoName(cinfoNo);
		System.out.println("c>>>"+c);
		
		//System.out.println("좋아요알람컨트롤러탄다>>>>>>>>>>>>");
		al.setAlaContent("[ "+ c.getCinfoName().substring(0,10)+"... ]글에 좋아요가 눌렸습니다");
		System.out.println(al);
		
		int selectCount = mService.selectLikeAlarmCount(al);
		System.out.println("selectCount : " + selectCount);
		
		
		int result = 0;
		if(selectCount >= 1) {
		
			
		}else {
			//insert 시키기 
			result = mService.insertAlarm(al);
		}
		//System.out.println("m : "+memNo+" , "+ userNo+" , "+  type+" , "+  cinfoName +" , "+ message);
		// REF_NO를 전달받아야함 -> 좋아요한 글의 글번호 
		/*if(al.getMemNo().equals(al.getUserNo())){
			result = 0;
		}else {
			result = mService.insertAlarm(al);
		}*/
		
		return result;
			
	}
	
	//freeboardDetail 에서 내 게시글에 댓글 작성시 알람 테이블에 추가
	@RequestMapping("insertFreeReplyAlarm.me")
	@ResponseBody
	public int insertFreeReplyAlarm(HttpSession session, Alarm al) {
		//
		//내 게시글에 댓글이 달렸을 때 알람테이블에 insert 되지만 그게 내 아이디면 안되야함 
		System.out.println("댓글알람컨트롤러탄다>>>>>>>>>>>>" +al.getRefNo());
		System.out.println(al);
		//Alarm(alaNo=null, memNo=MEM10000, userNo=MEM10000, 
		//alaCategory=fReply, alaContent=null, alaDate=null,
		//alaStatus=null, status=null, refNo=BRD10004, count=0)
				
		//보드 제목 가져오기
		String boardNo = al.getRefNo();
		
		Board b = mService.selectBoardTitle(boardNo); //b에는 댓글달린 게시물의 제목이 담겨있음
		
		if (b.getBoardTitle().length() <= 10) {
			  al.setAlaContent( "[ "+b.getBoardTitle()+"... ]글에 댓글이 달렸습니다");
		} else {
		    //alaContent = boardTitle.substring(0, 10) + " ...글에 댓글이 달렸슴다";
		    al.setAlaContent( "[ "+b.getBoardTitle().substring(0,10)+"... ]글에 댓글이 달렸습니다");
		}
		
		
		System.out.println("ALARM >>> "+ al);
		
		
		
		int result = 0;
		//result = mService.insertAlarm(al);
		
		if(al.getMemNo().equals(al.getUserNo())){//알람수신자랑 발신자가 같으면 알람x 
			result = 0;
		}else {
			result = mService.insertAlarm(al);
			System.out.println("인서트되고나서 result : " + result);
		}
		
		//알람테이블에 댓글알람 추가하기 
		
		
		return result;
			
	}
	
	
	//헤더 내 알람 리스트 조회 
	@ResponseBody
	@RequestMapping(value = "headerAlarmSelectList.me", produces = "application/json; charset=utf-8")
	public Map<String, Object> headerAlarmSelectList( Model model, HttpSession session) {
		
		System.out.println("헤더 알람리스트ㅗ회 컨트롤러 탄다 ");
		//이미 동일한게 몇개있는지 
		int currentPage = 1;
		
		Map<String, Object> result = new HashMap<String, Object>();
		String memNo = ((Member)session.getAttribute("loginMember")).getMemNo();
		
		int listCount = mService.selectMyAlarmListCount(memNo);  // 내 알람 총갯수
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 5);
		//ArrayList<Board> list = mService.selectMyBoardList(pi, memId);
		ArrayList<Alarm> list = mService.selectMyAlarmList(pi, memNo);
		
		int listcount = pi.getListCount();		//현재 총 게시글 개수 저장
		int page = pi.getCurrentPage(); 	// 현재페이지
		int pageLimit = pi.getPageLimit();		// 페이징바의 페이지 최대개수  (1~10)(11~20) ->  10개 
		int boardLimit = pi.getBoardLimit(); //보여질 보드게시글갯수
		int maxPage = pi.getMaxPage(); // 가장 마지막페이지 (총페이지) 전체게시글의 가장 끝
		int startPage = pi.getStartPage(); //페이징바의 시작수  4번선택시 1, 12번시 11
		int endPage = pi.getEndPage(); // 페이징바의 끝수 4번선택시10, 12선택시 20
		
		//System.out.println("대댇ㄱ그글"+listcount +" , "+ page +" , "+ pageLimit +" , "+ boardLimit +" , "+  maxPage+" , "+ startPage+" , "+ endPage);
		System.out.println("알람 컨트롤러에서 조회하고 난 후 리스트값: " + list);
		//sSystem.out.println(list);
		System.out.println("알람 컨트롤러에서 조회하고 난 후 리스트값: " + list);
		//sSystem.out.println(list);
		result.put("list", list);
		result.put("listcount", listcount);
		result.put("page", page);
		result.put("pageLimit", pageLimit);
		result.put("boardLimit", boardLimit);
		result.put("maxPage", maxPage);
		result.put("startPage", startPage);
		result.put("endPage", endPage);
		
		
		model.addAttribute("result", result);
		  
		  
		return result;
	}
	
	
	//마이페이지 내알람 리스트 조회
	@ResponseBody
	@RequestMapping(value = "myAlarmSelectList.me", produces = "application/json; charset=utf-8")
	public Map<String, Object> myAlarmList(@RequestParam(value="cpage",defaultValue="1") int currentPage, Model model, HttpSession session) {
		
		System.out.println("알람리스트ㅗ회 컨트롤러 탄다 ");
		//이미 동일한게 몇개있는지 

		
		Map<String, Object> result = new HashMap<String, Object>();
		String memNo = ((Member)session.getAttribute("loginMember")).getMemNo();
		
		int listCount = mService.selectMyAlarmListCount(memNo);  // 내 알람 총갯수
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 5);
		//ArrayList<Board> list = mService.selectMyBoardList(pi, memId);
		ArrayList<Alarm> list = mService.selectMyAlarmList(pi, memNo);
		
		int listcount = pi.getListCount();		//현재 총 게시글 개수 저장
		int page = pi.getCurrentPage(); 	// 현재페이지
		int pageLimit = pi.getPageLimit();		// 페이징바의 페이지 최대개수  (1~10)(11~20) ->  10개 
		int boardLimit = pi.getBoardLimit(); //보여질 보드게시글갯수
		int maxPage = pi.getMaxPage(); // 가장 마지막페이지 (총페이지) 전체게시글의 가장 끝
		int startPage = pi.getStartPage(); //페이징바의 시작수  4번선택시 1, 12번시 11
		int endPage = pi.getEndPage(); // 페이징바의 끝수 4번선택시10, 12선택시 20
		
		//System.out.println("대댇ㄱ그글"+listcount +" , "+ page +" , "+ pageLimit +" , "+ boardLimit +" , "+  maxPage+" , "+ startPage+" , "+ endPage);
		System.out.println("알람 컨트롤러에서 조회하고 난 후 리스트값: " + list);
		//sSystem.out.println(list);
		result.put("list", list);
		result.put("listcount", listcount);
		result.put("page", page);
		result.put("pageLimit", pageLimit);
		result.put("boardLimit", boardLimit);
		result.put("maxPage", maxPage);
		result.put("startPage", startPage);
		result.put("endPage", endPage);
		
		return result;
	}
	
	//확인하지않은 알람은 따로 만들기 
	
	//헤더에서 활동알람내역 조회하기
	/*@RequestMapping("headerAlarmSelectList.me")
	public String headerAlarmSelectList(HttpSession session, Model model) {
		
		String memNo = ((Member)session.getAttribute("loginMember")).getMemNo();
		
		//확인하지않은 알람카운트 조회?
		//int listCount = mService.selectMyLikeListCount(memId);
		
	
		ArrayList<Alarm> list = mService.selectMyAlarmList(memNo);
		//System.out.println(list);
		//System.out.println(pi);
		
		//model.addAttribute("pi", pi);
		model.addAttribute("list", list);
		
		return "member/myLikeList";
	}*/
	
	
	
	
	//문자인증-----------------------------------------------
	/*@ResponseBody
	@RequestMapping(value="sms.api" , produces = "application/json; charset=utf-8")
	public String sendSms(String cinfoNo, HttpSession session) {
		
		String memId = ((Member)session.getAttribute("loginMember")).getMemId();
		//System.out.println("INSERTLike컨트롤러탄다");
		//System.out.println(cinfoNo);
		
		Like l = new Like();
		l.setCinfoNo(cinfoNo);
		l.setMemNo(memId);
		//System.out.println(l.getMemNo() + l.getCinfoNo());
		
		//좋아요한거 테이블에 존재하는지 조회
		int select = mService.selectLike(l);
		//System.out.println(select +"셀렉트값");
		int result = 0;
		if(select > 0) {
			//존재하면 status 를 'Y'로 
			//System.out.println("셀렉트0이상");
			 result = mService.updateInsertLike(l);
		}else {
			//존재하지않으면 insert
			 result =  mService.insertLike(l);			
		}
		
		  
		//System.out.println(result);
		 
	    return new Gson().toJson(result);
	}*/
	//---------------------------문자인증
	
//----------------소영끝
	
	
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
	
	
	// 여기서부터 소셜로그인
	@RequestMapping(value = "loginForm.me", method = { RequestMethod.GET, RequestMethod.POST })
	public String socialLogin(Model model, HttpSession session) {
		
		/* 네아로 인증 URL을 생성하기 위하여 naverLoginBO클래스의 getAuthorizationUrl메소드 호출 */
		String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);		
		System.out.println("네이버:" + naverAuthUrl);		
		model.addAttribute("urlNaver", naverAuthUrl);
		
		/* 카카오 URL */
		String kakaoAuthUrl = kakaoLoginBO.getAuthorizationUrl(session);
		System.out.println("카카오:" + kakaoAuthUrl);		
		model.addAttribute("urlKakao", kakaoAuthUrl);			
		
		/* 구글 URL */

        String googleAuthUrl = GoogleLoginBO.getGoogleLoginUrl(session);
        System.out.println("구글:"+googleAuthUrl);
		model.addAttribute("urlGoogle", googleAuthUrl);		    

		/* 생성한 인증 URL을 View로 전달 */
		return "member/loginForm";
	}
	
	// 카카오 로그인 성공시 callback
	@RequestMapping(value = "callbackKaKao.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String callbackKakao(Model model, Member m, @RequestParam String code, @RequestParam String state, HttpSession session) 
			throws Exception {
		System.out.println("로그인 성공 callbackKako");
		OAuth2AccessToken oauthToken;
		oauthToken = kakaoLoginBO.getAccessToken(session, code, state);	
		// 로그인 사용자 정보를 읽어온다
		apiResult = kakaoLoginBO.getUserProfile(oauthToken);
		System.out.println(apiResult);
		JSONParser jsonParser = new JSONParser();
		JSONObject jsonObj;
		
		jsonObj = (JSONObject) jsonParser.parse(apiResult);
		JSONObject response_obj = (JSONObject) jsonObj.get("kakao_account");	
		JSONObject response_obj2 = (JSONObject) response_obj.get("profile");
		
		// 프로필 조회
		String nickName = (String) response_obj2.get("nickname");
		m.setNickName(nickName);
		String email = (String) response_obj.get("email");
		m.setEmail(email);
		m.setMemApiType("카카오");
		String imgUrl = (String) response_obj2.get("profile_image_url");
		m.setMemImgOrigin(imgUrl);
		
		int count = mService.emailCheck(email);
		if (count > 0) {

			Member loginMember=mService.loginMember(m);
			System.out.println(loginMember);
			session.setAttribute("loginMember", loginMember);
			return "redirect:/"; 
		} else { 
			URL url = new URL(imgUrl);
			URLConnection conn = url.openConnection();
			String contentType = conn.getContentType();
			String fileExtension = contentType.substring(contentType.lastIndexOf('/') + 1);
			BufferedImage image = ImageIO.read(url);
			ByteArrayOutputStream os = new ByteArrayOutputStream();
			ImageIO.write(image, fileExtension, os);
			MultipartFile memImgOrigin = new MockMultipartFile("file", "image." + fileExtension, contentType, new ByteArrayInputStream(os.toByteArray()));
			
			
			m.setMemImgChange("resources/uploadFiles/memImg/"+saveMemImg(memImgOrigin,session));
			if(m.getMarketing() == null) {
				m.setMarketing("N");
			}
			mService.insertMember(m);
			
			Member loginMember = mService.loginMember(m);
			System.out.println(loginMember+"else");
			session.setAttribute("loginMember", loginMember);
			return "redirect:/"; 
		}
		
	}
	
	
	//네이버 로그인 성공시 callback호출 메소드
	@RequestMapping(value = "callbackNaver.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String callbackNaver(Model model, Member m, @RequestParam String code, @RequestParam String state, HttpSession session)
			throws Exception {
		System.out.println("로그인 성공 callbackNaver");
		OAuth2AccessToken oauthToken;
		
        oauthToken = naverLoginBO.getAccessToken(session, code, state);
        //로그인 사용자 정보를 읽어온다.
	    apiResult = naverLoginBO.getUserProfile(oauthToken);
	    System.out.println(apiResult);
	    
		JSONParser jsonParser = new JSONParser();
		JSONObject jsonObj;
		
		jsonObj = (JSONObject) jsonParser.parse(apiResult);
		JSONObject response_obj = (JSONObject) jsonObj.get("response");			
		// 프로필 조회
		String email = (String) response_obj.get("email");
		m.setEmail(email);
		String memName = (String) response_obj.get("name");
		m.setMemName(memName);
		String nickName = (String) response_obj.get("nickname");
		m.setNickName(nickName);
		String phone = (String) response_obj.get("mobile");
		m.setPhone(phone);
		m.setMemApiType("네이버");
		String imgUrl = (String) response_obj.get("profile_image");
		m.setMemImgOrigin(imgUrl);
		System.out.println(m);
		
		int count = mService.emailCheckAPI(m);

		
		if (count > 0) {

			Member loginMember=mService.loginMember(m);
			System.out.println(loginMember);
			session.setAttribute("loginMember", loginMember);
			return "redirect:/"; 
		} else { 
			URL url = new URL(imgUrl);
			URLConnection conn = url.openConnection();
			String contentType = conn.getContentType();
			String fileExtension = contentType.substring(contentType.lastIndexOf('/') + 1);
			BufferedImage image = ImageIO.read(url);
			ByteArrayOutputStream os = new ByteArrayOutputStream();
			ImageIO.write(image, fileExtension, os);
			MultipartFile memImgOrigin = new MockMultipartFile("file", "image." + fileExtension, contentType, new ByteArrayInputStream(os.toByteArray()));
			
			
			m.setMemImgChange("resources/uploadFiles/memImg/"+saveMemImg(memImgOrigin,session));
			if(m.getMarketing() == null) {
				m.setMarketing("N");
			}
			mService.insertMember(m);
			
			Member loginMember = mService.loginMember(m);
			System.out.println(loginMember+"else");
			session.setAttribute("loginMember", loginMember);
			return "redirect:/"; 
		}
	}
	
	//구글 로그인 성공시 callback호출 메소드
	@RequestMapping(value = "callbackGoogle.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String callbackGoogle(Model model, Member m, @RequestParam String code, @RequestParam String state, HttpSession session)
			throws Exception {
			System.out.println("로그인 성공 callbackGoogle");
			String accessToken = googleLoginBO.getAccessToken(code);
			System.out.println(accessToken);
	        HttpTransport httpTransport = new NetHttpTransport();
	        JacksonFactory jsonFactory = new JacksonFactory();
	        
	        GoogleCredential credential = new GoogleCredential.Builder()
	                .setTransport(httpTransport)
	                .setJsonFactory(jsonFactory)
	                .build();
	        credential.setAccessToken(accessToken);
	        
	        PeopleService peopleService = new PeopleService.Builder(httpTransport, jsonFactory, credential)
	                .setApplicationName("Carnping")
	                .build();

	        Person profile = peopleService.people().get("people/me").setPersonFields("names,emailAddresses,phoneNumbers,photos").execute();
	        
	        System.out.println(profile);
	        m.setMemApiType("구글");
	        String nickName = profile.getNames().get(0).getDisplayName();
	        m.setNickName(nickName);
	        String email = profile.getEmailAddresses().get(0).getValue();
	        m.setEmail(email);
	        String imgUrl = profile.getPhotos().get(0).getUrl();
	        m.setMemImgOrigin(imgUrl);
	        
	    	String phone = null;
	    	List<PhoneNumber> phoneNumbers = profile.getPhoneNumbers();
	    	if (phoneNumbers != null) {
	    		PhoneNumber phoneNumber = phoneNumbers.get(0);
	    		if (phoneNumber != null) {
	    			phone = phoneNumber.getValue();
	    			m.setPhone(phone);
	    		}
	    	}
	    	
	    	System.out.println(m);
	    	
	        int count = mService.emailCheck(email);
			if (count > 0) {

				Member loginMember=mService.loginMember(m);
				System.out.println(loginMember);
				session.setAttribute("loginMember", loginMember);
				return "redirect:/"; 
			} else { 
				URL url = new URL(imgUrl);
				URLConnection conn = url.openConnection();
				String contentType = conn.getContentType();
				String fileExtension = contentType.substring(contentType.lastIndexOf('/') + 1);
				BufferedImage image = ImageIO.read(url);
				ByteArrayOutputStream os = new ByteArrayOutputStream();
				ImageIO.write(image, fileExtension, os);
				MultipartFile memImgOrigin = new MockMultipartFile("file", "image." + fileExtension, contentType, new ByteArrayInputStream(os.toByteArray()));
				
				
				m.setMemImgChange("resources/uploadFiles/memImg/"+saveMemImg(memImgOrigin,session));
				if(m.getMarketing() == null) {
					m.setMarketing("N");
				}
				mService.insertMember(m);
				
				Member loginMember = mService.loginMember(m);
				System.out.println(loginMember+"else");
				session.setAttribute("loginMember", loginMember);
				return "redirect:/"; 
			}
	        
	    }


}
	