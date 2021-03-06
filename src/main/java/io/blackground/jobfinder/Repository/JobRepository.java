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
	List<Job> findByTitleContainingIgnoreCase(String title);
	List<Job> findJobsByCompanyCityContainingIgnoreCase(String city);
	List<Job> findJobsByCompanyCityContainingIgnoreCaseAndTitleContainingIgnoreCase(String city,String title);
	List<Job> findTop2ByOrderByIdDesc();
	List<Job> findTop20ByOrderByIdDesc();
	//Job findByLocation(String location);
}
