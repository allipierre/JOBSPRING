/**
 * 
 */
package io.blackground.jobfinder.Repository;

import org.springframework.data.repository.CrudRepository;

import io.blackground.jobfinder.models.Message;

/**
 * @author yotti
 *
 */

public interface MessageRepository extends CrudRepository<Message, Long> {
	Message findById(long id);
}
