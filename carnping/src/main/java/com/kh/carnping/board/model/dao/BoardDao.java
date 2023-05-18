package com.kh.carnping.board.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.carnping.board.model.vo.Board;
import com.kh.carnping.board.model.vo.BoardReply;
import com.kh.carnping.member.model.vo.Report;

@Repository
public class BoardDao {
	
	/**
     *  최신순 버튼
     */
	
	public ArrayList<Board> selectLastest(SqlSessionTemplate sqlSession) {
		
		return (ArrayList)sqlSession.selectList("boardMapper.selectLastest");
	}

	
	/**
     *  무료나눔 게시판 조회
     */
	
	public ArrayList<Board> selectFreeBoardList(SqlSessionTemplate sqlSession) {

		return (ArrayList)sqlSession.selectList("boardMapper.selectFreeBoardList");
	}


	/**
     *  무료나눔 게시판 상세조회
     */
	
	public Board selectFreeBoardDetail(String bno, SqlSessionTemplate sqlSession) {

		return sqlSession.selectOne("boardMapper.selectFreeBoardDetail", bno);
	}

	
	/**
     *  무료나눔 게시판 등록
     */
	
	public int insertFreeBoard(SqlSessionTemplate sqlSession, Board b) {

		return sqlSession.insert("boardMapper.insertFreeBoard", b);
	}

	
	/**
     *  무료나눔 게시판 이미지 등록
     */
	
	public int insertFreeBoardImage(SqlSessionTemplate sqlSession, Board b) {

		return sqlSession.insert("boardMapper.insertFreeBoardImage", b);
	}

	
	/**
     *  무료나눔 게시판 수정
     */
	
	public int updateFreeBoard(SqlSessionTemplate sqlSession, Board b) {
		
		return sqlSession.update("boardMapper.updateFreeBoard", b);
	}
	
	
	/**
     *  무료나눔 게시판 이미지 수정
     */
	
	public int updateFreeBoardImage(SqlSessionTemplate sqlSession, Board b) {
		
		return sqlSession.update("boardMapper.updateFreeBoardImage", b);
	}
	
	
	/**
     *  무료나눔 게시판 삭제
     */
	
	public int deleteFreeBoard(SqlSessionTemplate sqlSession, String bno) {

		return sqlSession.update("boardMapper.deleteFreeBoard", bno);
	}


	
	
	
	
	
	
	
	/**
     *  소모임 게시판 조회
     */
	
	public ArrayList<Board> selectPartyBoardList(SqlSessionTemplate sqlSession) {

		return (ArrayList)sqlSession.selectList("boardMapper.selectPartyBoardList");
	}

	
	/**
     *  소모임 게시판 상세조회
     */
	public Board selectPartyBoardDetail(SqlSessionTemplate sqlSession, String bno) {

		return sqlSession.selectOne("boardMapper.selectPartyBoardDetail", bno);
	}
	
	
	/**
     *  소모임 게시판 등록
     */
	
	public int partyBoardInsert(SqlSessionTemplate sqlSession, Board b) {

		return sqlSession.insert("boardMapper.partyBoardInsert", b);
	}

	
	/**
     *  소모임 게시판 삭제
     */
	public int deletePartyBoard(SqlSessionTemplate sqlSession, String bno) {

		return sqlSession.update("boardMapper.deletePartyBoard", bno);
	}

	
	/**
     *  소모임 게시판 수정
     */
	public int updatePartyBoard(SqlSessionTemplate sqlSession, Board b) {

		return sqlSession.update("boardMapper.updatePartyBoard", b);
	}
	
	
	
	
	
	
	
	/**
     *  무료나눔 댓글 리스트 조회
     */
	public ArrayList<BoardReply> selectFreeReplyList(SqlSessionTemplate sqlSession, String bno) {

		return (ArrayList)sqlSession.selectList("boardMapper.selectFreeReplyList", bno);
	}


	/**
     *  무료나눔 댓글 등록
     */
	public int freeReplyInsert(SqlSessionTemplate sqlSession, BoardReply r) {

		return sqlSession.insert("boardMapper.freeReplyInsert", r);
	}
	
	
	/**
     *  무료나눔 게시판 댓글 삭제
     */
	public int freeReplyDelete(SqlSessionTemplate sqlSession, String brno) {

		return sqlSession.update("boardMapper.freeReplyDelete", brno);
	}

	
	/**
     *  소모임 댓글 리스트 조회
     */
	public ArrayList<BoardReply> selectPartyReplyList(SqlSessionTemplate sqlSession, String bno) {

		return (ArrayList)sqlSession.selectList("boardMapper.selectPartyReplyList", bno);
	}

	
	/**
     *  소모임 댓글 등록
     */
	public int partyReplyInsert(SqlSessionTemplate sqlSession, BoardReply r) {

		return sqlSession.insert("boardMapper.partyReplyInsert", r);
	}
	
	
	/**
     *  소모임 게시판 댓글 삭제
     */
	public int partyReplyDelete(SqlSessionTemplate sqlSession, String brno) {

		return sqlSession.update("boardMapper.partyReplyDelete", brno);
	}


	
	
	
	
	/**
     *  공지사항 조회
     */
	public ArrayList<Board> selectNoticeBoardList(SqlSessionTemplate sqlSession) {

		return (ArrayList)sqlSession.selectList("boardMapper.selectNoticeBoardList");
	}

	
	/**
     *  공지사항 상세조회
     */
	public Board selectNoticeBoardDetail(SqlSessionTemplate sqlSession, String bno) {

		return sqlSession.selectOne("boardMapper.selectNoticeBoardDetail", bno);
	}
	
	
	
	/**
     *  공지사항 등록
     */
	public int noticeBoardInsert(SqlSessionTemplate sqlSession, Board b) {

		return sqlSession.insert("boardMapper.noticeBoardInsert", b);
	}


	
	/**
     *  공지사항 수정
     */
	public int updateNoticeBoard(SqlSessionTemplate sqlSession, Board b) {

		return sqlSession.update("boardMapper.updateNoticeBoard", b);
	}


	/**
     *  공지사항 삭제
     */
	public int deleteNoticeBoard(SqlSessionTemplate sqlSession, String bno) {

		return sqlSession.update("boardMapper.deleteNoticeBoard", bno);
	}


	public int insertReport(SqlSessionTemplate sqlSession, Report r) {
		return sqlSession.update("boardMapper.insertReport", r);
	}


	public ArrayList<Board> topFboardList(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("boardMapper.mainFreeBoardList");
	}


	public ArrayList<Board> topNoticeBoardList(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("boardMapper.mainNoticeBoardList");
	}


	

	
	


	


	

}
