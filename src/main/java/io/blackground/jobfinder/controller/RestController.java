/**
 * 
 */
package io.blackground.jobfinder.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import io.blackground.jobfinder.models.Job;
import io.blackground.jobfinder.services.JobService;

/**
 * @author yotti
 *
 */

@org.springframework.web.bind.annotation.RestController
@RequestMapping("/meinejobs")
public class RestController {
	@Autowired
	private JobService jobservice;
	@RequestMapping(method=RequestMethod.GET)
	  public List<Job> getAll() {
	    return jobservice.findAll();
	  }
	  
	  @RequestMapping(method=RequestMethod.POST)
	  public Job create(@RequestBody Job contact) {
	    return null;
	  }
	  
	  @RequestMapping(method=RequestMethod.DELETE, value="{id}")
	  public void delete(@PathVariable Long id) {
		  jobservice.delete(id);
	  }
	  
	  @RequestMapping(method=RequestMethod.PUT, value="{id}")
	  public Job update(@PathVariable String id, @RequestBody Job contact) {
	  return null;
	  }

	}