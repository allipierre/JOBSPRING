/**
 * 
 */
package io.blackground.jobfinder.services;

import java.util.List;
import java.util.ArrayList;

import javax.transaction.Transactional;
import org.springframework.stereotype.Service;
import io.blackground.jobfinder.Repository.SalaryRepository;
import io.blackground.jobfinder.models.Salary;
/**
 * @author yotti
 *
 */
@Service
@Transactional
public class SalaryService {

	private final SalaryRepository salaryRepository;

	public SalaryService(SalaryRepository countriesRepository) {
		super();
		this.salaryRepository = countriesRepository;
	}

	public List<Salary> findAll() {
		List<Salary> salaries = new ArrayList<>();
		for (Salary salary : salaryRepository.findAll()) {
			salaries.add(salary);
		}
		return salaries;

	}

	public void save(Salary salary) {
		salaryRepository.save(salary);
	}

	public void delete(long id) {
		salaryRepository.delete(id);
	}

	public Salary findCountry(long id) {
		return salaryRepository.findOne((id));
	}

}