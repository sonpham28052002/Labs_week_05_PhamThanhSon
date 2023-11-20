package vn.edu.iuh.fit.BackEnd.reponsitories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.stereotype.Repository;
import vn.edu.iuh.fit.BackEnd.entities.Candidate;
import vn.edu.iuh.fit.BackEnd.entities.CandidateSkill;
import vn.edu.iuh.fit.BackEnd.entities.Job;

import java.util.List;

@Repository
public interface JobRepository extends JpaRepository<Job, Long> {
    @Query(value = "select jb from Job jb where jb.id in (select jk.job.id from JobSkill jk where jk.skill.skillID in (select csk.skill.skillID from CandidateSkill csk where csk.candidate.id = ?1)) ")
    List<Job> findJobContainsSkillIDOfCandidateByCandidateID(long can_id);

}