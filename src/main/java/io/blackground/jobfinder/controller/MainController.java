/**
 * 
 */
package io.blackground.jobfinder.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import io.blackground.jobfinder.models.Job;
import io.blackground.jobfinder.services.CompanyService;
import io.blackground.jobfinder.services.ContractService;
import io.blackground.jobfinder.services.IndustryService;
import io.blackground.jobfinder.services.JobService;
import io.blackground.jobfinder.services.PaginatedJobService;

/**
 * @author yotti
 *
 */
@Controller
public class MainController {

	@Autowired
	private JobService jobservice;

	@Autowired
	private PaginatedJobService paginatedJobService;

	@Autowired
	private CompanyService companyservice;

	@Autowired
	private ContractService contractservice;

	@Autowired
	private IndustryService industryService;

	// @GetMapping("/")
	// public String hello() {
	// return "index";
	// }

	@GetMapping("/allejob")
	public String alleJob(HttpServletRequest request, @RequestParam("title") String title,
			@RequestParam("location") String location) {
		List<Job> queryjob = new ArrayList<Job>();
		if (!title.isEmpty() && location.isEmpty()) {

			queryjob = jobservice.findByTitleContainingIgnoreCase(title);
		} else if (!location.isEmpty() && title.isEmpty()) {
			queryjob = jobservice.findJobsByCompanyCityContainingIgnoreCase(location);
		} else if (!location.isEmpty() && !title.isEmpty()) {
			queryjob = jobservice.findJobsByCompanyCityContainingIgnoreCaseAndTitleContainingIgnoreCase(location,
					title);
		} else {
			queryjob = jobservice.findAll();
		}

		request.setAttribute("taskse", queryjob);
		request.setAttribute("tasksen", industryService.findAll());
		request.setAttribute("contract", contractservice.findAll());
		request.setAttribute("company", companyservice.findAll());
		return "allejob";
	}

	@GetMapping("/createcountries")
	public String createCountry(HttpServletRequest request) {
		// request.setAttribute("countries", companyservice.findAll());
		return "createcountries";
	}

	@RequestMapping(value = "/pageablejobs", method = RequestMethod.GET)
	Page<Job> list(Pageable pageable) {
		Page<Job> jobs = paginatedJobService.listAllByPage(pageable);
		return jobs;

	}

}