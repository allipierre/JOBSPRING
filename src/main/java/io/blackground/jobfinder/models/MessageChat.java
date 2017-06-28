/**
 * 
 */
package io.blackground.jobfinder.models;

/**
 * @author yotti
 *
 */

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

import org.springframework.data.annotation.Id;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
public class MessageChat {

	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
	private long id;

	private String message;
	private Date time;
	private boolean response;

	private transient Company company;
	
}