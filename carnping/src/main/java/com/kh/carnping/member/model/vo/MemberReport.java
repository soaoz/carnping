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
public class MemberReport {
	private String reportedMemNo;	// 신고받은 회원번호
	private int reportCount;		// 신고누적횟수
	private int suspendCount;		// 정지누적횟수
}
