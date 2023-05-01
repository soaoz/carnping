package com.kh.carnping.member.model.service;

import com.kh.carnping.member.model.vo.Member;

public interface MemberService {

	// 로그인 서비스 (select)
	Member loginMember(Member m);
	
	// 이메일 중복체크 서비스 (select)
	int emailCheck(String checkEmail);
	
	// 아이디 중복체크 서비스 (select)
	int idCheck(String checkId);
	
	// 닉네임 중복체크 서비스 (select)
	int nicknameCheck(String nickname);
	
	// 회원가입 서비스 (insert)
	int insertMember(Member m);
	
	// 아이디찾기 - 이메일+이름으로 가입유무 체크 (select)
	int findIdByEmailCheck(Member m);
	
	// 아이디찾기 - 이메일+이름으로 아이디 반환  (select)
	Member findIdByEmail(Member m);
	
}
