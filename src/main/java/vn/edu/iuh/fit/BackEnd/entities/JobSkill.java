package vn.edu.iuh.fit.BackEnd.entities;

import jakarta.persistence.*;
import lombok.*;
import vn.edu.iuh.fit.BackEnd.ids.JobSkillID;

import java.io.Serializable;

@Entity
@Table(name = "job_skill")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@IdClass(JobSkillID.class)

public class JobSkill implements Serializable {
    @Id
    @ManyToOne
    @JoinColumn(name = "job_id")
    private Job job;

    @Id
    @ManyToOne
    @JoinColumn(name = "skill_id")
    private Skill skill;

    @Column(name = "skill_level", length = 4)
    private String SkillLevel;
    @Column(name = "more_infos" , length = 1000)
    private String moreInfos;

    @Override
    public String toString() {
        return "JobSkill{" +
                ", skill=" + skill +
                ", SkillLevel='" + SkillLevel + '\'' +
                ", moreInfos='" + moreInfos + '\'' +
                '}';
    }
}
