/**
 * 
 */
package io.blackground.jobfinder.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.OffsetDateTime;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import io.blackground.jobfinder.Repository.UserService;
import io.blackground.jobfinder.models.Company;
import io.blackground.jobfinder.models.MessageChat;
import io.blackground.jobfinder.models.User;
import io.blackground.jobfinder.services.CompanyService;
import io.blackground.jobfinder.services.MessageService;

/**
 * @author yotti
 *
 */

@CrossOrigin(origins = "https://apex.oracle.com", maxAge = 3600)
@org.springframework.web.bind.annotation.RestController
@RequestMapping("/messagechate")
public class MessageteController {
	@Autowired
	private MessageService messageService;

	@Autowired
	private CompanyService companyService;

	@Autowired
	private UserService userService;

	@RequestMapping(method = RequestMethod.GET)
	public List<MessageChat> getMessageByCompany() {
		return messageService.findMessageByCompany();
	}

}