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

	private JobRepository jobRepository;
	private PaginatedJobRepository paginatedJobRepository;
	@Autowired
	private UserServiceImpl userService;
	@Autowired
	private CompanyService companyService;

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

	public List<Job> findJobByCompany(Pageable pageable) {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		User user = userService.findByUsername(authentication.getName());
		Company userCompany = companyService.findCompany(user);
		List<Job> jobs = new ArrayList<>();
		for (Job job : paginatedJobRepository.findJobsByCompanyId(userCompany.getId(),pageable)) {
			//if (job.getCompany().getId() == userCompany.getId()) {
				jobs.add(job);

			//}

		}
		return jobs;

	}
//	public int getAnzahl(){
//		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
//		User user = userService.findByUsername(authentication.getName());
//		Company userCompany = companyService.findCompany(user);
//		return findJobsByCompanyId(userCompany.getc)
//	}

	public int getNoOfRecords() {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

		User user = userService.findByUsername(authentication.getName());
		Company userCompany = companyService.findCompany(user);
		List<Job> jobs = new ArrayList<>();
		for (Job job : paginatedJobRepository.findAll()) {
			if (job.getCompany().getId() == userCompany.getId()) {
				jobs.add(job);
			}

		}
		return jobs.size();
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

	public List<Job> findJobsByTitle(String title, Pageable pageable) {
		return paginatedJobRepository.findJobsByTitle(title, pageable);
	}

	public List<Job> findByTitleContainingIgnoreCase(String title, Pageable pageable) {
		return paginatedJobRepository.findByTitleContainingIgnoreCase(title, pageable);
	}

	public List<Job> findJobsByCompanyCityContainingIgnoreCase(String city, Pageable pageable) {
		return paginatedJobRepository.findJobsByCompanyCityContainingIgnoreCase(city, pageable);
	}

	public List<Job> findJobsByCompanyCityContainingIgnoreCaseAndTitleContainingIgnoreCase(String city, String title,
			Pageable pageable) {
		return paginatedJobRepository.findJobsByCompanyCityContainingIgnoreCaseAndTitleContainingIgnoreCase(city, title,
				pageable);
	}

	public List<Job> findAll(Pageable pageable) {

		List<Job> jobs = new ArrayList<>();
		for (Job job : paginatedJobRepository.findAll(pageable)) {

			jobs.add(job);

		}
		return jobs;

	}

	public int getAllNoOfRecords() {

		List<Job> jobs = new ArrayList<>();
		for (Job job : paginatedJobRepository.findAll()) {

			jobs.add(job);

		}
		return jobs.size();
	}

	public int getAllNoOfRecords(String title) {

		List<Job> jobs = new ArrayList<>();
		for (Job job : paginatedJobRepository.findAll()) {
			if (job.getTitle().toUpperCase().contains(title.toUpperCase())) {
				jobs.add(job);
			}

		}
		return jobs.size();
	}

	public int getAllNoOfRecordsLocation(String location) {

		List<Job> jobs = new ArrayList<>();
		for (Job job : paginatedJobRepository.findAll()) {
			if (job.getCompany().getCity().toUpperCase().contains(location.toUpperCase())) {
				jobs.add(job);
			}

		}
		return jobs.size();
	}

	public int getAllNoOfRecordsLocationTitle(String city, String title) {
		List<Job> jobs = new ArrayList<>();
		for (Job job : paginatedJobRepository.findAll()) {
			if (job.getCompany().getCity().toUpperCase().contains(city.toUpperCase())
					&& job.getTitle().toUpperCase().contains(title.toUpperCase())) {
				jobs.add(job);
			}

		}
		return jobs.size();

	}
}
