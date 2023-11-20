package vn.edu.iuh.fit.BackEnd.entities;

import com.neovisionaries.i18n.CountryCode;
import jakarta.persistence.*;
import lombok.*;


@Entity
@AllArgsConstructor
@NoArgsConstructor
@Data
@Builder
public class Address {
    @Id
    @Column(name = "address_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(length = 50)
    private String city;

    @Column(length = 6)
    private CountryCode country;

    @Column(length = 20)
    private String number;

    @Column(length = 7)
    private String zipcode;

    @Column(length = 150)
    private String street;

    @Override
    public String toString() {
        return number+", "+zipcode+", "+street +", "+city+", "+country;
    }
}
