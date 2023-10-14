package vn.edu.iuh.fit.BackEnd.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import vn.edu.iuh.fit.BackEnd.reponsitories.CandidateRepository;

@Service
public class CandidateService{
    @Autowired
    private CandidateRepository repository;

}
