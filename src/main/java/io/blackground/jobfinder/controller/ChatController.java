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

import io.blackground.jobfinder.models.Company;
import io.blackground.jobfinder.models.User;
import io.blackground.jobfinder.services.MailService;
import io.blackground.jobfinder.services.UserServiceImpl;

/**
 * @author yotti
 *
 */
@Controller
public class ChatController {

	@GetMapping("/chat")
	public String createChat(HttpServletRequest request) {

		return "chat";
	}
}
