/**
 * 
 */
package io.blackground.jobfinder.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.mail.MailException;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import io.blackground.jobfinder.models.User;
import io.blackground.jobfinder.services.MailService;
import io.blackground.jobfinder.services.UserServiceImpl;

/**
 * @author yotti
 *
 */
@Controller
@RequestMapping("/sendmail")
public class MailController {
	@Autowired
	private MailService mailService;
	
	   @Autowired
	    private UserServiceImpl userService;

	@RequestMapping(method = RequestMethod.POST)
	private String sendMail(HttpServletRequest request) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		User user = userService.findByUsername(authentication.getName());
		String covere = request.getParameter("covere");
		String title = request.getParameter("title");

		try {
			mailService.sendMail(covere, title);
			return "sendmail";
		} catch (MailException e) {
			e.printStackTrace();
		}
		return "sendmail";
	}
}
