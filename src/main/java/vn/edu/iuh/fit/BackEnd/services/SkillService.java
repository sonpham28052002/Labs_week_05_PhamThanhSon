package vn.edu.iuh.fit.BackEnd.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import vn.edu.iuh.fit.BackEnd.reponsitories.SkillRepository;

@Service
public class SkillService {
    @Autowired
    private SkillRepository repository;
}
