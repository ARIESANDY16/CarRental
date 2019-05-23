package com.miniproject.CarRental.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.miniproject.CarRental.Model.Customer;

/*public interface CustomerRepository extends CrudRepository<Customer, Integer> {
	public Customer findByUsernameCustomerAndPasswordCustomer(String usernameCustomer, String passwordCustomer);
}
*/
public interface CustomerRepository extends JpaRepository<Customer, Integer>, CrudRepository<Customer, Integer> {
	public Customer findByUsernameCustomerAndPasswordCustomer(String usernameCustomer, String passwordCustomer);

	/*
	 * @Query("SELECT new com.jeejava.dto.DeptEmpDto(d.name, e.name, e.email, e.address) "
	 * + "FROM Department d LEFT JOIN d.employees e") List<DeptEmpDto>
	 * fetchEmpDeptDataLeftJoin();
	 * 
	 * @Query("SELECT new com.jeejava.dto.DeptEmpDto(d.name, e.name, e.email, e.address) "
	 * + "FROM Department d RIGHT JOIN d.employees e") List<DeptEmpDto>
	 * fetchEmpDeptDataRightJoin();
	 */

}