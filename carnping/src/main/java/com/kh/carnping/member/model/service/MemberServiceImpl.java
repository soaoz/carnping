package com.kh.carnping.member.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.carnping.member.model.dao.MemberDao;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDao mDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	public int idCheck(String checkId) {
		return mDao.idCheck(sqlSession, checkId);
	}
	
	public int nicknameCheck(String nickname) {
		return mDao.idCheck(sqlSession, nickname);
	}

}
