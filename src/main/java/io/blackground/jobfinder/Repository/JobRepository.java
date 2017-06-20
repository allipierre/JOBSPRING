/**
 * 
 */
package io.blackground.jobfinder.Repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import io.blackground.jobfinder.models.Job;
import io.blackground.jobfinder.models.User;


/**
 * @author yotti
 *
 */
public interface JobRepository extends CrudRepository<Job, Long> {
	Job findByUsername(String title);
}
