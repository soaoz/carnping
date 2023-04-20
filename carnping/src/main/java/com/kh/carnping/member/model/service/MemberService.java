package com.kh.carnping.member.model.service;

public interface MemberService {

	// 아이디 중복체크 서비스 (select)
	int idCheck(String checkId);
}
