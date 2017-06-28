package io.blackground.jobfinder.models;

import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
public class MessageChat {

	@Id
	@GeneratedValue
	private long chatID;

	private String message;
	private Date time;
	private boolean response;

	private transient Company company;

}