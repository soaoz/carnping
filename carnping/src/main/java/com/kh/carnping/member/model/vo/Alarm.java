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
public class Alarm {

	private String alaNo;		//알람번호
	private String memNo;		//알림받는 회원
	private String userNo;		//알림 보낸 회원
	private String alaCategory;	//알림카테고리
	private String alaContent;	//알림내용
	private String alaDate;		//알림발생일시
	//private String memNo;		//회원번호  
	private String alaStatus;	//알림확인상태  CHECK IN('Y','N') : 확인했을때 Y, 디폴
	private String status; 		//삭제상태 	  CHECK IN('Y','N') : 삭제아님,디폴트 N
	private String refNo;		//참조글번호
	private int count;
}
