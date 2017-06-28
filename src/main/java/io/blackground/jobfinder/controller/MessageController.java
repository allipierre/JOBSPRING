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


import io.blackground.jobfinder.models.Message;
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
	public List<Message> getAll() {
		return messageService.findAll();
	}

	@RequestMapping(method = RequestMethod.POST)
	public void create(@RequestBody Message message) {
		 messageService.save(message);
	}

	@RequestMapping(method = RequestMethod.DELETE, value = "{id}")
	public void delete(@PathVariable Long id) {
		messageService.delete(id);
	}

	@RequestMapping(method = RequestMethod.PUT, value = "{id}")
	public void update(@PathVariable String id, @RequestBody Message message) {
		messageService.save(message);
	}

	

}