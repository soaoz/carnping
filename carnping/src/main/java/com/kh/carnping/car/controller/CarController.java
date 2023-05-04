package com.kh.carnping.car.controller;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.put;

import java.util.ArrayList;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.kh.carnping.board.model.vo.Comment;
import com.kh.carnping.car.model.service.CarServiceImpl;
import com.kh.carnping.car.model.vo.Cinfo;
import com.kh.carnping.car.model.vo.Filter;
import com.kh.carnping.car.model.vo.Review;


@Controller
public class CarController {
	
	@Autowired
	private CarServiceImpl cService;
	
	// 차박 정보 리스트
	@RequestMapping("carList.ca")
	public String carList(Model model) {
		ArrayList<Cinfo> list = cService.carList();
		if(!list.isEmpty()) {
			model.addAttribute("list", list);
			return "car/carList";
		} else {
			model.addAttribute("emp", "현재 리스트가 비어있습니다.");
			model.addAttribute("list", list);
			return "car/carList";
		} 
	}	
	
	// 차박 정보 리스트 (필터기능)
	@RequestMapping("filter.ca")
	public String filterList(Filter filter, Model model) {
		ArrayList<Cinfo> list = cService.filterList(filter);
		if(!list.isEmpty()) {
			model.addAttribute("filter", filter);
			model.addAttribute("list", list);
			return "car/carList";
		} else {
			model.addAttribute("list", list);
			model.addAttribute("filter", filter);
			model.addAttribute("emp", "현재 리스트가 비어있습니다.");
			return "car/carList";
		} 
	}
	
	// 차박 상세정보로 이동
	@RequestMapping("detail.ca")
	public String selectDetail(String cinfoNo, Model model) {
		Cinfo cinfo = cService.selectDetail(cinfoNo);
		Review reCount = cService.selectReviewCount(cinfoNo);
		String[] week = {"월","화","수","목","금","토","일"}; 
		String[] facilities = {"화장실","편의점","카페","마트","음식점","주차장","캠핑장","병원"};
		
		model.addAttribute("facilities", facilities);
		model.addAttribute("week", week);
		model.addAttribute("cinfo", cinfo);
		model.addAttribute("reCount", reCount);
		return "car/carDetail";
	}
	
	// 리뷰 리스트
	@ResponseBody
	@RequestMapping(value = "selectReview.ca" , produces = "application/json; charset=utf-8")
	public String selectReview(String cinfoNo) {
		ArrayList<Review> review = cService.selectReview(cinfoNo);
		return new Gson().toJson(review);
	}
	
	// 리뷰 댓글 리스트
	@ResponseBody
	@RequestMapping(value = "selectReviewComment.ca" , produces = "application/json; charset=utf-8")
	public String selectComment(String reNo) {
		ArrayList<Comment> comment = cService.selectReviewComment(reNo);
		return new Gson().toJson(comment);
	}
	
	// 리뷰 좋아요
	@RequestMapping(value = "like.ca")
	public String reviewLike(String reNo) {
		int like = cService.reviewLike(reNo);
		if(like > 0) {
			System.out.println("성공");
		}else {
			System.out.println("실패");
		}
		return "car/carDetail";
	}
}
