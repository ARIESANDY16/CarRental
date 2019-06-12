package com.miniproject.CarRental.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.miniproject.CarRental.Model.Driver;

public interface DriverRepository extends CrudRepository<Driver, Integer> {

	public Driver findByUsernameDriverAndPasswordDriver(String usernameDriver, String passwordDriver);

		@Query(value = "SELECT d FROM Driver d where d.statusDriver ='Standby' order by d.idDriver")
	List<Driver> findByDriverStatusStandby();

}
