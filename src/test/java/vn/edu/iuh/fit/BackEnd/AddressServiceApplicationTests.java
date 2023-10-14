package vn.edu.iuh.fit.BackEnd;

import com.neovisionaries.i18n.CountryCode;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import vn.edu.iuh.fit.BackEnd.entities.Address;
import vn.edu.iuh.fit.BackEnd.reponsitories.AddressRepository;
import vn.edu.iuh.fit.BackEnd.services.AddessService;

@SpringBootTest
class AddressServiceApplicationTests {
	@Autowired
	private AddessService service;
	@Test
	void insert() {
		Address address1 = Address.builder().city("TP hcm").country(CountryCode.VN).number("789").street("Quận 1").zipcode("700000").build();
		System.out.println(address1);
		System.out.println(service.insert(address1));
	}

	@Test
	void findAll(){
		service.findAll().forEach(System.out::println);
	}
}
