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
public class JobService {

	private final JobRepository jobRepository;
	@Autowired
	private UserServiceImpl userService;
	@Autowired
	private CompanyService companyService;
	
	private  PaginatedJobRepository paginatedJobRepository;

	/**
	 * @param taskRepository
	 */
	public JobService(JobRepository jobRepository) {
		super();
		this.jobRepository = jobRepository;
	}

	public List<Job> findAll() {
		List<Job> jobs = new ArrayList<>();
		for (Job job : jobRepository.findAll()) {
			jobs.add(job);
		}
		return jobs;

	}

	public List<Job> findAllJobsByTitle(String title) {
		List<Job> jobs = new ArrayList<>();
		for (Job job : jobRepository.findAll()) {
			if (job.getTitle().equals(title)) {
				jobs.add(job);
			}

		}
		return jobs;

	}

	public List<Job> findAllJobsByCity(String city) {
		List<Job> jobs = new ArrayList<>();
		for (Job job : jobRepository.findAll()) {
			if (job.getCompany().getCity().toUpperCase().contains(city.toUpperCase())) {
				jobs.add(job);
			}

		}
		return jobs;

	}

	public List<Job> findAllJobsByCityandTitle(String city, String title) {
		List<Job> jobs = new ArrayList<>();
		for (Job job : jobRepository.findAll()) {
			if (job.getCompany().getCity().toUpperCase().contains(city.toUpperCase())
					&& job.getTitle().toUpperCase().contains(title.toUpperCase())) {
				jobs.add(job);
			}

		}
		return jobs;

	}

	public void save(Job task) {
		jobRepository.save(task);
	}

	public void delete(long id) {
		jobRepository.delete(id);
	}

	public Job findJobById(long id) {
		return jobRepository.findOne(id);
	}

	public List<Job> findJobByCompany() {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

		User user = userService.findByUsername(authentication.getName());
		Company userCompany = companyService.findCompany(user);
		List<Job> jobs = new ArrayList<>();
		for (Job job : jobRepository.findAll()) {
			if (job.getCompany().getId() == userCompany.getId()) {
				jobs.add(job);
			}

		}
		return jobs;

	}

	public List<Job> findJobsByTitle(String title) {
		return jobRepository.findJobsByTitle(title);
	}

	public List<Job> findByTitleContainingIgnoreCase(String title) {
		return jobRepository.findByTitleContainingIgnoreCase(title);
	}

	public List<Job> findJobsByCompanyCityContainingIgnoreCase(String city) {
		return jobRepository.findJobsByCompanyCityContainingIgnoreCase(city);
	}
	
	public List<Job> findJobsByCompanyCityContainingIgnoreCaseAndTitleContainingIgnoreCase(String city, String title) {
		return jobRepository.findJobsByCompanyCityContainingIgnoreCaseAndTitleContainingIgnoreCase(city,title);
	}
	public List<Job> findTop2ByOrderByIdDesc(){
		return jobRepository.findTop2ByOrderByIdDesc();
	}
	public List<Job> findTop20ByOrderByIdDesc(){
		return jobRepository.findTop20ByOrderByIdDesc();
	}
	

}
