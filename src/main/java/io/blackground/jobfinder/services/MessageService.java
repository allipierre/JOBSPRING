/**
 * 
 */
package io.blackground.jobfinder.services;

import java.util.List;
import java.util.ArrayList;


import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import io.blackground.jobfinder.Repository.MessageRepository;
import io.blackground.jobfinder.models.MessageChat;


/**
 * @author yotti
 *
 */
@Service
@Transactional
public class MessageService {

	private final MessageRepository messageRepository;

	@Autowired
	public MessageService(MessageRepository messageRepository) {
		super();
		this.messageRepository = messageRepository;
		
	}

	public List<MessageChat> findAll() {
		List<MessageChat> messages = new ArrayList<>();
		for (MessageChat message : messageRepository.findAll()) {
			messages.add(message);
		}
		return messages;

	}

	public void save(MessageChat company) {
		messageRepository.save(company);
	}

	public void delete(long id) {
		messageRepository.delete(id);
	}

	public MessageChat findById(long id) {
		return messageRepository.findById(id);
	}

}