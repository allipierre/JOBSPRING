/**
 * 
 */
package io.blackground.jobfinder.Repository;


import java.util.ArrayList;

import org.springframework.data.repository.CrudRepository;


import io.blackground.jobfinder.models.Job;



/**
 * @author yotti
 *
 */
public interface JobRepository extends CrudRepository<Job, Long> {
	ArrayList<Job> findJobsByTitle(String title);
	//Job findByLocation(String location);
}
