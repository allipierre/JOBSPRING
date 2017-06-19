/**
 * 
 */
package io.blackground.jobfinder.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import io.blackground.jobfinder.services.ContractService;

import io.blackground.jobfinder.services.JobService;

/**
 * @author yotti
 *
 */
@Controller
public class MyJobController {

	@SuppressWarnings("unused")
	@Autowired
	private ContractService contractservice;

	@Autowired
	private JobService jobService;

	@GetMapping("/myjob")
	public String postJob(HttpServletRequest request) {
		request.setAttribute("jobs", jobService.findAll());
		request.setAttribute("contract", contractservice.findAll());
		return "myjob";
	}

}