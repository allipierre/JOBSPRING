/**
 * 
 */
package io.blackground.jobfinder.Repository;

import org.springframework.data.repository.CrudRepository;

import io.blackground.jobfinder.models.Countries;
import io.blackground.jobfinder.models.Salary;



/**
 * @author yotti
 *
 */
public interface SalaryRepository extends CrudRepository<Salary, Long> {

}
