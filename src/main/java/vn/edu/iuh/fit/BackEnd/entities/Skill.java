package vn.edu.iuh.fit.BackEnd.entities;

import jakarta.persistence.*;
import lombok.*;
import vn.edu.iuh.fit.BackEnd.enums.SkillType;

@Entity
@Table(name = "skill")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
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

    @Override
    public String toString() {
        return "Skill{" +
                "skillID=" + skillID +
                ", skillDescription='" + skillDescription + '\'' +
                ", skillName='" + skillName + '\'' +
                ", skillType=" + skillType +
                '}';
    }
}
