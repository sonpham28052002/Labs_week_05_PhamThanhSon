package vn.edu.iuh.fit.BackEnd.ids;

import vn.edu.iuh.fit.BackEnd.entities.Job;
import vn.edu.iuh.fit.BackEnd.entities.Skill;

import java.io.Serializable;
import java.util.Objects;

public class JobSkillID implements Serializable {
    private Job job;
    private Skill skill;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        JobSkillID that = (JobSkillID) o;

        if (!skill.equals(that.skill)) return false;
        return job.equals(that.job);
    }

    @Override
    public int hashCode() {
        int result = skill.hashCode();
        result = 31 * result + job.hashCode();
        return result;
    }
}
