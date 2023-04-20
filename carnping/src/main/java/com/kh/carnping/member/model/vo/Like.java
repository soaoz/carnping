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
public class Like {
	private String memNo;		// 회원번호
	private String cinfoNo;		// 차박정보번호
	private String likeStatus;	// 좋아요상태
}
