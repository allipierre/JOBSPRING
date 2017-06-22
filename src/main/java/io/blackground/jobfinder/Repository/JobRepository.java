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
	List<Job> findJobsByCompanyCompany_nameContainingIgnoreCaseOrTitleContainingIgnoreCase(String title);
	List<Job> findJobsByCompanyCityContainingIgnoreCase(String city);
	List<Job> findJobsByCompanyCityContainingIgnoreCaseAndTitleContainingIgnoreCase(String city,String title);
	
	//Job findByLocation(String location);
}
