package pet.message.controller;

import java.util.ArrayList;
import java.util.Hashtable;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import pet.member.vo.MemberVO;
import pet.message.service.MsgService;
import pet.message.vo.MemberReview;
import pet.message.vo.Msg;
import pet.message.vo.MsgListResult;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("msg")
public class MsgController {
	MsgService msgService;
	
	// 메시지 메인화면
	@RequestMapping("chat.do")
	public ModelAndView chat(HttpServletRequest request, HttpSession session, 
	@RequestParam (defaultValue="0", required=false) long member_number) {
		MemberVO vo = (MemberVO) session.getAttribute("login"); // 세션에서 로그인 정보 받기
		Hashtable<String, Object> map = new Hashtable<String, Object>();
		// 특정 상대를 정해서 메세지창으로 넘어오는 경우
		if(member_number != 0) map.put("directMember",member_number);
		// 대화 목록 가져오기.
		MsgListResult msgLists = msgService.getAllMsgList(vo.getMember_number());
		map.put("msgLists",msgLists);
		ModelAndView mv = new ModelAndView("message/chat","map",map);
		return mv;
	}
	
	// 메시지 상대 선택, 해당 상대와의 메시지 읽음 처리, ajax
	@GetMapping(value="selectChat.do", produces = {MediaType.APPLICATION_JSON_UTF8_VALUE, MediaType.APPLICATION_XML_VALUE})
	public @ResponseBody Hashtable<String, Object> selectChat(HttpSession session, long sender_number) {
		Hashtable<String, Object> map = new Hashtable<String, Object>();
		MemberVO vo = (MemberVO) session.getAttribute("login");
		String type = null;
		// 대화 상대, 내역 불러오기, 안읽은 메시지
		MsgListResult msgLists = msgService.getAllMsgList(vo.getMember_number());
		MsgListResult detailLists = msgService.getMsgList(vo.getMember_number(), sender_number);
		long unread = msgService.msgRead(vo.getMember_number(), sender_number);
		map.put("msgLists",msgLists); 
		map.put("detailLists",detailLists);
		map.put("unread",unread);
		// 해당 상대와의 대화 타입 구분
		if(msgLists == null) type = "no";
		else if(msgLists != null && detailLists.getChatList().size() == 0) type = "yet";
		else if(msgLists != null && detailLists.getChatList().size() != 0) type = "Chat";
		map.put("type",type);
   	    // 해당 상대와의 미작성 후기 검색
   	    MemberReview walk = msgService.selectRecentWalk(vo.getMember_number(), sender_number);
   	    if(walk != null) {
   	    	map.put("walk",walk);
   	    	log.info("######작성안한산책있음 :"+walk);
   	    }
	    map.put("senderName",msgService.getSenderName(sender_number));
		map.put("senderNumber",sender_number);
		map.put("myName",vo.getMember_name());
		String senderPic = msgService.getSenderPic(sender_number);
		map.put("senderPic",senderPic);
		return map;
   	    
	}
	
	// 메시지 전송, ajax
	@GetMapping(value="sendChat.do", produces = {MediaType.APPLICATION_JSON_UTF8_VALUE, MediaType.APPLICATION_XML_VALUE})
	public @ResponseBody Hashtable<String, Object> sendChat(HttpSession session, long sender_number, String msg_content) {
		Hashtable<String, Object> map = new Hashtable<String, Object>();
		MemberVO vo = (MemberVO) session.getAttribute("login");
		String type = null;
		// 메시지 insert
		if(msg_content != null && msg_content.length()>0) {
			Msg msg = new Msg(vo.getMember_number(), sender_number, msg_content);
			msgService.insertMsg(msg);
		}
		// 대화상대목록, 안읽은 메시지, 대화내역
		MsgListResult msgLists = msgService.getAllMsgList(vo.getMember_number());
		MsgListResult detailLists = msgService.getMsgList(vo.getMember_number(), sender_number);
		long unread = msgService.msgRead(vo.getMember_number(), sender_number);
		map.put("msgLists",msgLists); 
		map.put("detailLists",detailLists);
		map.put("unread",unread);
		// 해당 상대와의 대화 타입 구분
		if(msgLists == null) type = "no";
		else if(msgLists != null && detailLists.getChatList().size() == 0) type = "yet";
		else if(msgLists != null && detailLists.getChatList().size() != 0) type = "Chat";
		map.put("type",type);
   	    // 해당 상대와의 미작성 후기 검색
   	    MemberReview walk = msgService.selectRecentWalk(vo.getMember_number(), sender_number);
   	    if(walk != null) map.put("walk",walk);
	    map.put("senderName",msgService.getSenderName(sender_number));
		map.put("senderNumber",sender_number);
		map.put("myName",vo.getMember_name());
		String senderPic = msgService.getSenderPic(sender_number);
		map.put("senderPic",senderPic);
		return map;
	}
	
