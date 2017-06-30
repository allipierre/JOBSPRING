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
import org.springframework.web.bind.annotation.CrossOrigin;
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

@CrossOrigin(origins="https://apex.oracle.com. maxAge=3600")
@org.springframework.web.bind.annotation.RestController
@RequestMapping("/messagechat")
public class MessageController {
	@Autowired
	private MessageService messageService;

	@RequestMapping(method = RequestMethod.GET)
	public List<MessageChat> getAll() {
		return messageService.findAll();
	}

	@RequestMapping(method = RequestMethod.POST,consumes = MediaType.APPLICATION_JSON_VALUE)
	public void create(@RequestBody MessageChat chatmessage) {
		messageService.save(chatmessage);

	}

	@RequestMapping(method = RequestMethod.DELETE, value = "{id}")
	public void delete(@PathVariable Long id) {
		messageService.delete(id);
	}

	@RequestMapping(method = RequestMethod.PUT, value = "{id}")
	public void update(@PathVariable String id, @RequestBody MessageChat message) {
		messageService.save(message);
	}

}