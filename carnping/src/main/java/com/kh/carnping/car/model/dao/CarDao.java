package com.kh.carnping.car.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.carnping.car.model.vo.Cinfo;
import com.kh.carnping.car.model.vo.Filter;

@Repository
public class CarDao {
	
	public ArrayList<Cinfo> carList(SqlSessionTemplate sqlSession, Filter filter){
		ArrayList<Cinfo> list = (ArrayList)sqlSession.selectList("carMapper.carList", filter);
		System.out.println(list);
		return list;
	}
}
