/**
 * 
 */
package io.blackground.jobfinder.services;

import java.util.List;
import java.util.ArrayList;

import javax.transaction.Transactional;
import org.springframework.stereotype.Service;
import io.blackground.jobfinder.Repository.CountriesRepository;
import io.blackground.jobfinder.models.Countries;
/**
 * @author yotti
 *
 */
@Service
@Transactional
public class CountriesService {

	private final CountriesRepository countriesRepository;

	public CountriesService(CountriesRepository countriesRepository) {
		super();
		this.countriesRepository = countriesRepository;
	}

	public List<Countries> findAll() {
		List<Countries> countries = new ArrayList<>();
		for (Countries country : countriesRepository.findAll()) {
			countries.add(country);
		}
		return countries;

	}

	public void save(Countries country) {
		countriesRepository.save(country);
	}

	public void delete(long id) {
		countriesRepository.delete(id);
	}

	public Countries findCountry(long id) {
		return countriesRepository.findOne((id));
	}

}