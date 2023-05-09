package com.kh.carnping.admin.model.service;

import java.util.ArrayList;

import com.kh.carnping.member.model.vo.Member;

public interface AdminService {

	// 회원조회 서비스(select)
	ArrayList<Member> memNotice();
	
	// 회원탈퇴 서비스(update)
	int deleteMember(Member m);
	
	// 회원정보 수정용 조회(select)
	Member selectMember(String memNo);
}
