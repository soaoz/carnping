package com.kh.carnping.member.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.carnping.member.model.vo.Member;
import com.kh.carnping.member.model.vo.Question;

@Repository
public class MemberDao {
	
	public Member loginMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.loginMember", m);
	}
	
	public int emailCheck(SqlSessionTemplate sqlSession, String checkEmail) {
		return sqlSession.selectOne("memberMapper.emailCheck", checkEmail);
	}
	public int idCheck(SqlSessionTemplate sqlSession, String checkId) {
		return sqlSession.selectOne("memberMapper.idCheck", checkId);
	}
	
	public int nicknameCheck(SqlSessionTemplate sqlSession, String nickname) {
		return sqlSession.selectOne("memberMapper.nicknameCheck", nickname);
	}
	
	
	//소영시작
	public Member selectMember(SqlSessionTemplate sqlSession,String memID) {
		return sqlSession.selectOne("memberMapper.selectMember", memID);
	}
	
	public Member temploginMember(SqlSessionTemplate sqlSession,Member m) {
		return sqlSession.selectOne("memberMapper.temploginMember", m);
	}
	
	public int nickNameUpdate(SqlSessionTemplate sqlSession,Member m) {
		return  sqlSession.update("memberMapper.nickNameUpdate", m);
	}
	
	public int passwordUpdate(SqlSessionTemplate sqlSession,Member m) {
		return sqlSession.update("memberMapper.passwordUpdate", m);
	}
	
	public int updateProfile(SqlSessionTemplate sqlSession,Member m) {
		return sqlSession.update("memberMapper.updateProfile", m);
	}
	
	public ArrayList<Question> questionSelectList(SqlSessionTemplate sqlSession,String memId) {
		return (ArrayList)sqlSession.selectList("memberMapper.questionSelectList", memId);
	}
	public int insertMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.insert("memberMapper.insertMember", m);
	}
	
	public Question selectQuestion(SqlSessionTemplate sqlSession,String queNo) {
		return sqlSession.selectOne("memberMapper.selectQuestion", queNo);
	}
	public int insertQuestion(SqlSessionTemplate sqlSession,Question q) {
		return sqlSession.insert("memberMapper.insertQuestion", q);
	}
	public int updateQuestion(SqlSessionTemplate sqlSession,Question q) {
		return sqlSession.update("memberMapper.updateQuestion", q);
	}
	
	public int deleteMember(SqlSessionTemplate sqlSession ,String memId) {
		return sqlSession.update("memberMapper.deleteMember", memId);
	}
}
