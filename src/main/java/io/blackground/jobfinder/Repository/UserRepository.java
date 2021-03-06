/**
 * 
 */
package io.blackground.jobfinder.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import io.blackground.jobfinder.models.User;

/**
 * @author yotti
 *
 */
public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);
}
