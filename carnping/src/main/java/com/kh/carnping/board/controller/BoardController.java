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
}
