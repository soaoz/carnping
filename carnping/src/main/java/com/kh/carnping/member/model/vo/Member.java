package com.kh.carnping.member.model.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter	
@ToString
public class Member {
	private String memNo;			// 회원번호
	private String memId;			// 회원아이디
	private String memPwd;			// 회원비밀번호
	private String memName;			// 회원이름
	private String nickName;		// 닉네임
	private String email;			// 이메일
	private String enrollDate;		// 회원가입일
	private String modifyDate;		// 회원수정일
	private String status;			// 회원상태 활동 Y,탈퇴 N,관리자 A,정지 S,영구정지 B
	private String memImgOrigin;	// 회원이미지 원본
	private String memImgChange;	// 회원이미지 파일명변경
	private String phone;			// 휴대폰
	private String memApiType;		// 소셜종류
	private String marketing;   	// 마케팅이용약관동의
	private int reportCount;
	private int suspendCount;
	private String reportedMemNo;
}
