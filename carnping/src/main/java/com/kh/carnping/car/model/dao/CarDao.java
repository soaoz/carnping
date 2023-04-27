package com.kh.carnping.car.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.carnping.car.model.vo.Cinfo;
import com.kh.carnping.car.model.vo.Filter;

@Repository
public class CarDao {
	
	public ArrayList<Cinfo> carList(SqlSessionTemplate sqlSession){
		return (ArrayList)sqlSession.selectList("carMapper.carList");
	}
	
	public ArrayList<Cinfo> carList1(SqlSessionTemplate sqlSession, Filter filter){
		return (ArrayList)sqlSession.selectList("carMapper.carList1", filter);
	}
	
	public Cinfo selectDetail(SqlSessionTemplate sqlSession, String cinfoNo) {
		return sqlSession.selectOne("carMapper.selectDetail", cinfoNo);
	}
}
