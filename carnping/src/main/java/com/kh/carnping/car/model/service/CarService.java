package com.kh.carnping.car.model.service;

import java.util.ArrayList;

import com.kh.carnping.car.model.vo.Cinfo;
import com.kh.carnping.car.model.vo.Filter;

public interface CarService {
	
	// 차박 정보 리스트
	ArrayList<Cinfo> carList();
	
	// 차박 필터 후 리스트
	ArrayList<Cinfo> carList1(Filter filter);
	
	// 차박 상세 정보
	Cinfo selectDetail(String cinfo);
	
}
