package vn.edu.iuh.fit.BackEnd;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.transaction.annotation.Transactional;
import vn.edu.iuh.fit.BackEnd.entities.Candidate;
import vn.edu.iuh.fit.BackEnd.reponsitories.CandidateRepository;

@SpringBootTest
public class CandidateServiceApplicationTests {
    @Autowired
    private CandidateRepository repository;
    @Test
    void findAll(){
        long id =1;
        repository.findById(id).get().getCandidateSkills().forEach(System.out::println);
    }

}
