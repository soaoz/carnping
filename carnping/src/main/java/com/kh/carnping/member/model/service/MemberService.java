package com.kh.carnping.member.model.service;

import com.kh.carnping.member.model.vo.Member;
import com.kh.carnping.member.model.vo.Question;

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
	
	// 비밀번호 찾기 - 아이디+이름+이메일로 가입회원 존재유무 체크(select)
	int findPwdCheck(Member m);
	
	// 비밀번호 찾기 인증 후, 새 비밀번호 변경
	int updatePwd(Member m);
	
	
	
	//소영시작
	// 한명의 유저 정보 조회
	Member selectMember(String memId);
	
	//닉네임 업데이트
	int nickNameUpdate(Member m);
	
	//비밀번호만 업데이트
	int passwordUpdate(Member m);
	
	//회원정보 전체 업데이트
	int updateProfile(Member m);
	
	//문의하기 정보 조회
	Question selectQuestion(String queNo);
	
	//문의하기 입력
	int insertQuestion(Question q);
	
	//문의하기 수정
	int updateQuestion(Question q);
	
	//문의하기 삭제
	int deleteQuestion(String queNo);
	
	//회원 탈퇴
	int deleteMember(String memId);
	
	//내 게시글 삭제
	int deleteBoard(String boardNo);
	
	//내 댓글 삭제
	 int deleteComment(String reNo);
}
