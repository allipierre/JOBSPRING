/**
 * 
 */
package io.blackground.jobfinder.services;

import java.util.List;
import java.util.ArrayList;

import javax.transaction.Transactional;
import org.springframework.stereotype.Service;
import io.blackground.jobfinder.Repository.ExperienceRepository;
import io.blackground.jobfinder.models.Experience;
/**
 * @author yotti
 *
 */
@Service
@Transactional
public class ExperienceService {

	private final ExperienceRepository experienceRepository;

	public ExperienceService(ExperienceRepository experienceRepository) {
		super();
		this.experienceRepository = experienceRepository;
	}

	public List<Experience> findAll() {
		List<Experience> experiences = new ArrayList<>();
		for (Experience experience : experienceRepository.findAll()) {
			experiences.add(experience);
		}
		return experiences;

	}

	public void save(Experience country) {
		experienceRepository.save(country);
	}

	public void delete(long id) {
		experienceRepository.delete(id);
	}

	public Experience findCountry(long id) {
		return experienceRepository.findOne((id));
	}

}