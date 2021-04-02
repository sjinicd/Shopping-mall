package pet.message.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;

import org.junit.platform.commons.util.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j;
import pet.member.vo.MemberVO;
import pet.message.service.MsgService;

@Log4j
@Controller
@NoArgsConstructor
public class MsgEchoHandler extends TextWebSocketHandler {
	@Autowired
	MsgService msgService;
	
	//현재 접속중인 모든 세션
	List<WebSocketSession> sessions = new ArrayList<WebSocketSession>();
	Map<String, WebSocketSession> userSessions = new HashMap<String, WebSocketSession>();
	
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
	// 연결 됐을 때
		MemberVO vo = getVo(session);//웹소켓세션 > http세션 > 아이디 값을 받아옴
		log.info("웹소켓 연결 : "+vo.getMember_name());
		sessions.add(session); // 접속될 때마다 담음
		userSessions.put(vo.getMember_name(), session);
	}
	// 세션에 로그인 된 회원정보 가져오기.
	private MemberVO getVo(WebSocketSession session) {
		Hashtable<String, Object> map = new Hashtable<String, Object>();
		Map<String, Object> httpSession = session.getAttributes();
		MemberVO vo = new MemberVO();
		vo = (MemberVO) httpSession.get("login");
		if(vo == null) return null;
		else return vo;
	}
	
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
	// 소켓에 메시지 보냈을 때
		MemberVO vo = getVo(session);
		// 프로토콜 : 메시지 + 보낸 사람 + 받은 사람
		String msg = message.getPayload(); //내가 받은 메시지 내용
		if (!msg.isEmpty()) {
			String[] strs = message.getPayload().split(",");
			log.info("###여기욥 : "+strs);
			if(strs != null && strs.length == 3) {
				String cmd = strs[0];
				String sender = strs[1];
				String receiver = strs[2];
				// 수신자가 현재 세션 중에 존재하면,
				WebSocketSession receiverSession = userSessions.get(receiver);
				if(cmd.equals("msg") && receiverSession != null) {
					TextMessage tmsg = new TextMessage(sender);
					receiverSession.sendMessage(tmsg);
				}
			}
		}
	}
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
	// 커넥션 끊어지면,
	  	sessions.remove(session); 
	  	MemberVO vo = getVo(session);
	  	userSessions.remove(vo.getMember_name());
		log.info("소켓 닫힘 : "+vo.getMember_name()+" , "+status);
	}
	
	
}

