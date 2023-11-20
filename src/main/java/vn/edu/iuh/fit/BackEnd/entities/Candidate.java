package vn.edu.iuh.fit.BackEnd.entities;

import com.fasterxml.jackson.annotation.*;
import com.neovisionaries.i18n.CountryCode;
import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDate;
import java.util.List;

@Entity
@Table(name = "candidate")
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Data
@EqualsAndHashCode(exclude = {"id"})
@JsonIdentityInfo(generator = ObjectIdGenerators.PropertyGenerator.class,property = "id")
public class Candidate {
    @Id
    @Column(name = "Candidate_ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    @Column(name = "full_name" , length = 255)
    private String fullName;

    @Column(name = "email" , length = 255)
    private String email;

    @Column(name = "phone" , length = 15)
    private String phone;

    @Column(name = "dod" , columnDefinition = "date")
    private LocalDate dod;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "address_id")
    private Address address;

    @OneToMany(mappedBy = "candidate",cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JsonManagedReference
    private List<CandidateSkill> candidateSkills;

    @Override
    public String toString() {
        return "Candidate{" +
                "id=" + id +
                ", fullName='" + fullName + '\'' +
                ", email='" + email + '\'' +
                ", phone='" + phone + '\'' +
                ", dod=" + dod +
                ", address=" + address +
                '}';
    }
}
