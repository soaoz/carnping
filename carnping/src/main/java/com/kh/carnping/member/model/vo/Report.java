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
public class Report {
	private String reportNo;	// 신고번호
	private String memNo;		// 신고받은 회원번호
	private String reportRefNo;	// 글번호
	private String reportDate;	// 신고날짜
	private String reportDetail;// 신고사유
}
