/**
 * 
 */
package io.blackground.jobfinder.Repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;

import io.blackground.jobfinder.models.Job;

/**
 * @author yotti
 *
 */
public interface PaginatedJobRepository extends PagingAndSortingRepository<Job, Long> {
	Page<Job> findAll(Pageable pageable);

	List<Job> findJobsByTitle(String title, Pageable pageable);

	List<Job> findByTitleContainingIgnoreCase(String title, Pageable pageable);

	List<Job> findJobsByCompanyCityContainingIgnoreCase(String city, Pageable pageable);

	List<Job> findJobsByCompanyCityContainingIgnoreCaseAndTitleContainingIgnoreCase(String city, String title,
			Pageable pageable);

	
	Page<Job> findJobsByCompanyId(Long id, Pageable pageable);
	
}
