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

import com.spring.domain.EmailVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class EmailService {

     public void sendImage(EmailVO vo) throws AddressException, MessagingException{
    	 
		        log.info("이미지 보내기 실행~!!");
		        final String user = vo.getUser();
				 final String password = vo.getPassword();
		        Properties props = new Properties();
		        props.put("mail.host", vo.getHost());
		        props.put("mail.smtp.auth", "true");
		        props.put("mail.transport.protocol", "smtp");
		       

		        Session session = Session.getDefaultInstance(props, new Authenticator() {
					  protected PasswordAuthentication getPasswordAuthentication() {
						  return new PasswordAuthentication(user, password);
					  }
				  });


		        MimeMessage message = new MimeMessage(session);
		        message.setSubject(vo.getSubject());
		        message.setFrom(new InternetAddress(user));
		        message.setContent("<h1>"+vo.getText()+"</h1>" 
		                + "<img src=\""+vo.getImglink()+"\">", 
		                "text/html;charset=UTF-8");
		        message.addRecipient(Message.RecipientType.TO,
		             new InternetAddress(vo.getTo()));

		        Transport.send(message);


		        }
		
}
