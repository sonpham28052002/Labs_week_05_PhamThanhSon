package vn.edu.iuh.fit.BackEnd.entities;

import com.fasterxml.jackson.annotation.*;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vn.edu.iuh.fit.BackEnd.ids.CandidateSkillID;

import java.io.Serializable;

@Entity
@Table(name = "candidateSkill")
@Data
@AllArgsConstructor
@NoArgsConstructor
@IdClass(CandidateSkillID.class)
public class CandidateSkill implements Serializable {
    @Id
    @ManyToOne
    @JoinColumn(name = "candidate_id")
    @JsonBackReference
    private Candidate candidate;

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
        return "CandidateSkill{" +
                ", SkillLevel='" + SkillLevel + '\'' +
                ", moreInfos='" + moreInfos + '\'' +
                '}';
    }
}
