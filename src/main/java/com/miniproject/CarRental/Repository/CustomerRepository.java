package com.miniproject.CarRental.Repository;

import java.awt.print.Pageable;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.miniproject.CarRental.Model.Customer;
import com.miniproject.CarRental.Model.Reservation;

/*public interface CustomerRepository extends CrudRepository<Customer, Integer> {
	public Customer findByUsernameCustomerAndPasswordCustomer(String usernameCustomer, String passwordCustomer);
}
*/
public interface CustomerRepository extends JpaRepository<Customer, Integer>, CrudRepository<Customer, Integer> {
	public Customer findByUsernameCustomerAndPasswordCustomer(String usernameCustomer, String passwordCustomer);

	


}