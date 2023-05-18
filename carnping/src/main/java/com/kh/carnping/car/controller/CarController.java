package com.kh.carnping.car.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
import com.kh.carnping.board.model.vo.Comment;
import com.kh.carnping.car.model.service.CarServiceImpl;
import com.kh.carnping.car.model.vo.Cinfo;
import com.kh.carnping.car.model.vo.CinfoImg;
import com.kh.carnping.car.model.vo.Filter;
import com.kh.carnping.car.model.vo.Review;
import com.kh.carnping.car.model.vo.Verify;
import com.kh.carnping.car.model.vo.VerifyImg;
import com.kh.carnping.common.template.SaveFile;

@Controller
public class CarController {

	@Autowired
	private CarServiceImpl cService;

	// 차박 정보 리스트
	@RequestMapping("carList.ca")
	public String carList(Model model) {
		ArrayList<Cinfo> list = cService.carList();
		if (!list.isEmpty()) {
			model.addAttribute("list", list);
			return "car/carList";
		} else {
			model.addAttribute("emp", "현재 리스트가 비어있습니다.");
			model.addAttribute("list", list);
			return "car/carList";
		}
	}

	// 차박 정보 리스트 (필터기능)
	@RequestMapping("filter.ca")
	public String filterList(Filter filter, Model model) {
		ArrayList<Cinfo> list = cService.filterList(filter);
		if (!list.isEmpty()) {
			model.addAttribute("filter", filter);
			model.addAttribute("list", list);
			return "car/carList";
		} else {
			model.addAttribute("list", list);
			model.addAttribute("filter", filter);
			model.addAttribute("emp", "현재 리스트가 비어있습니다.");
			return "car/carList";
		}
	}

	// 차박 상세정보로 이동
	@RequestMapping("detail.ca")
	public String selectDetail(String cinfoNo, Model model) {
		Cinfo cinfo = cService.selectDetail(cinfoNo);
		Review reCount = cService.selectReviewCount(cinfoNo);
		String[] week = { "월", "화", "수", "목", "금", "토", "일" };
		String[] facilities = { "화장실", "편의점", "카페", "마트", "음식점", "주차장", "캠핑장", "병원" };
		String[] tags = { "강", "공원", "노지", "바다", "산", "섬", "숲", "캠핑장" };
		model.addAttribute("facilities", facilities);
		model.addAttribute("week", week);
		model.addAttribute("cinfo", cinfo);
		model.addAttribute("tags", tags);
		model.addAttribute("reCount", reCount);
		return "car/carDetail";
	}

// 리뷰 체크
	@ResponseBody
	@RequestMapping(value = "reviewCheck.ca", produces = "application/json;charset=utf-8")
	public String reviewCheck(String memNo, String cinfoNo) {
		int result = cService.reviewCheck(memNo, cinfoNo);
		System.out.println(result);
		return new Gson().toJson(result);
	}

	// 리뷰 리스트
	@ResponseBody
	@RequestMapping(value = "selectReview.ca", produces = "application/json; charset=utf-8")
	public String selectReview(String cinfoNo) {
		ArrayList<Review> review = cService.selectReview(cinfoNo);
		return new Gson().toJson(review);
	}

	// 리뷰 등록
	@RequestMapping(value = "insertReview.ca")
	public String insertReview(Review review, MultipartFile upfile, HttpSession session, Model model) {
		System.out.println(upfile);
		String ext = ".png .PNG .jpg .JPG";
		if (upfile != null && !upfile.getOriginalFilename().equals("")) {
			if (ext.contains(upfile.getOriginalFilename().substring(upfile.getOriginalFilename().lastIndexOf(".")))) {
				String changeName = new SaveFile().saveFile(upfile, session);
				review.setReviewImg("resources/img/reviewImg/" + changeName);
			} else {
				model.addAttribute("msg", "파일형식이 잘못되었습니다.");
				return new Gson().toJson("파일형식이 잘못되었습니다.");
			}
		}
		int result = cService.insertReview(review);
		return "redirect:detail.ca?cinfoNo=" + review.getReviewNo();
	}

