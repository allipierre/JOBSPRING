/**
 * 
 */
package io.blackground.jobfinder.controller;

import javax.servlet.http.HttpServletRequest;

/**
 * @author yotti
 *
 */
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import io.blackground.jobfinder.Repository.UserService;
import io.blackground.jobfinder.models.User;
import io.blackground.jobfinder.services.JobService;
import io.blackground.jobfinder.services.SecurityService;
import io.blackground.jobfinder.services.UserValidator;

/**
 * @author yotti
 *
 */
@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @Autowired
    private SecurityService securityService;

    @Autowired
    private UserValidator userValidator;
    @Autowired
	private JobService jobservice;

    @RequestMapping(value = "/registration", method = RequestMethod.GET)
    public String registration(Model model) {
        model.addAttribute("userForm", new User());

        return "registration";
    }

    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public String registration(@ModelAttribute("userForm") User userForm, BindingResult bindingResult, Model model) {
        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "registration";
        }

        userService.save(userForm);
        

        securityService.autologin(userForm.getUsername(), userForm.getPasswordConfirm());

        return "redirect:/index";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(Model model, String error, String logout) {
        if (error != null)
            model.addAttribute("error", "Your username and password is invalid.");

        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully.");

        return "login";
    }

    @RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET)
    public String home(Model model,HttpServletRequest request) {
    	request.setAttribute("jobhome", jobservice.findTop2ByOrderByIdDesc());
    	
        return "index";
    }
}
