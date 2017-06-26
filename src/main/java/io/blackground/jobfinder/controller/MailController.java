/**
 * 
 */
package io.blackground.jobfinder.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.mail.MailException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import io.blackground.jobfinder.services.MailService;

/**
 * @author yotti
 *
 */
@Controller
@RequestMapping("/sendmail")
public class MailController {
	@Autowired
	private MailService mailService;

	
	@RequestMapping(method = RequestMethod.POST)
	private String sendMail(HttpServletRequest request) {
		 String covere = request.getParameter("covere");
		
		try {
			mailService.sendMail(covere);
			return "apply";
		} catch (MailException e) {
			e.printStackTrace();
		}
		return "apply";
	}
}
