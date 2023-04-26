package com.kh.carnping.car.model.service;

import java.util.ArrayList;

import com.kh.carnping.car.model.vo.Cinfo;
import com.kh.carnping.car.model.vo.Filter;

public interface CarService {
	
	// 차박 정보 리스트
	ArrayList<Cinfo> carList();
	ArrayList<Cinfo> carList1(Filter filter);
	
	
}
