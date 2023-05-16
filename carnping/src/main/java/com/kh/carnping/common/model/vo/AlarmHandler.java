package com.kh.carnping.common.model.vo;

import java.util.HashMap;
import java.util.Map;

import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.kh.carnping.member.model.vo.Member;



public class AlarmHandler extends TextWebSocketHandler { //상속

		
	Map<String, WebSocketSession> userSessions = new HashMap<String, WebSocketSession>();
	
	@Override
    public void afterConnectionEstablished(WebSocketSession session) throws Exception {
	 //커넥션이 연결되었을때 클라이언트가 서버에 접속이 성공했을때마다 탐
		System.out.println("커넥션 연결됨" + session);
		 String senderId = getId(session);
		 System.out.println("커넥션 연결되고아이디 " + senderId);
		 userSessions.put(senderId, session); // 연결된 사용자의 아이디가 들어갈것임 
    }



	@Override
    protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
        // Handle the message here 소캣에다가 메세지를 보낼때마다 탐
    	System.out.println("handleTextMessage" + session+ " : " + message);
		 String senderId = getId(session);
		 
	    //protocol : cmd 커맨드 , 댓글 작성자, 게시글작성자, 게시글번호  (reply, user2, user1, 234)
		 //protocol : cmd 커맨드 , 좋아요 한 사람, 좋아요게시글작성자, 게시글번호  (reply, user2, user1, 234)
	    	String msg = message.getPayload();
	    	System.out.println("msg :: " + msg);
	    	
	    	if(msg != null) {
	    		String[] strs = message.getPayload().split(",");
	    		if(strs != null && strs.length ==4) {
	    			String cmd = strs[0];
	    			String likeMember = strs[1];
	    			String boardWriter = strs[2]; 
	    			String cinfoNo = strs[3];
	    			
	    			//접속한 유저들은 UserSessions에 있음
	    			WebSocketSession boardWriterSession =  userSessions.get(boardWriter);//게시글 작성자가 세션에 존재하면 
	    			
	    			if ("like".equals(cmd)&&boardWriterSession != null) {
	    				TextMessage tmpMsg  = new TextMessage( "다른 사용자가 " + cinfoNo + "번 좋아요를 했습니다.");
	    				boardWriterSession.sendMessage(tmpMsg);
	    			}else {
	    				System.out.println("오프라인");
	    			}
	    		}
	    	}
    }

    private String getId(WebSocketSession session) {
    	Map<String, Object> httpSession = session.getAttributes();
    	Member loginUser = (Member)httpSession.get("loginMember");
    	System.out.println(loginUser + "웹소켓 겟 아이디 로그인 유저 ");
    	
    	if(loginUser == null) {
    		System.out.println("세션점겟아이디 : " +session.getId());
    		return session.getId();
    	}else {
    		System.out.println("로그인유저점점겟아이디 : " +loginUser.getMemNo());
    		return loginUser.getMemNo();
    	}
    	
	}

	@Override
    public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
    	//커넥션이 클로즈 됐을 때 

    }
	
}
