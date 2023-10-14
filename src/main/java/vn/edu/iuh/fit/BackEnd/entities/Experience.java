package vn.edu.iuh.fit.BackEnd.entities;

import jakarta.persistence.*;
import lombok.Data;

import java.time.LocalDate;

@Entity
@Table(name = "experience")
@Data
public class Experience {
    @Id
    @Column(length = 20, name = "experience_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "candidate_id")
    private Candidate candidate;

    @Column(name = "company_name", length = 120)
    private String companyName;

    @Column(length = 100)
    private String role;

    @Column(name = "work_desc" , length = 400)
    private String workDesc;

    @Column(name = "to_date", columnDefinition = "date")
    private LocalDate toDate;

    @Column(name = "from_date", columnDefinition = "date")
    private LocalDate fromDate;


}
