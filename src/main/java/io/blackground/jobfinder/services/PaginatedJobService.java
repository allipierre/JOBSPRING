/**
 * 
 */
package io.blackground.jobfinder.services;

import java.util.List;
import java.util.ArrayList;

import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import io.blackground.jobfinder.Repository.JobRepository;
import io.blackground.jobfinder.Repository.PaginatedJobRepository;
import io.blackground.jobfinder.models.Company;
import io.blackground.jobfinder.models.Industry;
import io.blackground.jobfinder.models.Job;
import io.blackground.jobfinder.models.User;

/**
 * @author yotti
 *
 */
@Service
@Transactional
public class PaginatedJobService {

	
	
	private  PaginatedJobRepository paginatedJobRepository;

	/**
	 * @param taskRepository
	 */
	public PaginatedJobService(PaginatedJobRepository paginatedJobRepository) {
		super();
		this.paginatedJobRepository = paginatedJobRepository;
	}

	
	 public Page<Job> listAllByPage(Pageable pageable) {
		 return paginatedJobRepository.findAll(pageable);
	}
}
