package com.kh.carnping.member.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.carnping.board.model.vo.Board;
import com.kh.carnping.board.model.vo.Comment;
import com.kh.carnping.common.model.vo.PageInfo;
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
	
	public int insertMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.insert("memberMapper.insertMember", m);
	}
	

	public int selectQuestionListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("memberMapper.selectQuestionListCount");
	}
	
	public ArrayList<Question> questionSelectList(SqlSessionTemplate sqlSession,PageInfo pi, String memId) {
		
		//페이지
		//오프셋 : 몇개의 게시글을 건너 뛸 건지
		int offset = (pi.getCurrentPage()-1 )*pi.getBoardLimit();
		
		//총 몇개를 조회해갈껀지 
		int limit =pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		
		return (ArrayList)sqlSession.selectList("memberMapper.questionSelectList", memId , rowBounds);
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
	
	public int deleteQuestion(SqlSessionTemplate sqlSession,String queNo) {
		return sqlSession.update("memberMapper.deleteQuestion", queNo);
	}
	
	public int deleteMember(SqlSessionTemplate sqlSession ,String memId) {
		return sqlSession.update("memberMapper.deleteMember", memId);
	}
	
	public int selectMyBoardListCount(SqlSessionTemplate sqlSession, String memId) {
		return sqlSession.selectOne("boardMapper.selectMyBoardListCount", memId);
	} 
	
	public ArrayList<Board> selectMyBoardList(SqlSessionTemplate sqlSession, PageInfo pi, String memId){
		
		//페이지
		//오프셋 : 몇개의 게시글을 건너 뛸 건지
		int offset = (pi.getCurrentPage()-1 )*pi.getBoardLimit();
		
		//총 몇개를 조회해갈껀지 
		int limit =pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		
		return (ArrayList)sqlSession.selectList("boardMapper.selectMyBoardList", memId, rowBounds);
	}
	
	public int selectMyCommentListCount(SqlSessionTemplate sqlSession, String memId) {
		return sqlSession.selectOne("boardMapper.selectMyCommentListCount", memId);
	}
	
	public ArrayList<Comment> selectMyCommentList(SqlSessionTemplate sqlSession, PageInfo pi, String memId){
		
		//페이지
		//오프셋 : 몇개의 게시글을 건너 뛸 건지
		int offset = (pi.getCurrentPage()-1 )*pi.getBoardLimit();
		
		//총 몇개를 조회해갈껀지 
		int limit =pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset, limit);
		
		return (ArrayList)sqlSession.selectList("boardMapper.selectMyCommentList", memId , rowBounds);
	}
	
	public int deleteBoard(SqlSessionTemplate sqlSession,String boardNo) {
		return sqlSession.update("boardMapper.deleteBoard",boardNo);
	}
	
	public int deleteComment(SqlSessionTemplate sqlSession,String reNo) {
		return sqlSession.update("boardMapper.deleteComment",reNo);

	public int findIdByEmailCheck(SqlSessionTemplate sqlSession,  Member m) {
		return sqlSession.selectOne("memberMapper.findIdByEmailCheck", m);
	}
	
	public Member findIdByEmail(SqlSessionTemplate sqlSession,  Member m) {
		return sqlSession.selectOne("memberMapper.findIdByEmail", m);
	}

	public int findPwdCheck(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.findPwdCheck", m);
	}

	public int updatePwd(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("memberMapper.updatePwd", m);

	}
}
