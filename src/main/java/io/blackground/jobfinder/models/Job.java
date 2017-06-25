/**
 * 
 */
package io.blackground.jobfinder.models;

/**
 * @author yotti
 *
 */

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
@Entity
public class Job {
	 @Id
	    @GeneratedValue
		private long id;

	private String position;

	private String description;
	private int minimumExperienceYears;
	private long category;

	private String minimumDegree;
	private int slots;
	private String title;
	private String image;
	private long contrat;
	private Date published;

	//private transient Company company;
	
	@ManyToOne
	private Company company;
	

	
}
