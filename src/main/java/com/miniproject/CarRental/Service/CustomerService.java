package com.miniproject.CarRental.Service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.miniproject.CarRental.Model.Customer;
import com.miniproject.CarRental.Repository.CustomerRepository;

@Service
@Transactional
public class CustomerService {
	
	private final CustomerRepository customerRepository;

	public CustomerService(CustomerRepository customerRepository) {
		this.customerRepository = customerRepository;
	}

	public void saveMyCustomer(Customer customer) {
		customerRepository.save(customer);

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

//	public List<Customer> showAllCustomers(String usernameCustomer) {   
//		List<Customer> Customers = new ArrayList<Customer>();   
//		for (Customer customers : customerRepository.findAllById(ids)) {    
//			if (customers.getusernameCustomer().equals(usernameCustomer)) {     
//				Customers.add(customers);    
//				}   
//			return Customers;
//			}
//	}

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
