package com.kh.carnping.admin.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.carnping.admin.model.service.AdminServiceImpl;
import com.kh.carnping.member.model.vo.Member;

@Controller
public class AdminController {

	
	@Autowired
	private AdminServiceImpl aService; 
	
	/**
	 * 관리자 페이지 이동
	 */
	@RequestMapping("admin.ad")
	public String adminPage() {
		return "admin/menubar";
	}
	
	
	/**
	 * 회원관리로 이동
	 */
	@RequestMapping("member.ad")
	public String memNotice(Model model) {
		ArrayList<Member> list = aService.memNotice();
		if(!list.isEmpty()) {
			model.addAttribute("list", list);
			return "admin/member";
		}else {
			model.addAttribute("errorMsg", "회원이 없습니다.");
			return "admin/member";
		}
		
	}
	
	/**
	 * 신고 및 정지관리로 이동
	 */
	@RequestMapping("memReport.ad")
	public String memReport() {
		return "admin/memReport";
	}
	
	/**
	 * 차박게시글 관리로 이동
	 */
	@RequestMapping("carList.ad")
	public String carList() {
		return "admin/carList";
	}
	
	/**
	 * 차박게시글 검수 관리로 이동
	 */
	@RequestMapping("verity.ad")
	public String carVerity() {
		return "admin/verity";
	}
	
	/**
	 * 커뮤니티게시글 관리로 이동
	 */
	@RequestMapping("board.ad")
	public String board() {
		return "admin/board";
	}
	
	/**
	 * 공지사항 관리로 이동
	 */
	@RequestMapping("notice.ad")
	public String notice() {
		return "admin/notice";
	}
	
	/**
	 * Qna 관리로 이동
	 */
	@RequestMapping("inquiryList.ad")
	public String inquiryList() {
		return "admin/inquiryList";
	}

	//----------------------
	
	/**
	 * 회원관리/회원수정으로 이동
	 */
	@RequestMapping("memEdit.ad")
	public String memEdit() {
		return "admin/memEdit";
	}
	
	/**
	 * 차박게시글/차박 게시글 수정 및 상세정보로 이동
	 */
	@RequestMapping("carDetail.ad")
	public String carDetail() {
		return "admin/carDetail";
	}
	
	/**
	 * 공지사항관리/ 공지사항 수정으로 이동
	 */
	@RequestMapping("updateNotice.ad")
	public String updateNotice() {
		return "admin/updateNotice";
	}

	/**
	 * 공지사항관리/ 공지사항 등록으로 이동
	 */
	@RequestMapping("insertNotice.ad")
	public String insertNotice() {
		return "admin/insertNotice";
	}
	
	/**
	 * 차박게시글 등록 검수로 이동
	 */
	@RequestMapping("insertVerity.ad")
	public String insertVerity() {
		return "admin/insertVerity";
	}	
	
	/**
	 * 차박게시글 수정 검수로 이동
	 */
	@RequestMapping("updateVerity.ad")
	public String updateVerity() {
		return "admin/updateVerity";
	}

	/**
	 * QnA 답변하기
	 */
	@RequestMapping("inquiryInsert.ad")
	public String inquiryInsert() {
		return "admin/inquiryInsert";
	}
	
	// ------------------------------
	/**
	 * 회원관리/회원수정으로 이동
	 */
	@ResponseBody
	@RequestMapping("memDelete.ad")
	public String memDelete(Member m, String memNo, HttpSession session) {
		m.setMemNo(memNo);
		int result = aService.deleteMember(m);
		System.out.println(result);
        if(result >0){
        	return "success";
        }else{
        	return "failure";
        }
	}
	
	@ResponseBody
	@RequestMapping("memSelect.ad")
	public void memSelect(String memNo, HttpSession session) {
		Member m  = aService.selectMember(memNo);

	}
	

	
}
