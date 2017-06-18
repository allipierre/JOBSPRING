/**
 * 
 */
package io.blackground.jobfinder.services;

import java.util.List;
import java.util.ArrayList;

import javax.transaction.Transactional;

import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import io.blackground.jobfinder.Repository.JobRepository;
import io.blackground.jobfinder.models.Industry;
import io.blackground.jobfinder.models.Job;

/**
 * @author yotti
 *
 */
@Service
@Transactional
public class JobService {

	private final JobRepository jobRepository;

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

	public List<Job> findAll(Pageable p) {
		List<Job> tasks = new ArrayList<>();
		for (Job task : jobRepository.findAll()) {
			tasks.add(task);
		}
		return tasks;

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
	
	

}
