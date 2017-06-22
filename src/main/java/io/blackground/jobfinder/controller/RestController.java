/**
 * 
 */
package io.blackground.jobfinder.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import io.blackground.jobfinder.models.Job;

/**
 * @author yotti
 *
 */
@org.springframework.web.bind.annotation.RestController
@RequestMapping("/contacts")
public class RestController {
	@RequestMapping(method=RequestMethod.GET)
	  public List<Job> getAll() {
	    return new ArrayList<Job>();
	  }
	  
	  @RequestMapping(method=RequestMethod.POST)
	  public Job create(@RequestBody Job contact) {
	    return null;
	  }
	  
	  @RequestMapping(method=RequestMethod.DELETE, value="{id}")
	  public void delete(@PathVariable String id) {

	  }
	  
	  @RequestMapping(method=RequestMethod.PUT, value="{id}")
	  public Job update(@PathVariable String id, @RequestBody Job contact) {
	  return null;
	  }

	}