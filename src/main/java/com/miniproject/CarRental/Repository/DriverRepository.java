package com.miniproject.CarRental.Repository;

import org.springframework.data.repository.CrudRepository;

import com.miniproject.CarRental.Model.Driver;

public interface DriverRepository extends CrudRepository<Driver, Integer> {

	public Driver findByUsernameDriverAndPasswordDriver(String usernameDriver, String passwordDriver);

}
