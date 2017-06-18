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

import io.blackground.jobfinder.models.Company;
import io.blackground.jobfinder.models.Industry;
import io.blackground.jobfinder.models.User;
import io.blackground.jobfinder.services.CompanyService;
import io.blackground.jobfinder.services.CompanySizeService;
import io.blackground.jobfinder.services.CountriesService;
import io.blackground.jobfinder.services.IndustryService;
import io.blackground.jobfinder.services.UserServiceImpl;


/**
 * @author yotti
 */
@Controller
public class CompanyController {

    @Autowired
    private CompanyService companyservice;

    @Autowired
    private CompanyService companyService;

    @Autowired
    private CompanySizeService companySizeService;

    @Autowired
    private CountriesService countriesService;

    @Autowired
    private IndustryService industryService;

    @Autowired
    private UserServiceImpl userService;

    @GetMapping("/company")
    public String createCompany(HttpServletRequest request) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        

        User user = userService.findByUsername(authentication.getName());
        Company userCompany = companyService.findCompany(user);
        System.out.println("Company found is " + userCompany);
        if (userCompany == null) {
            userCompany = new Company();
            userCompany.setUser(user);
        }
        userCompany.setIndustry(industryService.findById(userCompany.getIndustryId()));
        request.setAttribute("countries", countriesService.findAll());
        request.setAttribute("companySize", companySizeService.findAll());
        request.setAttribute("company", userCompany);
        request.setAttribute("industries", industryService.findAll());
        return "company";
    }

    @PostMapping("/company")
    public String saveTask(@ModelAttribute Company company, BindingResult bindingResult, HttpServletRequest request) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        
        // get the old company instance and set the new company id with the old one's id
        User user = userService.findByUsername(authentication.getName());
        Company oldCompany = companyService.findCompany(user);
        company.setUser(user);
        if (oldCompany != null) {
            company.setId(oldCompany.getId());
        }
        request.setAttribute("countries", countriesService.findAll());
        request.setAttribute("companySize", companySizeService.findAll());
        request.setAttribute("company", company);
        request.setAttribute("industries", industryService.findAll());
        companyservice.save(company);
        return "company";
    }

}