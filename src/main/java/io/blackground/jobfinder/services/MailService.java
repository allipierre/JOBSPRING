/**
 * 
 */
package io.blackground.jobfinder.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;

/**
 * @author yotti
 *
 */
@Component
public class MailService {
	@Autowired
	private JavaMailSender javaMailSender;

	public void sendMail(String covere, String subject,String username) throws MailException {

		SimpleMailMessage mail = new SimpleMailMessage();
		mail.setTo("yottiallipierre@gmail.com");
		mail.setFrom(username);
		mail.setSubject(subject);
		mail.setText(covere);
		javaMailSender.send(mail);
	}

}
