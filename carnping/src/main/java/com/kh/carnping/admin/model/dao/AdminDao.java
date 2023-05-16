package com.kh.carnping.admin.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.carnping.car.model.vo.Verify;
import com.kh.carnping.member.model.vo.Member;
import com.kh.carnping.member.model.vo.Report;

@Repository
public class AdminDao {
	public ArrayList<Member> memNotice(SqlSessionTemplate sqlSession){
		return (ArrayList)sqlSession.selectList("memberMapper.selectMemberList");
	}

	public int deleteMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("memberMapper.deleteMemberAdmin", m);
	}

	public Member selectMember(SqlSessionTemplate sqlSession, String memNo) {
		return sqlSession.selectOne("memberMapper.selectMemberAdmin", memNo);
	}

	public int updateMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("memberMapper.updateMemberAdmin", m);
	}

	public ArrayList<Member> reportMem(SqlSessionTemplate sqlSession) {
		return  (ArrayList)sqlSession.selectList("memberMapper.selectReportMemberList");
	}

	public ArrayList<Report> reportDetail(SqlSessionTemplate sqlSession, String reportedMemNo) {
		return  (ArrayList)sqlSession.selectList("memberMapper.selectReportDetailist", reportedMemNo);
	}

	public int suspendMember1(SqlSessionTemplate sqlSession, String memNo) {
		return sqlSession.update("memberMapper.suspendMember1", memNo);
	}

	public int suspendMember2(SqlSessionTemplate sqlSession, String memNo) {
		return sqlSession.insert("memberMapper.suspendMember2", memNo);
	}

	public int suspendMember3(SqlSessionTemplate sqlSession, String memNo) {
		return sqlSession.insert("memberMapper.suspendMember3", memNo);
	}

	public int banMember(SqlSessionTemplate sqlSession, String memNo) {
		return sqlSession.update("memberMapper.banMember", memNo);
	}

	public int memRecover(SqlSessionTemplate sqlSession, String memNo) {
		return sqlSession.update("memberMapper.memRecover", memNo);
	}

	public ArrayList<Verify> verifyList(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("carMapper.verifyList");
	}

	public Verify selectVerify(SqlSessionTemplate sqlSession, String verifyNo) {
		return sqlSession.selectOne("carMapper.selectVerify", verifyNo);
	}

}	
