package vn.edu.iuh.fit.BackEnd.resources;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import vn.edu.iuh.fit.BackEnd.entities.CandidateSkill;
import vn.edu.iuh.fit.BackEnd.reponsitories.CandidateSkillRepository;

import java.util.List;

@RestController()
@RequestMapping(path = "/candidateskill")
public class CandidateSkillResouce {
    @Autowired
    private CandidateSkillRepository repository;
    @GetMapping()
    public List<CandidateSkill> getAll(){
        return repository.findAll();
    }
}
