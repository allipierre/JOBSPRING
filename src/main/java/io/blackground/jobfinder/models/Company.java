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

import javax.persistence.Id;
import javax.persistence.OneToOne;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;


/**
 * @author yotti
 */

@Getter
@Setter
@Entity

public class Company {

    @Id
    @GeneratedValue
	private long id;

    @Column(name = "company_name")
	private String companyName;
	private String website;
	private String about;
	private String city;
	private String file;
	private int location;
	@Column(name = "industry_id")
	private long industryId;
	private long countryId;
	private long numbere;
	private long sizeId;

	private transient Industry industry;
	private transient Countries countries;

	
	private transient CompanySize companySize;

	@OneToOne
	private User user;
}