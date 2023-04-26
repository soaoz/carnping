package com.kh.carnping.car.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.carnping.car.model.vo.Cinfo;
import com.kh.carnping.car.model.vo.Filter;

@Repository
public class CarDao {
	
	public ArrayList<Cinfo> carList(SqlSessionTemplate sqlSession){
		ArrayList<Cinfo> list = (ArrayList)sqlSession.selectList("carMapper.carList");
		System.out.println(list);
		return list;
	}
	
	public ArrayList<Cinfo> carList1(SqlSessionTemplate sqlSession, Filter filter){
		System.out.println(filter.getLocation());
		ArrayList<Cinfo> list = (ArrayList)sqlSession.selectList("carMapper.carList1", filter);
		System.out.println(list);
		return list;
	}
}
