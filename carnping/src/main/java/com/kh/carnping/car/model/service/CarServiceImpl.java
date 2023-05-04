package com.kh.carnping.car.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.carnping.board.model.vo.Comment;
import com.kh.carnping.car.model.dao.CarDao;
import com.kh.carnping.car.model.vo.Cinfo;
import com.kh.carnping.car.model.vo.Filter;
import com.kh.carnping.car.model.vo.Review;

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
	
	public ArrayList<Cinfo> carList1(Filter filter) {
		return cDao.carList1(sqlSession, filter);
	}

	@Override
	public Cinfo selectDetail(String cinfoNo) {
		return cDao.selectDetail(sqlSession, cinfoNo);
	}
	
	@Override
	public ArrayList<Review> selectReview(String cinfoNo) {
		return cDao.selectReview(sqlSession, cinfoNo);
	}

	@Override
	public Review selectReviewCount(String cinfoNo) {
		return cDao.selectReviewCount(sqlSession, cinfoNo);
	}

	@Override
	public ArrayList<Comment> selectReviewComment(String reNo) {
		return cDao.selectReviewComment(sqlSession, reNo);
	}

	@Override
	public int reviewLike(String reNo) {
		return cDao.reviewLike(sqlSession, reNo);
	}

	
	
	
	
}
