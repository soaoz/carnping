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
public class Question {
	private String queNo;
	private String queCategory;
	private String queTitle;
	private String queContent;
	private String queDate;
	private String queStatus;
	private String queAnswer;
	private String memNo;
	private String memId; //추가함
}
