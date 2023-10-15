package vn.edu.iuh.fit.FrontEnd.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import vn.edu.iuh.fit.BackEnd.reponsitories.CandidateRepository;

@Controller
public class CandidateController {
    @Autowired
    private CandidateRepository candidateRepository;
    @GetMapping("/list")
    public String showCandidateList(Model model){
        model.addAttribute("candidates",candidateRepository.findAll());
        return "candidates/candidates";
    }
}
