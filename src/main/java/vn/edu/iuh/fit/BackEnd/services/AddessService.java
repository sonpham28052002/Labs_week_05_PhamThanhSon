package vn.edu.iuh.fit.BackEnd.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import vn.edu.iuh.fit.BackEnd.entities.Address;
import vn.edu.iuh.fit.BackEnd.reponsitories.AddressRepository;

import java.util.List;

@Service
public class AddessService {
    @Autowired
    private AddressRepository repository;

    public boolean insert(Address address){
        boolean check = repository.save(address) !=null;
        return check;
    }
    public List<Address> findAll(){
        return repository.findAll();
    }
}
