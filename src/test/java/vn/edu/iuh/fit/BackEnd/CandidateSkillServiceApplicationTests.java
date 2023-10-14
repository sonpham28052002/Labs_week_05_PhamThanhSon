package vn.edu.iuh.fit.BackEnd;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import vn.edu.iuh.fit.BackEnd.entities.Candidate;
import vn.edu.iuh.fit.BackEnd.reponsitories.CandidateSkillRepository;

@SpringBootTest
public class CandidateSkillServiceApplicationTests {
    @Autowired
    private CandidateSkillRepository repository;
    @Test
    void findAll(){
        repository.findAll().forEach(System.out::println);
    }
}
