package io.blackground.jobfinder.models;

import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
public class MessageChat {

	@Id
	@GeneratedValue
	private long id;

	private String message;
	private String time;
	private boolean response;
	
	@ManyToOne
	private Company company;

}