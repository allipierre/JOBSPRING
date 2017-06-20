/**
 * 
 */
package io.blackground.jobfinder.Repository;


import java.util.ArrayList;
import java.util.List;

import org.springframework.data.repository.CrudRepository;


import io.blackground.jobfinder.models.Job;



/**
 * @author yotti
 *
 */
public interface JobRepository extends CrudRepository<Job, Long> {
	List<Job> findJobsByTitle(String title);
	List<Job> findByTitleLike(String title);
	//Job findByLocation(String location);
}
