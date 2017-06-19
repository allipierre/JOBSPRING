/**
 * 
 */
package io.blackground.jobfinder.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import io.blackground.jobfinder.models.Company;
import io.blackground.jobfinder.models.User;
import io.blackground.jobfinder.services.CompanyService;
import io.blackground.jobfinder.services.ContractService;
import io.blackground.jobfinder.services.ExperienceService;
import io.blackground.jobfinder.services.JobService;
import io.blackground.jobfinder.services.UserServiceImpl;

/**
 * @author yotti
 *
 */
@Controller
public class MyJobController {
	@Autowired
	private UserServiceImpl userService;
	@Autowired
	private CompanyService companyService;
	@Autowired
	private ContractService contractservice;

	@Autowired
	private ExperienceService experienceservice;

	@Autowired
	private JobService jobService;

	@GetMapping("/myjob")
	public String postJob(HttpServletRequest request) {

		

		request.setAttribute("jobs", jobService.findJobByCompany());
		request.setAttribute("contract", contractservice.findAll());
		request.setAttribute("experience", experienceservice.findAll());
		return "myjob";
	}

}