	// 리뷰 삭제
	@ResponseBody
	@RequestMapping(value = "deleteReview.ca", produces = "application/json;charset=utf-8")
	public String deleteReview(String reNo) {
		int result = cService.deleteReview(reNo);
		return new Gson().toJson(result);
	}

	// 리뷰 댓글 리스트
	@ResponseBody
	@RequestMapping(value = "selectReviewComment.ca", produces = "application/json; charset=utf-8")
	public String selectComment(String reNo) {
		ArrayList<Comment> comment = cService.selectReviewComment(reNo);
		return new Gson().toJson(comment);
	}

	// 리뷰 좋아요 체크
	@ResponseBody
	@RequestMapping(value = "reviewLike.ca", produces = "application/json;charset=utf-8")
	public String reviewLikeCheck(String reNo, String memNo) {
		int result = cService.reviewLikeCheck(reNo, memNo);
		System.out.println(reNo);
		System.out.println(memNo);
		return new Gson().toJson(result);
	}

	// 리뷰 좋아요
	@ResponseBody
	@RequestMapping(value = "like.ca", produces = "application/json;charset=utf-8")
	public String reviewLike(String reNo, int rs, String memNo) {
		int result = 0;
		System.out.println(reNo);
		System.out.println("rs" + rs);
		System.out.println("memNo " + memNo);
		if (rs > 0) {
			// 좋아요가 있을 때
			result = cService.deleteReviewLike(reNo, memNo);
		} else {
			result = cService.insertReviewLike(reNo, memNo);
		}
		return new Gson().toJson(result);
	}

	// 리뷰 댓글 등록
	@ResponseBody
	@RequestMapping(value = "reviewComment.ca", produces = "application/json;charset=utf-8")
	public String insertComment(String reNo, String memNo, String text) {
		int result = cService.insertComment(reNo, memNo, text);
		return new Gson().toJson(result);
	}

	// 차박지 등록으로 이동
	@RequestMapping("insertCarEnroll.ca")
	public String insertCarEnroll() {
		return "car/insertCar";
	}

