/**
 * 
 */
package io.blackground.jobfinder.models;

/**
 * @author yotti
 *
 */

import org.springframework.data.annotation.Id;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;

/**
 * @author pierre
 */
@Getter
@Setter
@Entity
public class Message {

	@Id
    @GeneratedValue
	private long id;

	private String text;
	private Company company;
	private Date time;
	private boolean response;

	
}