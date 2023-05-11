package com.kh.carnping.member.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.carnping.board.model.vo.Board;
import com.kh.carnping.board.model.vo.Comment;
import com.kh.carnping.car.model.vo.Cinfo;
import com.kh.carnping.common.model.vo.PageInfo;
import com.kh.carnping.member.model.dao.MemberDao;
import com.kh.carnping.member.model.vo.Like;
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

	
	
	
	//소영시작 
	
	@Override
	public Member selectMember(String memId) {
		return mDao.selectMember(sqlSession, memId);
	}
	
	public Member selectMember(Member m) {
		return mDao.selectMember(sqlSession, m);
	}

	@Override
	public int nickNameUpdate(Member m) {
		return mDao.nickNameUpdate(sqlSession, m);
	}

	@Override
	public int passwordUpdate(Member m) {
		return mDao.passwordUpdate(sqlSession, m);
	}

	@Override
	public int updateProfile(Member m) {
		return mDao.updateProfile(sqlSession, m);
	}

	//내가쓴글 목록 페이징을 위한 내가쓴글 갯수 조회
	public int selectMyBoardListCount(String memId) {
		return mDao.selectMyBoardListCount(sqlSession, memId); 
	}
	
	//내가쓴글 목록 조회
	public ArrayList<Board> selectMyBoardList(PageInfo pi, String memId){
		return mDao.selectMyBoardList(sqlSession, pi, memId);
	}
	
	//문의하기 목록 페이징을 위한 문의글 개수 조회
	public int selectQuestionListCount(String memId) {
		return mDao.selectQuestionListCount(sqlSession, memId); 
	}
	
	//문의하기 목록 조회
	public ArrayList<Question> questionSelectList(PageInfo pi, String memId){
		return mDao.questionSelectList(sqlSession, pi,  memId);
	}
	
	
	@Override
	public Question selectQuestion(String queNo) {
		return mDao.selectQuestion(sqlSession, queNo);
	}

	@Override
	public int insertQuestion(Question q) {
		return mDao.insertQuestion(sqlSession, q);
	}

	@Override
	public int updateQuestion(Question q) {
		return mDao.updateQuestion(sqlSession,q);
	}

	@Override
	public int deleteQuestion(String queNo) {
		return mDao.deleteQuestion(sqlSession, queNo);
	}

	@Override
	public int deleteBoard(String boardNo) {
		return mDao.deleteBoard(sqlSession, boardNo);
	}
	
	public int selectMyCommentListCount(String memId) {
		return mDao.selectMyCommentListCount(sqlSession, memId);
	}
	
	public ArrayList<Comment> selectMyCommentList(PageInfo pi, String memId){
		return mDao.selectMyCommentList(sqlSession, pi, memId);
	}

	@Override
	public int deleteComment(String reNo) {
		return mDao.deleteComment(sqlSession, reNo);
	}
	
	@Override
	public int deleteMember(String memId) {
		return mDao.deleteMember(sqlSession , memId);
	}
	
	public int selectMyCarListCount(String memId) {
		return mDao.selectMyCarListCount(sqlSession, memId);
	}
	
	public ArrayList<Cinfo> selectMyCarList(PageInfo pi, String memId){
		return mDao.selectMyCarList(sqlSession, pi, memId);
	}
	
	public int deleteMyCinfo(String cinfoNo) {
		return mDao.deleteMyCinfo(sqlSession, cinfoNo);
	}
	
	public int selectMyLikeListCount(String memId) {
		return mDao.selectMyLikeListCount(sqlSession, memId);
	}
	
	public ArrayList<Cinfo> selectMyLikeList(PageInfo pi, String memId){
		return mDao.selectMyLikeList(sqlSession, pi, memId);
	}
	
	public int selectLikeCount(Like l) {
		return mDao.selectLikeCount(sqlSession, l);
	}
	
	public int deleteLike(Like l) {
		return mDao.deleteLike(sqlSession, l);
	}
	
	public int updateInsertLike(Like l) {
		return mDao.updateInsertLike(sqlSession, l);
	}
	
	public int selectLike(Like l) {
		return mDao.selectLike(sqlSession, l);
	}
	
	public int insertLike(Like l) {
		return mDao.insertLike(sqlSession, l);
	}
	
	public int emailUpdate(Member m) {
		return mDao.emailUpdate(sqlSession, m);
	}
}
