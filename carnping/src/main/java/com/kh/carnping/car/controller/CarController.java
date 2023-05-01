package com.kh.carnping.car.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.carnping.car.model.service.CarServiceImpl;
import com.kh.carnping.car.model.vo.Cinfo;
import com.kh.carnping.car.model.vo.Filter;
import com.kh.carnping.car.model.vo.Review;


@Controller
public class CarController {
	
	@Autowired
	private CarServiceImpl cService;
	
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
	
	@RequestMapping("filter.ca")
	public String carList1(Filter filter, Model model) {
		ArrayList<Cinfo> list = cService.carList1(filter);
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
		ArrayList<Review> review = cService.selectReview(cinfoNo);
		Review reCount = cService.selectReviewCount(cinfoNo);
		
		String[] week = {"Mon","Tues","Wednes","Thurs","Fri","Satur","Sun"}; 
		
		model.addAttribute("week", week);
		model.addAttribute("cinfo", cinfo);
		model.addAttribute("reCount", reCount);
		model.addAttribute("review", review);
		return "car/carDetail";
	}
	
//	@ResponseBody
//	@RequestMapping(value = "carMap.ca" , produces = "application/json; charset=utf-8")
//	public String carMap() {
//		ArrayList<Cinfo> list = cService.carList();
//
//		return new Gson().toJson(list); // JSON 형태로 만들어서 문자열로 리턴해줌 맴버객체ㄹ의 필드명으로 키값이 잡힘!
//	}
//	
//	@ResponseBody
//	@RequestMapping(value = "filterMap.ca" , produces = "application/json; charset=utf-8")
//	public String filterMap(Filter filter) {
//		ArrayList<Cinfo> list = cService.carList();
//
//		return new Gson().toJson(list); // JSON 형태로 만들어서 문자열로 리턴해줌 맴버객체ㄹ의 필드명으로 키값이 잡힘!
//	}
}
