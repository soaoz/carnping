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
	
	
	//마이페이지 정보수정 서비스 (update)
	int updateMember(Member m);
	
	//회원탈퇴 서비스 (update)
	int deleteMember(String userId);
	
	// 회원가입 서비스 (insert)
	int insertMember(Member m);
}
