/**
 * 
 */
package io.blackground.jobfinder.db;


/**
 * @author yotti
 *
 */
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class RethinkDBConfiguration {
    // connect to docker
    public static final String DBHOST = "192.168.0.227";

    @Bean
    public RethinkDBConnectionFactory connectionFactory() {
        return new RethinkDBConnectionFactory(DBHOST);
    }

    @Bean
    DbInitializer dbInitializer() {
        return new DbInitializer();
    }
}