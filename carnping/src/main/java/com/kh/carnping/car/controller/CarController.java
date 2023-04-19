package com.kh.carnping.car.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CarController {
	
	@RequestMapping("carList.ca")
	public String carList() {
		return "car/carList";
	}
}
