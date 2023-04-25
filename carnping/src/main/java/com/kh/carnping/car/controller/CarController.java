package com.kh.carnping.car.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.kh.carnping.car.model.service.CarServiceImpl;
import com.kh.carnping.car.model.vo.Cinfo;
import com.kh.carnping.car.model.vo.Filter;


@Controller
public class CarController {
	
	@Autowired
	private CarServiceImpl cService;
	
	@RequestMapping("carList.ca")
	public String carList(Filter filter, Model model) {
		ArrayList<Cinfo> list = cService.carList(filter);
		if(!list.isEmpty()) {
//			if(filter != null) {
//				model.addAttribute("filter", filter);
//				model.addAttribute("list", list);
//				return "redirect:/";
//			}
			model.addAttribute("list", list);
			return "car/carList";
		} else {
			model.addAttribute("emp", "현재 리스트가 비어있습니다.");
			return "car/carList";
		} 
	}	
	
	@ResponseBody
	@RequestMapping(value = "carMap.ca" , produces = "application/json; charset=utf-8")
	public String carMap(Filter filter) {
		ArrayList<Cinfo> list = cService.carList(filter);

		return new Gson().toJson(list); // JSON 형태로 만들어서 문자열로 리턴해줌 맴버객체ㄹ의 필드명으로 키값이 잡힘!
	}
}
