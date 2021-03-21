package pet.member.controller;

import org.apache.commons.mail.HtmlEmail;

import lombok.extern.log4j.Log4j;
import pet.member.vo.MemberVO;

@Log4j
public class MailUtil {
	 //��й�ȣ ã�� �̸��Ϲ߼�
	   public void sendEmail(MemberVO vo) throws Exception {
	   	// Mail Server ����
	   	String charSet = "utf-8";
	   	String hostSMTP = "smtp.naver.com"; //���̹� �̿�� smtp.naver.com
	   	String hostSMTPid = "lsj432988@naver.com";
	   	String hostSMTPpwd = "dltnwls1219";

	   	// ������ ��� EMail, ����, ����
	   	String fromEmail = "lsj432988@naver.com";
	   	String fromName = "����";
	   	String subject = "�����̰� �����ִ� �ӽú��";
	   	String msg = "";

	   	subject = "With My pet �ӽ� ��й�ȣ �Դϴ�.";
   		msg += "<div align='center' style='border:1px solid black; font-family:verdana'>";
   		msg += "<h3 style='color: blue;'>";
   		msg += vo.getMember_name()+"���� �ӽ� ��й�ȣ �Դϴ�. ��й�ȣ�� �����Ͽ� ����ϼ���.</h3>";
   		msg += "<p>�ӽ� ��й�ȣ : ";
   		msg +=  vo.getMember_password() + "</p></div>";
	   	
	   	
	   /*	if(div.equals("getpwSearch")) {
	   		subject = "With My pet �ӽ� ��й�ȣ �Դϴ�.";
	   		msg += "<div align='center' style='border:1px solid black; font-family:verdana'>";
	   		msg += "<h3 style='color: blue;'>";
	   		msg += vo.getMember_name()+"���� �ӽ� ��й�ȣ �Դϴ�. ��й�ȣ�� �����Ͽ� ����ϼ���.</h3>";
	   		msg += "<p>�ӽ� ��й�ȣ : ";
	   		msg +=  vo.getMember_password() + "</p></div>";
	   	}*/

	   	// �޴� ��� E-Mail �ּ�
	   	String mail = vo.getMember_email();
	   	
	   	try {
	   		HtmlEmail email = new HtmlEmail();
	   		email.setDebug(true);
	   		email.setCharset(charSet);
	   		email.setTLS(true);
	   		email.setHostName(hostSMTP);
	   		email.setSmtpPort(587); //���̹� �̿�� 587

	   		email.setAuthentication(hostSMTPid, hostSMTPpwd);
	   		email.setTLS(true);
	   		email.addTo(mail, charSet);
	   		email.setFrom(fromEmail, fromName, charSet);
	   		email.setSubject(subject);
	   		email.setHtmlMsg(msg);
	   		email.send();
	   	} catch (Exception e) {
	   		log.info("���Ϲ߼� ���� : " + e);
	   	}
	   }
}
