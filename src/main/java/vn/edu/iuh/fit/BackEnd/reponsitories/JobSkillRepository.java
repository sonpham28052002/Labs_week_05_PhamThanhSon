package vn.edu.iuh.fit.BackEnd.reponsitories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import vn.edu.iuh.fit.BackEnd.entities.JobSkill;
import vn.edu.iuh.fit.BackEnd.ids.JobSkillID;
@Repository
public interface JobSkillRepository extends JpaRepository<JobSkill, JobSkillID> {
}