	// 차박 등록
	@RequestMapping(value = "insertCarRequest.ca")
	public String insertCarRequest(Verify verify, MultipartFile[] upfile, Model model, HttpSession session) {
		VerifyImg verifyImg = new VerifyImg();
		
		verify.setVerifyContent(checkString(verify.getVerifyContent()));
		verify.setVerifyNotice(checkString(verify.getVerifyNotice()));
		verify.setVerifyReason(checkString(verify.getVerifyReason()));
		
		// 태그 변수
		if (verify.getVerifyFacilitie() != null) {
			String verifyFacilitie = String.join(",", verify.getVerifyFacilitie());
			verify.setVerifyFacilities(verifyFacilitie);
		} else {
			verify.setVerifyFacilities("");
		}
		if (verify.getVerifyDay() != null) {
			String verifyDay = String.join(",", verify.getVerifyDay());
			verify.setVerifyDays(verifyDay);
		} else {
			verify.setVerifyDays("");
		}
		if (verify.getVerifyTags() != null) {
			String verifyTags = String.join(",", verify.getVerifyTags());
			verify.setVerifyTag(verifyTags);
		} else {
			verify.setVerifyTag("");
		}
		
		
		for (int i = 0; i < upfile.length; i++) {
			if (!upfile[i].getOriginalFilename().equals("")) {
				String changeName = new SaveFile().carFile(upfile[i], session);
				switch (i) {
				case 0:
					verifyImg.setVerifyOgImg1(upfile[i].getOriginalFilename());
					verifyImg.setVerifyImg1("resources/img/carImg/" + changeName);
					break;
				case 1:
					verifyImg.setVerifyOgImg2(upfile[i].getOriginalFilename());
					verifyImg.setVerifyImg2("resources/img/carImg/" + changeName);
					break;
				case 2:
					verifyImg.setVerifyOgImg3(upfile[i].getOriginalFilename());
					verifyImg.setVerifyImg3("resources/img/carImg/" + changeName);
					break;
				case 3:
					verifyImg.setVerifyOgImg4(upfile[i].getOriginalFilename());
					verifyImg.setVerifyImg4("resources/img/carImg/" + changeName);
					break;
				case 4:
					verifyImg.setVerifyOgImg5(upfile[i].getOriginalFilename());
					verifyImg.setVerifyImg5("resources/img/carImg/" + changeName);
					break;
				case 5:
					verifyImg.setVerifyOgImg6(upfile[i].getOriginalFilename());
					verifyImg.setVerifyImg6("resources/img/carImg/" + changeName);
					break;
				case 6:
					verifyImg.setVerifyOgImg7(upfile[i].getOriginalFilename());
					verifyImg.setVerifyImg7("resources/img/carImg/" + changeName);
					break;
				case 7:
					verifyImg.setVerifyOgImg8(upfile[i].getOriginalFilename());
					verifyImg.setVerifyImg8("resources/img/carImg/" + changeName);
					break;
				case 8:
					verifyImg.setVerifyOgImg9(upfile[i].getOriginalFilename());
					verifyImg.setVerifyImg9("resources/img/carImg/" + changeName);
					break;
				case 9:
					verifyImg.setVerifyOgImg10(upfile[i].getOriginalFilename());
					verifyImg.setVerifyImg10("resources/img/carImg/" + changeName);
					break;
				default:
					break;
				}
			}
		}

		int result1 = cService.insertCarRequest(verify);
		int result2 = cService.insertCarImgRequest(verifyImg);
		System.out.println(result1);
		System.out.println(result2);
		System.out.println(verify.getMemNo());
		return "main";
	}
	
	public String checkString(String str) {
		str = str.replace("\"", "'");
		str = str.replace("\n", "");
		return str;
	}

	// 차박 삭제 요청
	@ResponseBody
	@RequestMapping(value = "deleteRequest.ca", produces = "application/json;charset=utf-8")
	public String deleteRequest(Cinfo cinfo, String result, String loginMember, Model model) {
		int count = cService.checkRequest(loginMember);
		int rs = 0;
		System.out.println(cinfo);
		if (count > 0) {
			return new Gson().toJson("이미 삭제, 수정, 등록이 요청되어있는 아이디입니다.");
		} else {
			HashMap<String, Object> map = new HashMap<>();
			map.put("cinfo", cinfo);
			map.put("result", result);
			map.put("loginMember", loginMember);

			rs = cService.deleteRequest(map);
			if (rs > 0) {
				return new Gson().toJson("삭제요청이 완료되어있습니다.");
			} else {
				return new Gson().toJson("삭제요청도중 오류발생");
			}
		}
	}

	@RequestMapping("updateRequest.ca")
	public String updateRequest(String cinfoNo, Model model) {
		Cinfo cinfo = cService.selectDetail(cinfoNo);
		model.addAttribute("cinfo", cinfo);
		return "car/updateCar";
	}

