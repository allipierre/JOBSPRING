/**
 * 
 */
package io.blackground.jobfinder.services;

import java.util.List;
import java.util.ArrayList;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import io.blackground.jobfinder.Repository.MessageRepository;
import io.blackground.jobfinder.models.Company;
import io.blackground.jobfinder.models.Job;
import io.blackground.jobfinder.models.MessageChat;
import io.blackground.jobfinder.models.User;

/**
 * @author yotti
 *
 */
@Service
@Transactional
public class MessageService {

	private final MessageRepository messageRepository;
	@Autowired
	private UserServiceImpl userService;
	@Autowired
	private CompanyService companyService;

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
	
	public List<MessageChat> findMessageByCompany() {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

		User user = userService.findByUsername(authentication.getName());
		Company userCompany = companyService.findCompany(user);
		List<MessageChat> messages = new ArrayList<>();
		for (MessageChat message : messageRepository.findAll()) {
			if (message.getCompany().getId() == userCompany.getId()) {
				messages.add(message);
			}

		}
		return messages;

	}

}