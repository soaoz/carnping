package com.kh.carnping.member.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.carnping.member.model.dao.MemberDao;
import com.kh.carnping.member.model.vo.Member;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDao mDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public Member loginMember(Member m) {
		return mDao.loginMember(sqlSession, m);
	}
	
	@Override
	public int emailCheck(String checkEmail) {
		return mDao.emailCheck(sqlSession, checkEmail);
	}
	
	@Override
	public int idCheck(String checkId) {
		return mDao.idCheck(sqlSession, checkId);
	}
	
	@Override
	public int nicknameCheck(String nickname) {
		return mDao.nicknameCheck(sqlSession, nickname);
	}
	
	@Override
	public int insertMember(Member m) {
		return mDao.insertMember(sqlSession, m);
	}

	@Override
	public int findIdByEmailCheck(Member m) {
		return mDao.findIdByEmailCheck(sqlSession, m);
	}

	@Override
	public Member findIdByEmail(Member m) {
		// TODO Auto-generated method stub
		return mDao.findIdByEmail(sqlSession, m);
	}

	@Override
	public int findPwdCheck(Member m) {
		return mDao.findPwdCheck(sqlSession, m);
	}

	public int updatePwd(Member m) {
		return mDao.updatePwd(sqlSession, m);
	}
	
	

}
