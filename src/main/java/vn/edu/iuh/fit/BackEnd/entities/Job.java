package vn.edu.iuh.fit.BackEnd.entities;

import jakarta.persistence.*;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Entity
@Table(name = "job")
@Data
@EqualsAndHashCode(exclude = {"id"})
public class Job {
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
}
