package com.miniproject.CarRental.Repository;



import org.springframework.data.repository.CrudRepository;


import com.miniproject.CarRental.Model.Vehicle;

public interface VehicleRepository extends CrudRepository<Vehicle, Integer> {
	
	/* List<Article> */
	
}