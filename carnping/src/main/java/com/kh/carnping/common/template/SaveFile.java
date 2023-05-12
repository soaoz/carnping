package com.kh.carnping.common.template;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.web.multipart.MultipartFile;

public class SaveFile {
	public String saveFile(MultipartFile upfile, HttpSession session) {
		String originName = upfile.getOriginalFilename(); // flower.png
		
		
		String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		
		int ranNum = (int)(Math.random()* 90000 + 10000); // 10000~ 99999 �궗�씠
		
		String ext =  originName.substring(originName.lastIndexOf(".")); // lastIndexOf 留덉�留� . �쓣 李얠븘 �옒�씪以��떎.
		
		String changeName = currentTime + ranNum + ext;
		
		String savePath = session.getServletContext().getRealPath("/resources/img/reviewImg/"); // "/" �벐硫� webapp 媛�由ы궓�떎.
		
		try {
			upfile.transferTo(new File(savePath + changeName));
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		return changeName;
	}
}
