/**
 * 
 */
package io.blackground.jobfinder.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import io.blackground.jobfinder.models.Company;

import io.blackground.jobfinder.models.Job;
import io.blackground.jobfinder.models.User;
import io.blackground.jobfinder.services.CompanyService;

import io.blackground.jobfinder.services.ContractService;

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
public class JobUebersichtController {


	@GetMapping("/jobuebersicht")
	public String postJob(@RequestParam int id,HttpServletRequest request) {
		return "jobuebersicht";
	}

}