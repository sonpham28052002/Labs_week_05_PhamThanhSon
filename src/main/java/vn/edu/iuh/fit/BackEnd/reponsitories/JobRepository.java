package vn.edu.iuh.fit.BackEnd.reponsitories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.stereotype.Repository;
import vn.edu.iuh.fit.BackEnd.entities.Job;
@Repository
@EnableJpaRepositories
public interface JobRepository extends JpaRepository<Job, Long> {
}