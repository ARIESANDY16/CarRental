package com.miniproject.CarRental.Repository;

import org.springframework.data.repository.CrudRepository;

import com.miniproject.CarRental.Model.Admin;

public interface AdminRepository extends CrudRepository<Admin, Integer> {
	public Admin findByUsernameAdminAndPasswordAdmin(String usernameAdmin, String passwordAdmin);
}
