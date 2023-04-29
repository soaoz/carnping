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
	
	

	
	//소영시작
	@Override
	public int updateMember(Member m) {
		return 0;
	}
	
	public Member selectMember(String memId) {
		return mDao.selectMember(sqlSession, memId);
	}
	
	public Member temploginMember(Member m) {
		return mDao.temploginMember(sqlSession, m);
	}

	public int nickNameUpdate(Member m) {
		return mDao.nickNameUpdate(sqlSession, m);
	}
	
	public int passwordUpdate(Member m) {
		return mDao.passwordUpdate(sqlSession, m);
	}
	public int updateProfile(Member m) {
		return mDao.updateProfile(sqlSession, m);
	}
	public ArrayList<Question> questionSelectList(String memId){
		return mDao.questionSelectList(sqlSession, memId);
	}
	
	public Question selectQuestion(String queNo) {
		return mDao.selectQuestion(sqlSession, queNo);
	}
	public int insertQuestion(Question q) {
		return mDao.insertQuestion(sqlSession, q);
	}
	public int updateQuestion(Question q) {
		return mDao.updateQuestion(sqlSession,q);
	}
	
	@Override
	public int deleteMember(String memId) {
		return mDao.deleteMember(sqlSession , memId);
	}

}
