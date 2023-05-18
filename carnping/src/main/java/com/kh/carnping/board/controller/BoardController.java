package com.kh.carnping.board.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
import com.kh.carnping.board.model.service.BoardServiceImpl;
import com.kh.carnping.board.model.vo.Board;
import com.kh.carnping.board.model.vo.BoardReply;
import com.kh.carnping.member.model.vo.Member;
import com.kh.carnping.member.model.vo.Report;



@Controller
public class BoardController {
	
	@Autowired
	private BoardServiceImpl bService;
	
	public String saveFile(MultipartFile upfile, HttpSession session) {
	     // 파일명 수정 작업 후 서버에 업로드 시키기("flower.png" => "2023033110185578456.png")
        String originName = upfile.getOriginalFilename(); // flower.png
        
        // "20230331101855" (년월일시분초)
        String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
        
        // 랜덤 숫자 5자리
        int ranNum = (int)(Math.random() * 90000 + 10000); // 10000~99999 사이
        
        // 확장자
        String ext = originName.substring(originName.lastIndexOf("."));
        
        // 최종수정명
        String changeName = currentTime + ranNum + ext;
        
        // 업로드 시키고자 하는 폴더의 물리적인 경로를 알아내기
        String savePath = session.getServletContext().getRealPath("/resources/img/board/"); // "/" 쓰면 webapp 가리킨다.
        
        // 서버에 파일을 업로드
        try {
           upfile.transferTo(new File(savePath + changeName));
        } catch (IllegalStateException e) {
           e.printStackTrace();
        } catch (IOException e) {
           e.printStackTrace();
        }
        
        return changeName;
        
  }
	
	
	/**
     *  최신순 버튼
     */
	@RequestMapping("lastest.bo")
	public String selectLastest(Model model) {
		
		ArrayList<Board> list = bService.selectLastest();
		
		if(list != null) {
			model.addAttribute("list", list);
			return "board/freeBoard";
		}else {
			model.addAttribute("errorMsg", "게시글 조회 실패!");
	    	return "common/errorPage";
		}
	}
	
	
	/**
     *  무료나눔 게시판 조회
     */
	@RequestMapping("freeBoard.bo")
	public String selectFreeBoardList(Model model) {
		
		ArrayList<Board> list = bService.selectFreeBoardList();
		
		
		if(list != null) {
			model.addAttribute("list", list);
			return "board/freeBoard";
		}else {
			model.addAttribute("errorMsg", "게시글 조회 실패!");
	    	return "common/errorPage";
		}
		
	}
	
	
	
