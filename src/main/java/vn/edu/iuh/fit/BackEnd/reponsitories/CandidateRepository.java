package vn.edu.iuh.fit.BackEnd.reponsitories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import vn.edu.iuh.fit.BackEnd.entities.Candidate;

import java.util.List;

@Repository
public interface CandidateRepository extends JpaRepository<Candidate, Long> {
    @Query(value = "SELECT cd from Candidate cd WHERE cd.id in (SELECT cdk.candidate.id FROM CandidateSkill cdk WHERE cdk.skill.skillID in (SELECT jk.skill.skillID FROM JobSkill jk WHERE jk.job.id = ?1))")
    List<Candidate> findCandidateContainsSkillIdByJobID(long id);
}