	// 차박 수정 요청
	@RequestMapping("updateCar.ca")
	public String updateCar(Verify verify, MultipartFile[] upfile, Model model, HttpSession session) {
		VerifyImg verifyImg = new VerifyImg();
		
		verifyImg.setVerifyImg1(verify.getVerifyImg1());
		verifyImg.setVerifyImg2(verify.getVerifyImg2());
		verifyImg.setVerifyImg3(verify.getVerifyImg3());
		verifyImg.setVerifyImg4(verify.getVerifyImg4());
		verifyImg.setVerifyImg5(verify.getVerifyImg5());
		verifyImg.setVerifyImg6(verify.getVerifyImg6());
		verifyImg.setVerifyImg7(verify.getVerifyImg7());
		verifyImg.setVerifyImg8(verify.getVerifyImg8());
		verifyImg.setVerifyImg9(verify.getVerifyImg9());
		verifyImg.setVerifyImg10(verify.getVerifyImg10());
		
		verifyImg.setVerifyOgImg1(verify.getVerifyOgImg1());
		verifyImg.setVerifyOgImg2(verify.getVerifyOgImg2());
		verifyImg.setVerifyOgImg3(verify.getVerifyOgImg3());
		verifyImg.setVerifyOgImg4(verify.getVerifyOgImg4());
		verifyImg.setVerifyOgImg5(verify.getVerifyOgImg5());
		verifyImg.setVerifyOgImg6(verify.getVerifyOgImg6());
		verifyImg.setVerifyOgImg7(verify.getVerifyOgImg7());
		verifyImg.setVerifyOgImg8(verify.getVerifyOgImg8());
		verifyImg.setVerifyOgImg9(verify.getVerifyOgImg9());
		verifyImg.setVerifyOgImg10(verify.getVerifyOgImg10());
		
		if (verify.getVerifyFacilitie() != null) {
			String verifyFacilitie = String.join(",", verify.getVerifyFacilitie());
			verify.setVerifyFacilities(verifyFacilitie);
		} else {
			verify.setVerifyFacilities("");
		}
		if (verify.getVerifyDay() != null) {
			String verifyDay = String.join(",", verify.getVerifyDay());
			verify.setVerifyDays(verifyDay);
		} else {
			verify.setVerifyDays("");
		}
		if (verify.getVerifyTags() != null) {
			String verifyTags = String.join(",", verify.getVerifyTags());
			verify.setVerifyTag(verifyTags);
		} else {
			verify.setVerifyTag("");
		}
		for (int i = 0; i < upfile.length; i++) {
			if (!upfile[i].getOriginalFilename().equals("")) {
				String changeName = new SaveFile().carFile(upfile[i], session);
				switch (i) {
				case 0:
					verifyImg.setVerifyOgImg1(upfile[i].getOriginalFilename());
					verifyImg.setVerifyImg1("resources/img/carImg/" + changeName);
					break;
				case 1:
					verifyImg.setVerifyOgImg2(upfile[i].getOriginalFilename());
					verifyImg.setVerifyImg2("resources/img/carImg/" + changeName);
					break;
				case 2:
					verifyImg.setVerifyOgImg3(upfile[i].getOriginalFilename());
					verifyImg.setVerifyImg3("resources/img/carImg/" + changeName);
					break;
				case 3:
					verifyImg.setVerifyOgImg4(upfile[i].getOriginalFilename());
					verifyImg.setVerifyImg4("resources/img/carImg/" + changeName);
					break;
				case 4:
					verifyImg.setVerifyOgImg5(upfile[i].getOriginalFilename());
					verifyImg.setVerifyImg5("resources/img/carImg/" + changeName);
					break;
				case 5:
					verifyImg.setVerifyOgImg6(upfile[i].getOriginalFilename());
					verifyImg.setVerifyImg6("resources/img/carImg/" + changeName);
					break;
				case 6:
					verifyImg.setVerifyOgImg7(upfile[i].getOriginalFilename());
					verifyImg.setVerifyImg7("resources/img/carImg/" + changeName);
					break;
				case 7:
					verifyImg.setVerifyOgImg8(upfile[i].getOriginalFilename());
					verifyImg.setVerifyImg8("resources/img/carImg/" + changeName);
					break;
				case 8:
					verifyImg.setVerifyOgImg9(upfile[i].getOriginalFilename());
					verifyImg.setVerifyImg9("resources/img/carImg/" + changeName);
					break;
				case 9:
					verifyImg.setVerifyOgImg10(upfile[i].getOriginalFilename());
					verifyImg.setVerifyImg10("resources/img/carImg/" + changeName);
					break;
				default:
					break;
				}
			}
		}
		int result1 = cService.updateCarRequest(verify);
		int result2 = cService.updateCarImgRequest(verifyImg);
		return "main";
	}
}