	/**
     *  무료나눔 게시판 상세조회
     */
	@RequestMapping("freeBoardDetail.bo")
	public String selectFreeBoardDetail(String bno, Model model) {
		
		Board b = bService.selectFreeBoardDetail(bno);

		model.addAttribute("b", b);
		
		return "board/freeBoardDetail";
	}
	
	
	/**
     *  무료나눔 게시판 등록화면 가기
     */
	@RequestMapping("enrollFreeBoardForm.bo")
	public String enrollFreeBoardForm() {
		return "board/freeBoardInsert";
	}
	
	
	/**
     *  무료나눔 게시판 등록 및 이미지 등록
     */
	@RequestMapping("freeBoardInsert.bo")
	public String freeBoardInsert(Board b, MultipartFile upfile[], HttpSession session, Model model) {
		
		for(int i=0; i<upfile.length; i++) {
		}
		
		// System.out.println(upfile);
		// System.out.println(upfile.length);
		//	Member m = (Member)session.getAttribute("loginMember"); 
		//		
		//	b.setMemNo(m.getMemId());
		
		for(int i=0; i<upfile.length; i++) {
			if(!upfile[i].getOriginalFilename().equals("")) { // 첨파있다.
				String changeName = saveFile(upfile[i], session);
				
				switch(i) {
				case 0 : 
					b.setBoardOriginImg1(upfile[0].getOriginalFilename());
					b.setBoardChangeImg1("resources/img/board/" + changeName);
					break;
				case 1 :
					b.setBoardOriginImg2(upfile[1].getOriginalFilename());
					b.setBoardChangeImg2("resources/img/board/" + changeName);
					break;
				case 2 : 
					b.setBoardOriginImg3(upfile[2].getOriginalFilename());
					b.setBoardChangeImg3("resources/img/board/" + changeName);
					break;
				case 3 : 
					b.setBoardOriginImg4(upfile[3].getOriginalFilename());
					b.setBoardChangeImg4("resources/img/board/" + changeName);
					break;
				}
				
				
			}
		}
		
		// System.out.println(b);
		
 		
		
		int result1 = bService.insertFreeBoard(b);
		
		if(result1 > 0) {
			int result2 = bService.insertFreeBoardImage(b);
			
			if(result1 > 0 && result2 > 0) {
				session.setAttribute("alertMsg", "성공적으로 게시글이 등록되었습니다.");
		    	return "redirect:freeBoard.bo";
			}else {
				model.addAttribute("errorMsg", "게시글 등록 실패!");
		    	return "common/errorPage";
			}
		}
		
		return "board/freeBoardInsert";
	}
	
	
	/**
     *  무료나눔 게시판 삭제
     */
	@RequestMapping("freeBoardDelete.bo")
	public String deleteFreeBoard(String bno, String filePath, HttpSession session, Model model) {
		   
	   int result = bService.deleteFreeBoard(bno);
	   
	   
	   if(result > 0) {
		   // 삭제 성공
		   
		   // 첨부파일이 있을 경우 => 파일 삭제
		   if(!filePath.equals("")) { // filePath = "resources/xxx/xxx.jpg"
			   new File(session.getServletContext().getRealPath(filePath)).delete(); // 서버에 업로된 파일 삭제
		   }
		   
		   // 게시판 리스트 페이지 list.bo url 재요청
		   session.setAttribute("alertMsg", "성공적으로 게시글이 삭제되었습니다.");
		   return "redirect:freeBoard.bo";
	   }else {
		   // 삭제 실패
		   // 에러문구 담아서 에러페이지 포워딩(모델!!)
		   model.addAttribute("errorMsg", "게시글 삭제 실패!");
		   return "common/errorPage";
	   }
	   
   }
	
	
	/**
     *  무료나눔 게시판 수정화면 가기
     */
	@RequestMapping("freeBoardUpdateForm.bo")
	public String freeBoardUpdateForm(String bno, Model model) {
		
		model.addAttribute("b", bService.selectFreeBoardDetail(bno));
		return "board/freeBoardUpdate";
	}
	
	
	/**
     *  무료나눔 게시판 수정 및 이미지 수정
     */
	@RequestMapping("freeBoardUpdate.bo")
	public String freeBoardUpdate(Board b, MultipartFile reupfile[], HttpSession session, Model model) {

		for(int i=0; i<reupfile.length; i++) {
		
			String bno = b.getBoardNo();
			Board bt = bService.selectFreeBoardDetail(bno);
			
		
			
			b.setBoardOriginImg1(bt.getBoardOriginImg1());
			b.setBoardOriginImg2(bt.getBoardOriginImg2());
			b.setBoardOriginImg3(bt.getBoardOriginImg3());
			b.setBoardOriginImg4(bt.getBoardOriginImg4());
			
			if(!reupfile[i].getOriginalFilename().equals("")) { // 첨파있다. 사진한장이라도 수정한경우에는 여기
				String changeName = saveFile(reupfile[i], session);
				// System.out.println("제발여기를보세요!!!!!!!");
				// System.out.println(reupfile[0].getOriginalFilename());
				switch(i) {
				case 0 : 
					//if(reupfile[0].getOriginalFilename())
					b.setBoardOriginImg1(reupfile[0].getOriginalFilename());
					b.setBoardChangeImg1("resources/img/board/" + changeName);
					break;
				case 1 :
					b.setBoardOriginImg2(reupfile[1].getOriginalFilename());
					b.setBoardChangeImg2("resources/img/board/" + changeName);
					break;
				case 2 : 
					b.setBoardOriginImg3(reupfile[2].getOriginalFilename());
					b.setBoardChangeImg3("resources/img/board/" + changeName);
					break;
				case 3 : 
					b.setBoardOriginImg4(reupfile[3].getOriginalFilename());
					b.setBoardChangeImg4("resources/img/board/" + changeName);
					break;
				}
				
				System.out.println("==첨바바뀌고 난 뒤 b ====");
				System.out.println(b);
				
				
			}
		}
		
		// System.out.println(b);
		
 		
		
		int result1 = bService.updateFreeBoard(b);
		
		if(result1 > 0) {
			int result2 = bService.updateFreeBoardImage(b);
			
			if(result1 > 0 && result2 > 0) {
				session.setAttribute("alertMsg", "성공적으로 게시글이 수정되었습니다.");
		    	return "redirect:freeBoardDetail.bo?bno=" + b.getBoardNo();
			}else {
				model.addAttribute("errorMsg", "게시글 수정 실패!");
		    	return "common/errorPage";
			}
		}
		
		return "board/freeBoardDetail";
		
	}
	

	
	
	
	
	
	
