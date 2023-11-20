package vn.edu.iuh.fit.BackEnd.entities;

import jakarta.persistence.*;
import lombok.*;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "job")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@EqualsAndHashCode(exclude = {"id"})
public class Job implements Serializable {
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "job_id" , length = 20)
    private long id;

    @ManyToOne
    @JoinColumn(name = "company")
    private Company company;

    @Column(name = "job_name", length = 255)
    private String jobName;

    @Column(name = "job_desc" , length = 4000)
    private String jobDesc;

    @OneToMany(mappedBy = "job")
    private List<JobSkill> jobSkills;


    @Override
    public String toString() {
        return "Job{" +
                "id=" + id +
                ", company=" + company +
                ", jobName='" + jobName + '\'' +
                ", jobDesc='" + jobDesc + '\'' +
                ", jobSkills=" + jobSkills +
                '}';
    }
}
