package com.kh.carnping.board.model.vo;

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
public class BoardReply {
	private String breNo;		// 댓글 등록번호
	private String boardNo;		// 게시판 번호
	private String memNo;		// 작성자
	private String createDate;	// 작성일
	private String commContent;	// 댓글내용
	private String memId;
	private String memImgOrigin;	// 회원이미지 원본
	private String memImgChange;	// 회원이미지 파일명변경
	private String status;
}
