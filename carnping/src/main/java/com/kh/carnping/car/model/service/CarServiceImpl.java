package com.kh.carnping.car.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.carnping.car.model.dao.CarDao;
import com.kh.carnping.car.model.vo.Cinfo;

@Service
public class CarServiceImpl implements CarService{

	@Autowired
	private CarDao cDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public ArrayList<Cinfo> carList() {
		return cDao.carList(sqlSession);
	}
	
	
	
}
