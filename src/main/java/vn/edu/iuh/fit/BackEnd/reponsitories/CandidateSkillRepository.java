package vn.edu.iuh.fit.BackEnd.reponsitories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import vn.edu.iuh.fit.BackEnd.entities.CandidateSkill;
import vn.edu.iuh.fit.BackEnd.ids.CandidateSkillID;
@Repository
public interface CandidateSkillRepository extends JpaRepository<CandidateSkill, CandidateSkillID> {
}