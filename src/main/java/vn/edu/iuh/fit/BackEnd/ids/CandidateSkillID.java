package vn.edu.iuh.fit.BackEnd.ids;

import vn.edu.iuh.fit.BackEnd.entities.Candidate;
import vn.edu.iuh.fit.BackEnd.entities.Skill;

import java.io.Serializable;
import java.util.Objects;

public class CandidateSkillID implements Serializable {
    private Candidate candidate;
    private Skill skill;


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        CandidateSkillID that = (CandidateSkillID) o;
        return Objects.equals(candidate, that.candidate) && Objects.equals(skill, that.skill);
    }

    @Override
    public int hashCode() {
        return Objects.hash(candidate, skill);
    }
}
