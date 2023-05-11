package com.kh.carnping.common.model.vo;

import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;



public class AlarmHandler extends TextWebSocketHandler { //상속

		
	@Override
    public void afterConnectionEstablished(WebSocketSession session) throws Exception {
	 //커넥션이 연결되었을때 클라이언트가 서버에 접속이 성공했을때마다 탐
		//System.out.println("커넥션 연결됨" + session);
    }

    @Override
    protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
        // Handle the message here 소캣에다가 메세지를 보낼때마다 탐
    	
    }


	@Override
    public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
    	//커넥션이 클로즈 됐을 때 

    }
	
}