	/**
     *  소모임 게시판 조회
     */
	@RequestMapping("partyBoard.bo")
	public String selectPartyBoardList(Model model) {

		ArrayList<Board> list = bService.selectPartyBoardList();
		System.out.println(list);
		
		if(list != null) {
			model.addAttribute("list", list);
			return "board/partyBoard";
		}else {
			model.addAttribute("errorMsg", "게시글 조회 실패!");
			return "common/errorPage";
		}
		
	}
	
	
	
	/**
     *  소모임 게시판 상세조회
     */
	@RequestMapping("partyBoardDetail.bo")
	public String selectPartyBoardDetail(String bno, Model model) {
		
		Board b = bService.selectPartyBoardDetail(bno);
		System.out.println("이거임");
		System.out.println(b);
		
		model.addAttribute("b", b);
		
		return "board/partyBoardDetail";
	}
	
	
	
	/**
     *  소모임 게시판 등록화면 가기
     */
	@RequestMapping("enrollPartyBoardForm.bo")
	public String enrollPartyBoardForm() {
		
		return "board/partyBoardInsert";
	}
	
	
	/**
     *  소모임 게시판 등록
     */
	@RequestMapping("partyBoardInsert.bo")
	public String partyBoardInsert(Board b, HttpSession session, Model model) {
		
		int result = bService.partyBoardInsert(b);
		
		if(result > 0) {
			session.setAttribute("alertMsg", "성공적으로 게시글이 등록되었습니다.");
	    	return "redirect:partyBoard.bo";
		}else {
			model.addAttribute("errorMsg", "게시글 등록 실패!");
	    	return "common/errorPage";
		}
	}
	
	
	/**
     *  소모임 게시판 삭제
     */
	@RequestMapping("partyBoardDelete.bo")
	public String deletePartyBoard(String bno, HttpSession session, Model model) {
		   
	   int result = bService.deletePartyBoard(bno);
	   
	   if(result > 0) {
		   session.setAttribute("alertMsg", "성공적으로 게시글이 삭제되었습니다.");
		   return "redirect:partyBoard.bo";
	   }else {
		   model.addAttribute("errorMsg", "게시글 삭제 실패!");
		   return "common/errorPage";
	   }
	   
   }
	
	
	/**
     *  소모임 게시판 수정화면 가기
     */
	@RequestMapping("partyBoardUpdateForm.bo")
	public String partyBoardUpdateForm(String bno, Model model) {
		
		model.addAttribute("b", bService.selectPartyBoardDetail(bno));
		return "board/partyBoardUpdate";
	}
	
	
	/**
     *  소모임 게시판 수정
     */
	@RequestMapping("partyBoardUpdate.bo")
	public String updatePartyBoard(Board b, HttpSession session, Model model) {

 		
		
		int result = bService.updatePartyBoard(b);
		
		if(result > 0) {
			session.setAttribute("alertMsg", "성공적으로 게시글이 수정되었습니다.");
			return "redirect:partyBoardDetail.bo?bno=" + b.getBoardNo();
		}else {
			model.addAttribute("errorMsg", "게시글 수정 실패!");
	    	return "common/errorPage";
		}
		
	}
	
	
	
	
	
	
	/**
     *  무료나눔 댓글 리스트 조회
     */
	@ResponseBody
	@RequestMapping(value="freeReplyList.bo", produces = "application/json; charset=UTF-8")
	public String ajaxSelectFreeReplyList(String bno) {
		   
		ArrayList<BoardReply> list = bService.selectFreeReplyList(bno);
		return new Gson().toJson(list);
		   
	}
	
	
	/**
     *  무료나눔 댓글 등록
     */
	@ResponseBody
	@RequestMapping("freeReplyInsert.bo")
	public String ajaxFreeReplyInsert(BoardReply r) {
		
		int result = bService.freeReplyInsert(r);
		return result > 0 ? "success" : "fail";
	}
	
	
	/**
     *  소모임 댓글 리스트 조회
     */
	@ResponseBody
	@RequestMapping(value="partyReplyList.bo", produces = "application/json; charset=UTF-8")
	public String ajaxSelectPartyReplyList(String bno) {
		   
		ArrayList<BoardReply> list = bService.selectPartyReplyList(bno);
		return new Gson().toJson(list);
		   
	}
	
	
	/**
     *  소모임 댓글 등록
     */
	@ResponseBody
	@RequestMapping("partyReplyInsert.bo")
	public String ajaxPartyReplyInsert(BoardReply r) {
		
		int result = bService.partyReplyInsert(r);
		return result > 0 ? "success" : "fail";
	}
	
	
	
	
	
	
	
