package com.kh.carnping.board.model.service;

import java.util.ArrayList;

import com.kh.carnping.board.model.vo.Board;
import com.kh.carnping.board.model.vo.BoardReply;
import com.kh.carnping.common.model.vo.PageInfo;

public interface BoardService {

	/**
	 *  최신순 버튼
	 */
	ArrayList<Board> selectLastest();
	
	
	/**
     *  무료나눔 게시판 조회
     */
	ArrayList<Board> selectFreeBoardList();
	
	
	/**
     *  무료나눔 게시판 상세조회
     */
	Board selectFreeBoardDetail(String bno);
	
	
	/**
     *  무료나눔 게시판 등록 및 이미지 등록
     */
	int insertFreeBoard(Board b);
	int insertFreeBoardImage(Board b);
	
	/**
	 *  무료나눔 게시판 삭제
	 */
	int deleteFreeBoard(String bno);
	
	
	/**
     *  무료나눔 게시판 수정 및 이미지 수정
     */
	int updateFreeBoard(Board b);
	int updateFreeBoardImage(Board b);
	
	
	
	
	
	
	
	
	
	/**
     *  소모임 게시판 조회
     */
	ArrayList<Board> selectPartyBoardList();
	
	
	/**
     *  소모임 게시판 상세조회
     */
	Board selectPartyBoardDetail(String bno);
	
	
	/**
     *  소모임 게시판 등록
     */
	int partyBoardInsert(Board b);
	
	
	/**
     *  소모임 게시판 삭제
     */
	int deletePartyBoard(String bno);
	
	
	/**
     *  소모임 게시판 수정 및 이미지 수정
     */
	int updatePartyBoard(Board b);
	
	
	
	
	
	
	
	
	
	/**
     *  무료나눔 댓글 리스트 조회
     */
	ArrayList<BoardReply> selectFreeReplyList(String bno);
	
	
	/**
     *  무료나눔 댓글 등록
     */
	int freeReplyInsert(BoardReply r);
	
	
	/**
     *  소모임 댓글 리스트 조회
     */
	ArrayList<BoardReply> selectPartyReplyList(String bno);
	
	
	/**
     *  소모임 댓글 등록
     */
	int partyReplyInsert(BoardReply r);
	
	
	
	
	/**
     *  공지사항 조회
     */
	ArrayList<Board> selectNoticeBoardList();
	
	
	/**
     *  공지사항 상세조회
     */
	Board selectNoticeBoardDetail(String bno);
	
	
	
	/**
     *  공지사항 등록
     */
	int noticeBoardInsert(Board b);
	
	
	/**
     *  공지사항 삭제
     */
	int deleteNoticeBoard(String bno);
	
	
	/**
     *  공지사항 수정
     */
	int updateNoticeBoard(Board b);
	
	
	
	
	
	
}
