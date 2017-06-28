/**
 * 
 */
package io.blackground.jobfinder.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import io.blackground.jobfinder.models.MessageChat;
import io.blackground.jobfinder.services.MessageService;


/**
 * @author yotti
 *
 */

@org.springframework.web.bind.annotation.RestController
@RequestMapping("/messagechat")
public class MessageController {
	@Autowired
	private MessageService messageService;

	@RequestMapping(method = RequestMethod.GET)
	public List<MessageChat> getAll() {
		return messageService.findAll();
	}


	

}