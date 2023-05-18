package com.kh.carnping.member.controller;

import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.kh.carnping.member.model.service.SmsService;

@RestController
public class SmsController {

    private final SmsService smsService;

    @Autowired
    public SmsController(SmsService smsService) {
        this.smsService = smsService;
    }

    @ResponseBody
    @PostMapping("sms.api")
    public String sendSms(@RequestParam String phoneNumber) {
     
    	
    	String tel = phoneNumber.replaceAll("-", ""); // "-" 문자 제거
    	System.out.println(tel); // 출력: 01011111111
    	
    	
    	SmsService service = new SmsService();
        Random rand = new Random();
        String numStr = "";
        for (int i = 0; i < 6; i++) {
            String ran = Integer.toString(rand.nextInt(10));
            numStr += ran;
        }
        System.out.println("인증번호 => " + numStr);
        System.out.println("전송 전화번호 => " + tel);
        int result = service.send_msg(tel, numStr);  //한달 50개만 무료 찐 사용할떄만 쓰기 
        
        if(result ==202) {
        	//문자보내기 성공했을 때만 랜덤번호 jsp에 전송
        	//System.out.println("리절트값이202");
        	return numStr;
        }else {
        	//문자보내기 실패했을 때는 0값 보내기 
        	//System.out.println("리절트값이 202가 아님");
        	return "0";
        }
        
        //return numStr;
    	
    }

    

    
    
}