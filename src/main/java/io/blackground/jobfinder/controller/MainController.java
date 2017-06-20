/**
 * 
 */
package io.blackground.jobfinder.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;

import io.blackground.jobfinder.services.CompanyService;
import io.blackground.jobfinder.services.ContractService;
import io.blackground.jobfinder.services.IndustryService;
import io.blackground.jobfinder.services.JobService;

/**
 * @author yotti
 *
 */
@Controller
public class MainController {

	
	@Autowired
	private JobService jobservice;

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

	@GetMapping("/allejob/{id}")
	public String alleJob(HttpServletRequest request) {
		request.setAttribute("taskse", jobservice.findAll());
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

}