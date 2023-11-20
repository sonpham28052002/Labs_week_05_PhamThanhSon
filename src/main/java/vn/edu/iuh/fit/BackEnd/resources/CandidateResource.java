package vn.edu.iuh.fit.BackEnd.resources;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;
import vn.edu.iuh.fit.BackEnd.entities.Candidate;
import vn.edu.iuh.fit.BackEnd.reponsitories.CandidateRepository;

import java.util.List;
import java.util.Optional;

@RestController()
@RequestMapping(value = "/candidate",produces = {MediaType.APPLICATION_JSON_VALUE})
public class CandidateResource {
    @Autowired
    private CandidateRepository repository;
    @GetMapping()
    public List<Candidate> getAll(){
        repository.findAll().forEach(System.out::println);
        return repository.findAll();
    }
    @GetMapping(value = "/id={id}")
    public Optional<Candidate> getCandidateById(@PathVariable("id") long id){
        return repository.findById(id);
    }

    @PutMapping(value = "/id={id}")
    public Candidate update(@PathVariable("id") long id, @RequestBody Candidate candidate){
        Candidate candidate1 = candidate;
        candidate1.setId(id);
        return repository.save(candidate1);
    }

    @PostMapping()
    public Candidate insert(@RequestBody Candidate candidate){
        return repository.save(candidate);
    }

    @DeleteMapping("/id={id}")
    public boolean delete(@PathVariable("id") long id)
    {
        repository.deleteById(id);
        return repository.findById(id).isPresent();
    }
}
