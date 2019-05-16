package com.spring.service;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import com.spring.domain.passwordVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class PasswordService {

    public void PasswordRelivalance(passwordVO vo) throws AddressException, MessagingException{
   	 
        log.info("패스워드 보내기 실행입니다.~!!");
        final String user = vo.getUser();
		final String passwordd = vo.getPasswordd();
        Properties props = new Properties();
        props.put("mail.host", vo.getHost());
        props.put("mail.smtp.auth", "true");
        props.put("mail.transport.protocol", "smtp");
       

        Session session = Session.getDefaultInstance(props, new Authenticator() {
			  protected PasswordAuthentication getPasswordAuthentication() {
				  return new PasswordAuthentication(user, passwordd);
			  }
		  });


        MimeMessage message = new MimeMessage(session);
        message.setSubject("임시 비밀번호가 발급되었습니다.");
        message.setFrom(new InternetAddress(user));
        message.setContent("<h1>"+"임시 비밀번호 5자리가 발급되었습니다."
        		+"<br>"+ "로그인 이후에 '반드시' 비밀번호를 바꿔주세요"+"</h1>"
                +"<br>"+"<h2>"+ vo.getPassword()+"</h2>",
                "text/html;charset=UTF-8");
        message.addRecipient(Message.RecipientType.TO,
             new InternetAddress(vo.getEmail()));

        Transport.send(message);


        }
}
