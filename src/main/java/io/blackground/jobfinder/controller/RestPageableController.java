/**
 * 
 */
package io.blackground.jobfinder.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import io.blackground.jobfinder.models.Job;
import io.blackground.jobfinder.services.PaginatedJobService;

/**
 * @author yotti
 *
 */

@org.springframework.web.bind.annotation.RestController
@RequestMapping("/restpageablejobs")
public class RestPageableController {

	@Autowired
	private PaginatedJobService paginatedJobService;

	@RequestMapping(method = RequestMethod.GET)
	Page<Job> list(Pageable pageable) {
		Page<Job> jobs = paginatedJobService.listAllByPage(pageable);
		return jobs;

	}

}