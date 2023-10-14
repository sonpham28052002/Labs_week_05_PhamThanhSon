package vn.edu.iuh.fit.BackEnd.reponsitories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import vn.edu.iuh.fit.BackEnd.entities.Company;
@Repository
public interface CompanyRepository extends JpaRepository<Company, Long> {
}