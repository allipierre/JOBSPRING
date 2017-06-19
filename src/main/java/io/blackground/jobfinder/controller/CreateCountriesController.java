/**
 * 
 */
package io.blackground.jobfinder.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import io.blackground.jobfinder.models.CompanySize;
import io.blackground.jobfinder.models.Contract;
import io.blackground.jobfinder.models.Countries;
import io.blackground.jobfinder.models.Experience;
import io.blackground.jobfinder.models.Industry;
import io.blackground.jobfinder.models.Salary;
import io.blackground.jobfinder.services.CompanySizeService;
import io.blackground.jobfinder.services.ContractService;
import io.blackground.jobfinder.services.CountriesService;
import io.blackground.jobfinder.services.ExperienceService;
import io.blackground.jobfinder.services.IndustryService;
import io.blackground.jobfinder.services.SalaryService;

/**
 * @author yotti
 *
 */
@Controller
public class CreateCountriesController {

	@Autowired
	private CountriesService countriesService;
	
	@Autowired
	private CompanySizeService companySizeService;
	
	@Autowired
	private IndustryService industryService;
	
	@Autowired
	private SalaryService salaryService;
	
	@Autowired
	private ContractService contractService;
	
	@Autowired
	private ExperienceService experienceService;

	@PostMapping("/save-countries")
	public String newCountry(@ModelAttribute Countries country, HttpServletRequest request) {
		// task.setDateCreated(new Date());
		countriesService.save(country);
		// request.setAttribute("mode", "MODE_TASKS");
		return "createcountries";
	}

	@PostMapping("/save-size")
	public String newCompSize(@ModelAttribute CompanySize compSize, HttpServletRequest request) {
		companySizeService.save(compSize);
		return "createcountries";
	}
	
	
	@PostMapping("/save-industry")
	public String newIndustry(@ModelAttribute Industry industry, HttpServletRequest request) {
		industryService.save(industry);
		return "createcountries";
	}
	
	@PostMapping("/save-salary")
	public String newSalary(@ModelAttribute Salary salary, HttpServletRequest request) {
		salaryService.save(salary);
		return "createcountries";
	}
	
	@PostMapping("/save-contract")
	public String newContract(@ModelAttribute Contract contract, HttpServletRequest request) {
		contractService.save(contract);
		return "createcountries";
	}
	
	
	@PostMapping("/save-experience")
	public String newExperience(@ModelAttribute Experience experience, HttpServletRequest request) {
		experienceService.save(experience);
		return "createcountries";
	}
	
	

}