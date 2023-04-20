package com.kh.carnping.board.model.service;

import java.util.ArrayList;

import com.kh.carnping.board.model.vo.Board;
import com.kh.carnping.common.model.vo.PageInfo;

public interface BoardService {

	// 1. 게시판 리스트 페이지 서비스 (페이징)
	int selectListCount(); // 페이징 처리를 위해 전체 개수를 리턴하는 메소드
	ArrayList<Board> selectList(PageInfo pi);
}
