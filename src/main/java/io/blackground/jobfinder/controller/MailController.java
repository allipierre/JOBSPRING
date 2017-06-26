/**
 * 
 */
package io.blackground.jobfinder.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.mail.MailException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import io.blackground.jobfinder.services.MailService;

/**
 * @author yotti
 *
 */
@Controller
@EnableAutoConfiguration
public class MailController {
	@Autowired
	private MailService mailService;

	@PostMapping("/sendmail")
	@ResponseBody
	private String sendMail() {
		try {
			mailService.sendMail();
			return "mail sent";
		} catch (MailException e) {
			e.printStackTrace();
		}
		return "thanks";
	}
}
