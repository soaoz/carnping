package com.kh.carnping.car.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.kh.carnping.car.model.service.CarServiceImpl;
import com.kh.carnping.car.model.vo.Cinfo;

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
			return "car/carList";
		} 
	}
	
	@ResponseBody
	@RequestMapping(value = "carMap.ca" , produces = "application/json; charset=utf-8")
	public String ajaxMethod3() {
		ArrayList<Cinfo> list = cService.carList();

		return new Gson().toJson(list); // JSON 형태로 만들어서 문자열로 리턴해줌 맴버객체ㄹ의 필드명으로 키값이 잡힘!
	}
}
