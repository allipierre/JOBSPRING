/**
 * 
 */
package io.blackground.jobfinder.controller;

import com.jayway.jsonpath.Configuration;

/**
 * @author yotti
 *
 */
public @interface JsonArg {

	/**
	 * @return
	 */
	public String value() default "";

}
