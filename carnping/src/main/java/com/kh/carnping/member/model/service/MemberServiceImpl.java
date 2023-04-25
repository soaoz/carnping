package com.kh.carnping.member.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.carnping.member.model.dao.MemberDao;
import com.kh.carnping.member.model.vo.Member;
import com.kh.carnping.member.model.vo.Question;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDao mDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int emailCheck(String checkEmail) {
		return mDao.emailCheck(sqlSession, checkEmail);
	}
	public int idCheck(String checkId) {
		return mDao.idCheck(sqlSession, checkId);
	}
	
	public int nicknameCheck(String nickname) {
		return mDao.nicknameCheck(sqlSession, nickname);
	}

	
	//소영시작
	@Override
	public int updateMember(Member m) {
		return 0;
	}
	
	public Member userCheck(String memId) {
		return mDao.userCheck(sqlSession, memId);
	}
	public Member temploginMember(Member m) {
		return mDao.temploginMember(sqlSession, m);
	}
	public int nickNameUpdate(Member m) {
		
		int result = mDao.nickNameUpdate(sqlSession, m);
		
		return result;
		
	}
	
	public int passwordUpdate(Member m) {
		return mDao.passwordUpdate(sqlSession, m);
	}
	public ArrayList<Question> questionSelectList(String memId){
		return mDao.questionSelectList(sqlSession, memId);
	}
	
	@Override
	public int deleteMember(String userId) {
		return 0;
	}

}
