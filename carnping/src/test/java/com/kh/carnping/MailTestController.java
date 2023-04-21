package com.kh.carnping;



import java.io.File;

import javax.mail.internet.MimeMessage;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.test.context.ContextConfiguration;

import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import org.springframework.test.context.web.WebAppConfiguration;


@WebAppConfiguration 
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")

public class MailTestController {


	@Autowired
	ApplicationContext context;
	
   @Autowired
   JavaMailSenderImpl mailSender;
   
   // MimeMessage 객체를 직접 생성하여 메일을 발송하는 방법
   @Test
   public void mailSendTest() throws Exception{
       
       
       String subject = "test 인증코드";
       String content = "메일 테스트 내용" + "<img src=\"https://t1.daumcdn.net/cfile/tistory/214DCD42594CC40625\">";
       String from = "Carnping <chadollbagi@gmail.com>";
       String to = "chadollbagi@gmail.com";
       
       try {
           MimeMessage mail = mailSender.createMimeMessage();
           MimeMessageHelper mailHelper = new MimeMessageHelper(mail, true, "UTF-8");
           
           mailHelper.setFrom(from);
           mailHelper.setTo(to);
           mailHelper.setSubject(subject);
           mailHelper.setText(content, true);
           
           FileSystemResource file = new FileSystemResource(new File("D:\\test.txt")); 
           mailHelper.addAttachment("test.txt", file);            
           
           mailSender.send(mail);
           
       } catch(Exception e) {
           e.printStackTrace();
       }
       
   }
   
  
   
   
}