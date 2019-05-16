package com.spring.service;

import java.util.List;
import java.util.Properties;

import javax.inject.Inject;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.stereotype.Service;

import com.spring.domain.EmailVO;
import com.spring.domain.UserVO;
import com.spring.mapper.EmailMapper;

@Service
public class EmailServiceImpl implements EmailService {

	@Inject
	private EmailMapper mapper;
	
	@Override
	public int getListCheckEmail(EmailVO vo) {
		String no = "1";
		List<UserVO> list = mapper.getListCheckEmail(no);
        final String user = vo.getUser();
		final String password = vo.getPassword();
        Properties props = new Properties();
        props.put("mail.host", vo.getHost());
        props.put("mail.smtp.auth", "true");
        props.put("mail.transport.protocol", "smtp");
        int res = -2;

        Session session = Session.getDefaultInstance(props, new Authenticator() {
			  protected PasswordAuthentication getPasswordAuthentication() {
				  return new PasswordAuthentication(user, password);
			  }
		  });


        MimeMessage message = new MimeMessage(session);
        try {
        	if(!list.isEmpty()) {
        	res = 0;
        	for(int i=0; i<list.size(); i++) {
			message.setSubject(vo.getSubject());
			message.setFrom(new InternetAddress(user));
			message.setContent("<h1>"+vo.getText()+"</h1>" 
					+ "<img src=\""+vo.getImglink()+"\">", 
					"text/html;charset=UTF-8");
			message.addRecipient(Message.RecipientType.TO,
					new InternetAddress(list.get(i).getEmail()));
			
			Transport.send(message);
			res += 1;
        	}
        	}else {
        		res = -1;
        	}
		} catch (MessagingException e) {
			e.printStackTrace();
		}

		return res;
	}

}
