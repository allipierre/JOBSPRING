/**
 * 
 */
package io.blackground.jobfinder.models;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import lombok.Getter;
import lombok.Setter;
/**
 * @author yotti
 *
 */
@Entity
@Getter
@Setter
public class Countries {

    @Id
    @GeneratedValue
	private long id;
	private String name;

}