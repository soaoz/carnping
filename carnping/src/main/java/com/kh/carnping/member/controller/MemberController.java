package com.kh.carnping.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
<<<<<<< HEAD
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MemberController {
	
	@RequestMapping("enrollForm.me")
	public String memberEnrollForm(){
		return "member/memberEnrollForm";
	}
	
	@ResponseBody
	@RequestMapping("agree.me")
	public void agreeEnroll(boolean marketingAgree){
		System.out.println(marketingAgree);
	}
=======

@Controller
public class MemberController {
	@RequestMapping("myProfile.me")
	public String myProfile() {
		return "member/myProfile";
	}

>>>>>>> c24857b9bc58d3e9ad24fdf2bcf8ac20dd12b131
}
	