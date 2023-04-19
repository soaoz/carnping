package com.kh.carnping.member.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.kh.carnping.member.model.dao.MemberDao;

public class MemberServiceImpl {

	@Autowired
	private MemberDao mDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	public int idCheck(String checkId) {
		return mDao.idCheck(sqlSession, checkId);
	}

}
