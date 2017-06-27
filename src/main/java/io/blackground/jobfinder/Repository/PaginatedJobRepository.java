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

	@Query(value = "SELECT c.companyName,c.website,c.about,c.city,j.position,j.id,j.description,j.minimumExperienceYears,j.category,j.minimumDegree,j.title,j.contrat,j.published"
			+ "FROM Job j join Company c WHERE c.id= ?1", nativeQuery = false)
	Page<Job> findByCompanyId(Long companyId, Pageable pageable);
}
