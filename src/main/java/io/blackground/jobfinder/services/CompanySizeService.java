/**
 * 
 */
package io.blackground.jobfinder.services;

import java.util.List;
import java.util.ArrayList;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import io.blackground.jobfinder.Repository.CompanySizeRepository;
import io.blackground.jobfinder.models.CompanySize;


/**
 * @author yotti
 *
 */
@Service
@Transactional
public class CompanySizeService {

	private final CompanySizeRepository compagySizeRepository;

	/**
	 * @param taskRepository
	 */
	public CompanySizeService(CompanySizeRepository countriesRepository) {
		super();
		this.compagySizeRepository = countriesRepository;
	}

	public List<CompanySize> findAll() {
		List<CompanySize> countries = new ArrayList<>();
		for (CompanySize country : compagySizeRepository.findAll()) {
			countries.add(country);
		}
		return countries;

	}



	public void save(CompanySize companySize) {
		compagySizeRepository.save(companySize);
	}

	public void delete(Long id) {
		compagySizeRepository.delete(id);
	}

	public CompanySize findCountry(Long id) {
		return compagySizeRepository.findOne(id);
	}

}
