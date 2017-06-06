/**
 * 
 */
package io.blackground.jobfinder.Repository;

import java.util.List;



import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import io.blackground.jobfinder.models.Company;

/**
 * @author yotti
 *
 */

public interface CompanyRepository extends CrudRepository<Company, Integer> {

	@Query(nativeQuery = true)
	public List<Company> findByidIs();

//	@Query(value = "SELECT id,name,website,about,city,location,industry,numbere FROM Company t", nativeQuery = true)
	//@Query(value = "SELECT p FROM Company e JOIN e.Industry p", nativeQuery = true)
	//@Query(value = "select i.name,c.id,c.website,c.about,c.city,c.location,c.numbere,c.name  from Industry i inner join Company c on i.id=c.industry_id", nativeQuery = true)
	
	@Query(value = "SELECT id,name,website,about,city,location,industry,numbere FROM Company t", nativeQuery = true)//@Query(value = "Select * from Company a  left join Industry b on a.industry_id=b.id", nativeQuery = true)
	public List<Company> findJoin();
	
	

}
