package com.kh.carnping.member.controller;

import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.net.URLConnection;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
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
import com.google.api.client.auth.oauth2.AuthorizationCodeRequestUrl;
import com.google.api.client.googleapis.auth.oauth2.GoogleAuthorizationCodeFlow;
import com.google.api.client.googleapis.auth.oauth2.GoogleCredential;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.http.javanet.NetHttpTransport;
import com.google.api.client.json.jackson2.JacksonFactory;
import com.google.api.services.people.v1.PeopleService;
import com.google.api.services.people.v1.model.Person;
import com.google.api.services.people.v1.model.PhoneNumber;
import com.kh.carnping.member.model.service.MemberServiceImpl;
import com.kh.carnping.member.model.vo.GoogleLoginBO;
import com.kh.carnping.member.model.vo.KakaoLoginBO;
import com.kh.carnping.member.model.vo.Member;
import com.kh.carnping.member.model.vo.NaverLoginBO;



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
		System.out.println("===== insertMember 시작 ====");
		System.out.println("Member m : ");
		System.out.println(m);
		System.out.println("===== insertMember 진행중 ====");
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
			return "admin/menubar";
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
	