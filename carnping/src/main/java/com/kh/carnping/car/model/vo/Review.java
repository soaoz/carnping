package com.kh.carnping.car.model.vo;

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
public class Review {
	private String reviewNo;	// 리뷰 등록번호 RVW
	private String cinfoNo;		// 차박정보 등록번호
	private double reviewView;		// 뷰
	private double reviewConv;		// 편의시설
	private double reviewAccess;	// 접근성
	private double reviewType;		// 지형
	private String reviewContent;//리뷰내용
	private String reviewImg;	//리뷰 이미지
	private int reviewLike;		//좋아요
	private String reviewStatus; 
	private String memNo; 		// 리뷰 작성자
	private String createDate; 	// 작성일
	private int count;
	private double reviewAllView;
	private double reviewScr; 	// 리뷰총점
	
}
