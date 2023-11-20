package vn.edu.iuh.fit.BackEnd.entities;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import java.util.List;

@Entity
@Table(name = "company")
@Data
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode(exclude = {"comp_id"})
public class Company {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long comp_id;

    @Column(length = 2000)
    private String about;

    @Column(length = 255)
    private String email;

    @Column(length = 255, name = "comp_name")
    private String compName;

    @Column(length = 255)
    private String phone;

    @Column(length = 255, name = "web_url")
    private String webURL;

    @OneToOne
    @JoinColumn(name = "address_id")
    private Address address;

    @OneToMany(mappedBy = "company" , cascade = CascadeType.ALL)
    private List<Job> jobList;

    @Override
    public String toString() {
        return "Company{" +
                "comp_id=" + comp_id +
                ", about='" + about + '\'' +
                ", email='" + email + '\'' +
                ", compName='" + compName + '\'' +
                ", phone='" + phone + '\'' +
                ", webURL='" + webURL + '\'' +
                '}';
    }
}
