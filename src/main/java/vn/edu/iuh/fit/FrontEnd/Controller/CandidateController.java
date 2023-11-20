package vn.edu.iuh.fit.FrontEnd.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import vn.edu.iuh.fit.BackEnd.entities.Candidate;
import vn.edu.iuh.fit.BackEnd.entities.Company;
import vn.edu.iuh.fit.BackEnd.entities.Job;
import vn.edu.iuh.fit.BackEnd.entities.Skill;
import vn.edu.iuh.fit.BackEnd.reponsitories.*;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value="/CandidateController")
public class CandidateController {
    @Autowired
    private CandidateRepository candidateRepository;

    @Autowired
    private JobRepository jobRepository;

    @Autowired
    private CompanyRepository companyRepository;

    @Autowired
    private SkillRepository skillRepository;
    @GetMapping("/list")
    public String showCandidateList(Model model) {
        candidateRepository.findAll().forEach(System.out::println);
        List<Candidate> list = candidateRepository.findAll();
        model.addAttribute("listCandidate", list);
        return "candidates/candidates";
    }

    @GetMapping("/listJob")
    public String showJobList(Model model) {
        System.out.println(jobRepository.findAll().get(0));
        model.addAttribute("listCandidate", jobRepository.findAll());
        return "candidates/Job";
    }
    @GetMapping("/ShowMore/{id}")
    public String showMoreCandidate(@PathVariable("id") long id, Model model){
        model.addAttribute("jobByCandidate",jobRepository.findJobContainsSkillIDOfCandidateByCandidateID(id));
        model.addAttribute("candidate",candidateRepository.findById(id).get());
        return "candidates/ShowMoreCandidate";
    }
    @GetMapping("/ShowMoreJob/{id}")
    public String showMoreJob(@PathVariable("id") long id, Model model){
        model.addAttribute("listCandidate",candidateRepository.findCandidateContainsSkillIdByJobID(id));
        System.out.println(jobRepository.findById(id).get());
        model.addAttribute("jobs",jobRepository.findById(id).get());
        return "candidates/ShowMoreJob";
    }

    @GetMapping("/addJob")
    public ModelAndView addJob( ) {
        Job job = new Job();
        List<Long> skillOfJob = new ArrayList<>();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("newJob", job);
        modelAndView.addObject("skillOfJob", new ArrayList<Long>());
        modelAndView.addObject("companyOfJob", new Company());
        modelAndView.addObject("companys",companyRepository.findAll());
        modelAndView.addObject("skills",skillRepository.findAll());
        modelAndView.setViewName("candidates/addJob");
        return modelAndView;
    }
    @GetMapping("/addNewJob")
    public String addNewJob(@ModelAttribute("newJob") Job job,Model model){
        System.out.println(job);
        jobRepository.save(job);
        model.addAttribute("listCandidate", jobRepository.findAll());
        return "candidates/Job";
    }

}
