/**
 * 
 */
package io.blackground.jobfinder.Repository;

import org.springframework.data.repository.CrudRepository;

import io.blackground.jobfinder.models.Job;


/**
 * @author yotti
 *
 */
public interface JobRepository extends CrudRepository<Job, Long> {

}
