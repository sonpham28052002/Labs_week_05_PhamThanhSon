package vn.edu.iuh.fit.BackEnd.entities;

import jakarta.persistence.*;
import lombok.Data;
import lombok.EqualsAndHashCode;
import vn.edu.iuh.fit.BackEnd.enums.SkillType;

@Entity
@Data
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
public class Skill {
    @Id
    @Column(name = "skill_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long skillID;
    @Column(name = "skill_desc" ,length = 300)
    private String skillDescription;
    @Column(name = "skill_name" ,length = 150)
    private String skillName;
    @Column(name = "skill_type")
    private SkillType skillType;

}
