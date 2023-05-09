package com.kh.carnping.admin.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.carnping.admin.model.dao.AdminDao;
import com.kh.carnping.member.model.vo.Member;

@Service
public class AdminServiceImpl implements AdminService{

	@Autowired
	private AdminDao aDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public ArrayList<Member> memNotice() {
		return aDao.memNotice(sqlSession);
	}


	@Override
	public int deleteMember(Member m) {
		return aDao.deleteMember(sqlSession, m);
	}


	@Override
	public Member selectMember(String memNo) {
		return aDao.selectMember(sqlSession, memNo);
	}

}
