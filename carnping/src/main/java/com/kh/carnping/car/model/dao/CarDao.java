package com.kh.carnping.car.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.carnping.board.model.vo.Comment;
import com.kh.carnping.car.model.vo.Cinfo;
import com.kh.carnping.car.model.vo.Filter;
import com.kh.carnping.car.model.vo.Review;

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

	public ArrayList<Review> selectReview(SqlSessionTemplate sqlSession, String cinfoNo) {
		return (ArrayList)sqlSession.selectList("carMapper.selectReview", cinfoNo);
	}

	public Review selectReviewCount(SqlSessionTemplate sqlSession, String cinfoNo) {
		return sqlSession.selectOne("carMapper.selectReviewCount", cinfoNo);
	}

	public ArrayList<Comment> selectReviewComment(SqlSessionTemplate sqlSession, String reNo) {
		return (ArrayList)sqlSession.selectList("carMapper.selectReviewComment", reNo);
	}
	
	
	
}
