/**
 * 
 */
package io.blackground.jobfinder.Repository;

import org.springframework.data.repository.CrudRepository;

import io.blackground.jobfinder.models.Countries;



/**
 * @author yotti
 *
 */
public interface CountriesRepository extends CrudRepository<Countries, Long> {

}
