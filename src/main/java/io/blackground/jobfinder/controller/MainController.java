/**
 * 
 */
package io.blackground.jobfinder.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import io.blackground.jobfinder.models.Job;
import io.blackground.jobfinder.services.CompanyService;
import io.blackground.jobfinder.services.ContractService;
import io.blackground.jobfinder.services.ExperienceService;
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

	@Autowired
	private ExperienceService experienceservice;

	// @GetMapping("/")
	// public String hello() {
	// return "index";
	// }

	@GetMapping("/allejob")
	public String alleJob(HttpServletRequest request, @RequestParam("title") String title,
			@RequestParam("location") String location, Pageable pageable) {

		int page = 1;
		int recordsPerPage = 5;
		if (request.getParameter("page") != null)
			page = Integer.parseInt(request.getParameter("page"));
		int noOfRecords = paginatedJobService.getAllNoOfRecords();
		System.out.println("noOfRecords" + noOfRecords);
		int noOfPages = (int) Math.ceil(noOfRecords * 1.0 / recordsPerPage);
		List<Job> queryjob = new ArrayList<Job>();
		if (!title.isEmpty() && location.isEmpty()) {
			noOfRecords = paginatedJobService.getAllNoOfRecords(title);
			noOfPages = (int) Math.ceil(noOfRecords * 1.0 / recordsPerPage);
			queryjob = paginatedJobService.findByTitleContainingIgnoreCase(title,
					new PageRequest((page - 1), recordsPerPage));
		} else if (!location.isEmpty() && title.isEmpty()) {
			noOfRecords = paginatedJobService.getAllNoOfRecordsLocation(location);
			noOfPages = (int) Math.ceil(noOfRecords * 1.0 / recordsPerPage);
			queryjob = paginatedJobService.findJobsByCompanyCityContainingIgnoreCase(location,
					new PageRequest((page - 1), recordsPerPage));
		} else if (!location.isEmpty() && !title.isEmpty()) {
			noOfRecords = paginatedJobService.getAllNoOfRecordsLocationTitle(location,title);
			noOfPages = (int) Math.ceil(noOfRecords * 1.0 / recordsPerPage);
			queryjob = paginatedJobService.findJobsByCompanyCityContainingIgnoreCaseAndTitleContainingIgnoreCase(
					location, title, new PageRequest((page - 1), recordsPerPage));
		} else {
			queryjob = paginatedJobService.findAll(new PageRequest((page - 1), recordsPerPage));
		}

		request.setAttribute("taskse", queryjob);
		request.setAttribute("tasksen", industryService.findAll());
		request.setAttribute("contract", contractservice.findAll());
		request.setAttribute("company", companyservice.findAll());
		request.setAttribute("noOfPages", noOfPages);
		request.setAttribute("currentPage", page);
		request.setAttribute("title", title);
		request.setAttribute("location", location);
		return "allejob";
	}

	@GetMapping("/createcountries")
	public String createCountry(HttpServletRequest request) {
		// request.setAttribute("countries", companyservice.findAll());
		return "createcountries";
	}

	@GetMapping("/pageablejob")
	public String list(HttpServletRequest request, Pageable pageable) {
		int page = 1;
		int recordsPerPage = 5;
		if (request.getParameter("page") != null)
			page = Integer.parseInt(request.getParameter("page"));
		int noOfRecords = paginatedJobService.getNoOfRecords();
		System.out.println("noOfRecords" + noOfRecords);
		int noOfPages = (int) Math.ceil(noOfRecords * 1.0 / recordsPerPage);

		System.out.println("anzahl "+paginatedJobService.findJobByCompany(new PageRequest((page - 1), recordsPerPage)).size());
		request.setAttribute("contract", contractservice.findAll());
		request.setAttribute("experience", experienceservice.findAll());
		request.setAttribute("jobs", paginatedJobService.findJobByCompany(new PageRequest((page - 1), recordsPerPage)));
		request.setAttribute("noOfPages", noOfPages);
		request.setAttribute("currentPage", page);

		return "pageablejob";

	}

}