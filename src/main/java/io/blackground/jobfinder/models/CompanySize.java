/**
 * 
 */
package io.blackground.jobfinder.models;

import java.util.Set;

import javax.persistence.CascadeType;

/**
 * @author yotti
 *
 */

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;


import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.Set;

/**
 * @author yotti
 */

@Getter
@Setter
@Entity(name = "company_size")
public class CompanySize {
	@Id
	@GeneratedValue
	private long id;

	private String value;

}