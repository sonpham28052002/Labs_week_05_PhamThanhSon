package vn.edu.iuh.fit.BackEnd.reponsitories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import vn.edu.iuh.fit.BackEnd.entities.Experience;
@Repository
public interface ExperienceRepository extends JpaRepository<Experience, Long> {
}