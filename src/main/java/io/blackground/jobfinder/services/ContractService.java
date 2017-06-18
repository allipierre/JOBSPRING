/**
 * 
 */
package io.blackground.jobfinder.services;

import java.util.List;
import java.util.ArrayList;

import javax.transaction.Transactional;
import org.springframework.stereotype.Service;
import io.blackground.jobfinder.Repository.ContractRepository;
import io.blackground.jobfinder.models.Contract;
import io.blackground.jobfinder.models.Salary;
/**
 * @author yotti
 *
 */
@Service
@Transactional
public class ContractService {

	private final ContractRepository contractRepository;

	public ContractService(ContractRepository salaryRepository) {
		super();
		this.contractRepository = salaryRepository;
	}

	public List<Contract> findAll() {
		List<Contract> contracts = new ArrayList<>();
		for (Contract contract : contractRepository.findAll()) {
			contracts.add(contract);
		}
		return contracts;

	}

	public void save(Contract contract) {
		contractRepository.save(contract);
	}

	public void delete(long id) {
		contractRepository.delete(id);
	}

	public Contract findCountry(long id) {
		return contractRepository.findOne((id));
	}

}