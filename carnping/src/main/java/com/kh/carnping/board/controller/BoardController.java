package com.kh.carnping.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.carnping.board.model.service.BoardServiceImpl;



@Controller
public class BoardController {
	
	@Autowired
	private BoardServiceImpl bService;
	
	@RequestMapping("freeBoard.bo")
	public String freeBoard() {
		return "board/freeBoard";
	}
	
	@RequestMapping("freeBoardDetail.bo")
	public String freeBoardDetail() {
		return "board/freeBoardDetail";
	}
	
	@RequestMapping("freeBoardInsert.bo")
	public String freeBoardInsert() {
		return "board/freeBoardInsert";
	}
	
	@RequestMapping("freeBoardUpdate.bo")
	public String freeBoardUpdate() {
		return "board/freeBoardUpdate";
	}
	
	@RequestMapping("partyBoard.bo")
	public String partyBoard() {
		return "board/partyBoard";
	}
	
	@RequestMapping("partyBoardDetail.bo")
	public String partyBoardDetail() {
		return "board/partyBoardDetail";
	}
	
	@RequestMapping("partyBoardInsert.bo")
	public String partyBoardInsert() {
		return "board/partyBoardInsert";
	}
	
	@RequestMapping("partyBoardUpdate.bo")
	public String partyBoardUpdate() {
		return "board/partyBoardUpdate";
	}
}
