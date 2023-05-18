package com.kh.carnping.board.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.carnping.board.model.dao.BoardDao;
import com.kh.carnping.board.model.vo.Board;
import com.kh.carnping.board.model.vo.BoardReply;
import com.kh.carnping.common.model.vo.PageInfo;
import com.kh.carnping.member.model.vo.Report;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	private BoardDao bDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	/**
     *  최신순 버튼
     */
	
	@Override
	public ArrayList<Board> selectLastest() {

		return bDao.selectLastest(sqlSession);
	}

	
    /**
     *  무료나눔 게시판 조회
     */

	@Override
	public ArrayList<Board> selectFreeBoardList() {

		return bDao.selectFreeBoardList(sqlSession);
	}

	
	/**
     *  무료나눔 게시판 상세조회
     */
	
	public Board selectFreeBoardDetail(String bno) {

		return bDao.selectFreeBoardDetail(bno, sqlSession);
	}

	
	/**
     *  무료나눔 게시판 등록
     */
	@Override
	public int insertFreeBoard(Board b) {

		return bDao.insertFreeBoard(sqlSession, b);
	}

	
	/**
     *  무료나눔 게시판 이미지 등록
     */
	@Override
	public int insertFreeBoardImage(Board b) {

		return bDao.insertFreeBoardImage(sqlSession, b);
	}
	
	/**
     *  무료나눔 게시판 수정
     */
	
	@Override
	public int updateFreeBoard(Board b) {

		return bDao.updateFreeBoard(sqlSession, b);
	}
	
	
	/**
     *  무료나눔 게시판 이미지 수정
     */
	@Override
	public int updateFreeBoardImage(Board b) {
		
		return bDao.updateFreeBoardImage(sqlSession, b);
	}

	
	/**
     *  무료나눔 게시판 삭제
     */
	@Override
	public int deleteFreeBoard(String bno) {
		return bDao.deleteFreeBoard(sqlSession, bno);
	}


	
	
	
	
	/**
     *  소모임 게시판 조회
     */
	@Override
	public ArrayList<Board> selectPartyBoardList() {
		
		return bDao.selectPartyBoardList(sqlSession);
	}

	
	/**
     *  소모임 게시판 상세조회
     */
	public Board selectPartyBoardDetail(String bno) {

		return bDao.selectPartyBoardDetail(sqlSession, bno);
	}

	
	/**
     *  소모임 게시판 등록
     */
	
	public int partyBoardInsert(Board b) {

		return bDao.partyBoardInsert(sqlSession, b);
	}


	/**
     *  소모임 게시판 삭제
     */
	@Override
	public int deletePartyBoard(String bno) {
		
		return bDao.deletePartyBoard(sqlSession, bno);
	}
	
	
	/**
     *  소모임 게시판 수정
     */
	@Override
	public int updatePartyBoard(Board b) {

		return bDao.updatePartyBoard(sqlSession, b);
	}

	
	
	
	
	
	
	/**
     *  무료나눔 댓글 리스트 조회
     */
	@Override
	public ArrayList<BoardReply> selectFreeReplyList(String bno) {

		return bDao.selectFreeReplyList(sqlSession, bno);
	}

	
	/**
     *  무료나눔 댓글 등록
     */
	@Override
	public int freeReplyInsert(BoardReply r) {

		return bDao.freeReplyInsert(sqlSession, r);
	}
	
	
	/**
     *  무료나눔 게시판 댓글 삭제
     */
	@Override
	public int freeReplyDelete(String brno) {

		return bDao.freeReplyDelete(sqlSession, brno);
	}

	
	/**
     *  소모임 댓글 리스트 조회
     */
	@Override
	public ArrayList<BoardReply> selectPartyReplyList(String bno) {

		return bDao.selectPartyReplyList(sqlSession, bno);
	}

	
	/**
     *  소모임 댓글 등록
     */
	@Override
	public int partyReplyInsert(BoardReply r) {

		return bDao.partyReplyInsert(sqlSession, r);
	}
	
	
	/**
     *  소모임 게시판 댓글 삭제
     */
	@Override
	public int partyReplyDelete(String brno) {

		return bDao.partyReplyDelete(sqlSession, brno);
	}


	
	
	/**
     *  공지사항 조회
     */
	@Override
	public ArrayList<Board> selectNoticeBoardList() {

		return bDao.selectNoticeBoardList(sqlSession);
	}


	/**
     *  공지사항 상세조회
     */
	@Override
	public Board selectNoticeBoardDetail(String bno) {

		return bDao.selectNoticeBoardDetail(sqlSession, bno);
	}
	
	
	/**
     *  공지사항 등록
     */
	@Override
	public int noticeBoardInsert(Board b) {

		return bDao.noticeBoardInsert(sqlSession, b);
	}

	
	/**
     *  공지사항 삭제
     */
	@Override
	public int deleteNoticeBoard(String bno) {

		return bDao.deleteNoticeBoard(sqlSession, bno);
	}

	
	/**
     *  공지사항 수정
     */
	@Override
	public int updateNoticeBoard(Board b) {

		return bDao.updateNoticeBoard(sqlSession, b);
	}


	public int insertReport(Report r) {
		return bDao.insertReport(sqlSession, r);
	}

	
	

	
	

	
	


	

	
	
	


	


	

	
}
