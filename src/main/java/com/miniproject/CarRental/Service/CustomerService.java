package com.miniproject.CarRental.Service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.miniproject.CarRental.Model.Customer;
import com.miniproject.CarRental.Repository.CustomerRepository;

@Service
@Transactional
public class CustomerService {
	@Autowired
	private final CustomerRepository customerRepository;

	public CustomerService(CustomerRepository customerRepository) {
		this.customerRepository = customerRepository;
	}

	public String saveMyCustomer(Customer customer) {
		Customer username = customerRepository.findByUsernameCustomerAndPasswordCustomer(customer.getusernameCustomer(), customer.getpasswordCustomer());
		if(username !=null) {
			return "redirect:/save-customer";
		}else {
			customerRepository.save(customer);
			return "redirect:/save-customer";
		}
	}

	public void saveMyPassword(Customer customer) {
		customerRepository.save(customer);

	}

	public List<Customer> showAllCustomers() {
		List<Customer> customers = new ArrayList<Customer>();
		for (Customer customer : customerRepository.findAll()) {
			customers.add(customer);
		}
		return customers;
	}

	public void deleteMyCustomer(int idCustomer) {
		customerRepository.deleteById(idCustomer);
	}

	public Customer editCustomer(int idCustomer) {
		return customerRepository.findById(idCustomer).orElse(null);
	}

	public Customer findByUsernameCustomerAndPasswordCustomer(String usernameCustomer, String passwordCustomer) {
		return customerRepository.findByUsernameCustomerAndPasswordCustomer(usernameCustomer, passwordCustomer);
	}

}