	// 메시지 수신 시 1:1 대화창 갱신, ajax
	@GetMapping(value="refreshChat.do", produces = {MediaType.APPLICATION_JSON_UTF8_VALUE, MediaType.APPLICATION_XML_VALUE})
	public @ResponseBody Hashtable<String, Object> refreshChat(HttpSession session, long sender_number) {
		Hashtable<String, Object> map = new Hashtable<String, Object>();
		MemberVO vo = (MemberVO) session.getAttribute("login");
		// 안읽은 메시지 갱신
		long count = msgService.msgRead(vo.getMember_number(), sender_number);
		session.setAttribute("unread", count);
		// 대화내역 갱신
		MsgListResult detailLists = msgService.getMsgList(vo.getMember_number(), sender_number);
		map.put("detailLists",detailLists);
		map.put("senderNumber",sender_number);
		map.put("unread",count);
		return map;
	}
	
	// 산책 후기 한줄평 insert, ajax
	@GetMapping(value="writeReview.do", produces = {MediaType.APPLICATION_JSON_UTF8_VALUE, MediaType.APPLICATION_XML_VALUE})
	public @ResponseBody void writeReview(HttpSession session,long walk_idx, long sender_number, String content) {
		MemberVO vo = (MemberVO) session.getAttribute("login");
		MemberReview memberReview = msgService.selectRecentWalk(vo.getMember_number(), sender_number);
		memberReview.setMember_review(content);
		msgService.writeReview(memberReview, vo.getMember_number());
	}
	
	// 안 읽은 메시지 개수 체크
	@GetMapping(value="unreadCheck.do", produces = {MediaType.APPLICATION_JSON_UTF8_VALUE, MediaType.APPLICATION_XML_VALUE})
	public @ResponseBody void unreadCheck(HttpSession session) {
		MemberVO vo = (MemberVO) session.getAttribute("login");
		long unread = msgService.getUnreadMsg(vo.getMember_number());
		session.setAttribute("unread", unread);
	}
	
	// 회원 검색
	@GetMapping(value="searchMember.do", produces = {MediaType.APPLICATION_JSON_UTF8_VALUE, MediaType.APPLICATION_XML_VALUE})
	public @ResponseBody Hashtable<String, Object> searchMember(HttpSession session, String member_name) {
		MemberVO vo = (MemberVO) session.getAttribute("login");
		member_name = member_name.trim();
		Hashtable<String, Object> map = msgService.getMemberByName(vo.getMember_number(), member_name);
		return map;
	}
	
	// (메시지 수신 시) 안읽은 메시지 카운트 +1
	@GetMapping(value="receiveMsg.do", produces = {MediaType.APPLICATION_JSON_UTF8_VALUE, MediaType.APPLICATION_XML_VALUE})
	public @ResponseBody long receiveMsg(HttpSession session, long member_number) {
		long count = msgService.getUnreadMsg(member_number);
		session.setAttribute("unread",count);
		log.info("################안읽은거 : "+count);
		return count;
	}
	
}