	/**
     *  공지사항 등록화면 가기
     */
	@RequestMapping("insertNotice.ad")
	public String enrollNoticeBoardForm() {
		return "admin/insertNotice";
	}
	
	
	
	/**
     *  공지사항 등록
     */
	@RequestMapping("noticeBoardInsert.bo")
	public String noticeBoardInsert(Board b, HttpSession session, Model model) {
		
		int result = bService.noticeBoardInsert(b);
		
		if(result > 0) {
			session.setAttribute("alertMsg", "성공적으로 게시글이 등록되었습니다.");
	    	return "redirect:notice.ad";
		}else {
			model.addAttribute("errorMsg", "게시글 등록 실패!");
	    	return "common/errorPage";
		}
	}
	
	
	/**
     *  공지사항 조회
     */
	@RequestMapping("notice.ad")
	public String selectNoticeBoardList(Model model) {
		
		ArrayList<Board> list = bService.selectNoticeBoardList();
		
		
		if(list != null) {
			model.addAttribute("list", list);
			return "admin/notice";
		}else {
			model.addAttribute("errorMsg", "게시글 조회 실패!");
	    	return "common/errorPage";
		}
		
	}
	
	
	
	/**
     *  공지사항 조회
     */
	@RequestMapping("noticeBoard.bo")
	public String selectNoticeBoardList2(Model model) {
		
		ArrayList<Board> list = bService.selectNoticeBoardList();
		
		
		if(list != null) {
			model.addAttribute("list", list);
			return "board/noticeBoard";
		}else {
			model.addAttribute("errorMsg", "게시글 조회 실패!");
	    	return "common/errorPage";
		}
		
	}
	
	
	/**
     *  공지사항 상세조회
     */
	@RequestMapping("noticeBoardDetail.bo")
	public String selectNoticeBoardDetail(String bno, Model model) {
		
		Board b = bService.selectNoticeBoardDetail(bno);
		
		model.addAttribute("b", b);
		
		return "board/noticeBoardDetail";
	}
	
	
	
	/**
     *  공지사항 수정화면 가기
     */
	@RequestMapping("updateNotice.ad")
	public String noticeBoardUpdateForm(String bno, Model model) {
		
		model.addAttribute("b", bService.selectNoticeBoardDetail(bno));
		return "admin/updateNotice";
	}
	
	
	
	/**
     *  공지사항 수정
     */
	@RequestMapping("noticeBoardUpdate.bo")
	public String updateNoticeBoard(Board b, HttpSession session, Model model) {
		System.out.println("이거타냐?");
		System.out.println(b);
		
		int result = bService.updateNoticeBoard(b);
		System.out.println(result);
		
		if(result > 0) {
			session.setAttribute("alertMsg", "성공적으로 게시글이 수정되었습니다.");
			return "redirect:noticeBoardDetail.bo?bno=" + b.getBoardNo();
		}else {
			model.addAttribute("errorMsg", "게시글 수정 실패!");
	    	return "common/errorPage";
		}
		
	}
	
	
	
	/**
     *  공지사항 삭제
     */
	@RequestMapping("noticeBoardDelete.bo")
	public String deleteNoticeBoard(String bno, HttpSession session, Model model) {
		
		System.out.println("이거타나??");
	   int result = bService.deleteNoticeBoard(bno);
	   
	   if(result > 0) {
		   session.setAttribute("alertMsg", "성공적으로 게시글이 삭제되었습니다.");
		   return "redirect:notice.ad";
	   }else {
		   model.addAttribute("errorMsg", "게시글 삭제 실패!");
		   return "common/errorPage";
	   }
	   
   }
	
	/**
     *  게시글 신고 
     */
	@RequestMapping("report.bo")
	public String reportBoard(Report r, HttpSession session, Model model) {
		System.out.println("타나?");
	   int result = bService.insertReport(r);
	   
	   if(result > 0) {
		   session.setAttribute("alertMsg", "신고 접수 되었습니다. 접수된 신고는 관리자가 검토하여 처리할 예정입니다.");
		   return "redirect:freeBoardDetail.bo";
	   }else {
		   model.addAttribute("errorMsg", "게시글 신고 실패!");
		   return "common/errorPage";
	   }
	   
   }
	
	
	
	
	
	
}
