package com.miniproject.CarRental.Repository;

import org.springframework.data.repository.CrudRepository;

import com.miniproject.CarRental.Model.Customer;

public interface CustomerRepository extends CrudRepository<Customer, Integer> {
	public Customer findByUsernameCustomerAndPasswordCustomer(String usernameCustomer, String passwordCustomer);
}
