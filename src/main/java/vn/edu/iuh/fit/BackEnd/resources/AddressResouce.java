package vn.edu.iuh.fit.BackEnd.resources;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import vn.edu.iuh.fit.BackEnd.entities.Address;
import vn.edu.iuh.fit.BackEnd.reponsitories.AddressRepository;

import java.util.List;
import java.util.Optional;

@CrossOrigin(origins = "http://localhost:19006/")
@RestController()
@RequestMapping("/address")
public class AddressResouce{

    @Autowired
    private AddressRepository repository;
    @GetMapping()
    public List<Address> getAll() {
        return repository.findAll();
    }

    @GetMapping(value = "/{id}")
    public Optional<Address> getAddressBy(@PathVariable("id") long id){
        return repository.findById(id);
    }
    @PutMapping(value = "id={id}")
    public Address update(@PathVariable("id") long id ,@RequestBody Address address){
        Address ar = Address.builder()
                .city(address.getCity())
                .country(address.getCountry())
                .street(address.getStreet())
                .zipcode(address.getZipcode())
                .number(address.getNumber())
                .id(id).build();
        return repository.save(ar);
    }
    @PostMapping()
    public Address insert(@RequestBody Address address){
        return repository.save(address);
    }

    @DeleteMapping(value = "id={id}")
    public boolean delete(@PathVariable("id") long add_id) {
        repository.deleteById(add_id);
        if (repository.findById(add_id)!=null){
            return true;
        }
        return false;
    }

}
