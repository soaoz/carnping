package com.kh.carnping.member.controller;

import org.apache.http.HttpStatus;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.kh.carnping.member.model.service.SmsService;

@RestController
public class SmsController {

    private final SmsService smsService;

    @Autowired
    public SmsController(SmsService smsService) {
        this.smsService = smsService;
    }

    @PostMapping("sms.api")
    public ResponseEntity<String> sendSms(@RequestParam String phoneNumber, @RequestParam String message) {
        try {
        	System.out.println(phoneNumber +" , 컨트롤러임 , "+ message);
            smsService.sendSms(phoneNumber, message);
            return ResponseEntity.ok("SMS sent successfully!");
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.status(HttpStatus.SC_INTERNAL_SERVER_ERROR).body("Failed to send SMS!");
        }
    }

}