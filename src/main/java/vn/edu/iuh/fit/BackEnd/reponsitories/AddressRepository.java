package vn.edu.iuh.fit.BackEnd.reponsitories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import vn.edu.iuh.fit.BackEnd.entities.Address;
@Repository
public interface AddressRepository extends JpaRepository<Address, Long> {
}