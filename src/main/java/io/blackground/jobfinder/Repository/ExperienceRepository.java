/**
 * 
 */
package io.blackground.jobfinder.Repository;

import org.springframework.data.repository.CrudRepository;

import io.blackground.jobfinder.models.Countries;
import io.blackground.jobfinder.models.Experience;



/**
 * @author yotti
 *
 */
public interface ExperienceRepository extends CrudRepository<Experience, Long> {

}
