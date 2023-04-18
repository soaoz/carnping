package com.kh.carnping.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	@RequestMapping("myProfile.me")
	public String myProfile() {
		return "common/footer";
	}

}
	