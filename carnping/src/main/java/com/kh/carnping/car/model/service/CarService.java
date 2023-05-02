package com.kh.carnping.car.model.service;

import java.util.ArrayList;

import com.kh.carnping.board.model.vo.Comment;
import com.kh.carnping.car.model.vo.Cinfo;
import com.kh.carnping.car.model.vo.Filter;
import com.kh.carnping.car.model.vo.Review;

public interface CarService {
	
	// 차박 정보 리스트
	ArrayList<Cinfo> carList();
	
	// 차박 필터 후 리스트
	ArrayList<Cinfo> carList1(Filter filter);
	
	// 차박 상세 정보
	Cinfo selectDetail(String cinfoNo);
	
	// 리뷰정보
	ArrayList<Review> selectReview(String cinfoNo);
	
	// 리뷰 카운터 정보
	Review selectReviewCount(String cinfoNo);
	
	// 리뷰 댓글 정보
	ArrayList<Comment> selectReviewComment(String reNo);
}
