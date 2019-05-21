package com.miniproject.CarRental.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.miniproject.CarRental.Model.Driver;
import com.miniproject.CarRental.Repository.DriverRepository;

@Service
@Transactional
public class DriverService {

	private final DriverRepository driverRepository;

	public DriverService(DriverRepository driverRepository) {
		this.driverRepository = driverRepository;

	}
	
	public void saveMyDriver(Driver driver){
		driverRepository.save(driver);

		}

	public List<Driver> showAllDrivers() {
		List<Driver> drivers = new ArrayList<Driver>();
		for (Driver driver : driverRepository.findAll()) {
			drivers.add(driver);
		}
		return drivers;
	}
	/*
	 * List<Driver> drivers = new ArrayList<Driver>(); List<Driver> drivers =
	 * (List<Driver>) driverRepository.findAll(); return drivers; }
	 */
	public void deleteMyDriver(int idDriver) {
		driverRepository.deleteById(idDriver);
	}
	
	
	
	  public Driver editDriver(int idDriver) { return
	  driverRepository.findById(idDriver).orElse(null); }
	 
	
	
	/*
	 * public Driver findbyIdDriver(int idDriver) { return
	 * driverRepository.findById(idDriver); }
	 */

	
//	public Driver findByUsernameDriverAndPasswordDriver(String usernameDriver, String passwordDriver) {
//		return driverRepository.findByUsernameDriverAndPasswordDriver(usernameDriver, passwordDriver);
//	}
	
	public Driver findByUsernameDriverAndPasswordDriver(String usernameDriver, String passwordDriver) {
		Driver driver = driverRepository.findByUsernameDriverAndPasswordDriver(usernameDriver, passwordDriver);
		return driver;
	}

	/*
	 * public Driver findById(int idDriver) { // TODO Auto-generated method stub
	 * return null; }
	 */

}
