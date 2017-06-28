/**
 * 
 */
package io.blackground.jobfinder.Repository;

import org.springframework.data.repository.CrudRepository;

import io.blackground.jobfinder.models.MessageChat;

/**
 * @author yotti
 *
 */

public interface MessageRepository extends CrudRepository<MessageChat, Long> {
	MessageChat findById(long id);
}
