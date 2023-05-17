package com.kh.carnping.admin.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.carnping.admin.model.dao.AdminDao;
import com.kh.carnping.car.model.vo.Cinfo;
import com.kh.carnping.car.model.vo.Verify;
import com.kh.carnping.member.model.vo.Member;
import com.kh.carnping.member.model.vo.Report;

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


	@Override
	public int updateMember(Member m) {
		return aDao.updateMember(sqlSession, m);
	}


	public ArrayList<Member> reportMem() {
		return aDao.reportMem(sqlSession);
	}


	public ArrayList<Report> reportDetail(String reportedMemNo) {
		return aDao.reportDetail(sqlSession, reportedMemNo);
	}


	public int suspendMember1(String memNo) {
		return aDao.suspendMember1(sqlSession, memNo);
	}


	public int suspendMember2(String memNo) {
		return aDao.suspendMember2(sqlSession, memNo);
	}


	public int suspendMember3(String memNo) {
		return aDao.suspendMember3(sqlSession, memNo);
	}


	public int banMember(String memNo) {
		return aDao.banMember(sqlSession, memNo);
	}


	public int memRecover(String memNo) {
		return aDao.memRecover(sqlSession, memNo);
	}


	@Override
	public ArrayList<Verify> verifyList() {
		return aDao.verifyList(sqlSession);
	}


	public Verify selectVerify(String verifyNo) {
		return aDao.selectVerify(sqlSession, verifyNo);
	}


	public int insertCar(Cinfo cinfo) {
		return aDao.insertCar(sqlSession, cinfo);
	}



	
	
}
