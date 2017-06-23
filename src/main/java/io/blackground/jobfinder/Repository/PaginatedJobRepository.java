/**
 * 
 */
package io.blackground.jobfinder.Repository;


import java.util.ArrayList;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;

import io.blackground.jobfinder.models.Job;



/**
 * @author yotti
 *
 */
public interface PaginatedJobRepository extends PagingAndSortingRepository<Job, Long> {
	Page<Job> findAll(Pageable pageable);
}
