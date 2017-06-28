/**
 * 
 */
package io.blackground.jobfinder.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.mail.MailException;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import io.blackground.jobfinder.services.MailService;

/**
 * @author yotti
 *
 */

@org.springframework.web.bind.annotation.RestController
@RequestMapping("/emailsend")
public class EmailRestController {

	@Autowired
	private MailService mailService;

	@RequestMapping(method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody String create(@JsonArg("covere") String covere, @JsonArg("title") String title,
			@JsonArg("username") String username, @JsonArg("usernameto") String usernameto) {
		try {
			mailService.sendMail(covere, title, username, usernameto);
			return "sendmail";
		} catch (MailException e) {
			e.printStackTrace();
		}
		return "sendmail";
	}

}
