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
public class Chat {
	private String chatNo;			// 채팅번호
	private String chatComment;		// 내용
	private String memNo;			// 작성자
	private String chatCreateDate;	// 작성일
}
