/**
 * 
 */
package io.blackground.jobfinder.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import io.blackground.jobfinder.Repository.UserService;
import io.blackground.jobfinder.models.Company;
import io.blackground.jobfinder.models.Industry;
import io.blackground.jobfinder.models.Job;
import io.blackground.jobfinder.models.User;
import io.blackground.jobfinder.services.CompanyService;
import io.blackground.jobfinder.services.CompanySizeService;
import io.blackground.jobfinder.services.ContractService;
import io.blackground.jobfinder.services.CountriesService;
import io.blackground.jobfinder.services.ExperienceService;
import io.blackground.jobfinder.services.IndustryService;
import io.blackground.jobfinder.services.JobService;
import io.blackground.jobfinder.services.SalaryService;
import io.blackground.jobfinder.services.UserServiceImpl;

/**
 * @author yotti
 *
 */
@Controller
public class MainController {

	@SuppressWarnings("unused")
	@Autowired
	private JobService jobservice;

	@Autowired
	private CompanyService companyservice;

	@Autowired
	private CountriesService countriesservice;

	@Autowired
	private CompanySizeService companySizesservice;
	
	@Autowired
	private ExperienceService experienceservice;

	@Autowired
	private IndustryService industryService;

	@Autowired
	private SalaryService salaryService;

	@Autowired
	private ContractService contractService;

	@Autowired
	private UserServiceImpl userService;
	
	@Autowired
	private JobService jobService;

	// @GetMapping("/")
	// public String hello() {
	// return "index";
	// }

	@GetMapping("/allejob")
	public String alleJob(HttpServletRequest request) {
		request.setAttribute("taskse", companyservice.findAll());
		request.setAttribute("tasksen", industryService.findAll());
		return "allejob";
	}

	@GetMapping("/createcountries")
	public String createCountry(HttpServletRequest request) {
		// request.setAttribute("countries", companyservice.findAll());
		return "createcountries";
	}

	@GetMapping("/post")
	public String postJob(HttpServletRequest request) {
		request.setAttribute("salary", salaryService.findAll());
		request.setAttribute("industry", industryService.findAll());
		request.setAttribute("contract", contractService.findAll());
		request.setAttribute("experience", experienceservice.findAll());
		return "post";
	}

	@PostMapping("/create-job")
	public String saveJob(@ModelAttribute Job job, BindingResult bindingResult, HttpServletRequest request) {

		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

		User user = userService.findByUsername(authentication.getName());
		Company userCompany = companyservice.findCompany(user);
		
		job.setCompany(userCompany);
		job.setId(userCompany.getId());
		jobService.save(job);
		
		//job.setCompany(companyservice.findById(job.getCompanyId()));
		request.setAttribute("salary", salaryService.findAll());
		request.setAttribute("industry", industryService.findAll());
		request.setAttribute("contract", contractService.findAll());
		return "post";
	}

	// @GetMapping("/login")
	// public String getLogin() {
	// return "login";
	// }

}