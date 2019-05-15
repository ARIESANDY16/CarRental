package com.miniproject.CarRental.Controller;

import java.sql.Blob;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.miniproject.CarRental.Model.Customer;
import com.miniproject.CarRental.Model.Vehicle;
import com.miniproject.CarRental.Service.CustomerService;
import com.miniproject.CarRental.Service.VehicleService;

import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("carrental/api/")
public class AllController {
	@Autowired
	private CustomerService customerService;
	private VehicleService vehicleService;

	@GetMapping("/save-customer")
	public String saveCustomer(@RequestParam String fullnameCustomer, @RequestParam String usernameCustomer,
			@RequestParam String passwordCustomer, @RequestParam String emailCustomer,
			@RequestParam long contactnoCustomer) {
		Customer customer = new Customer(fullnameCustomer, usernameCustomer, passwordCustomer, emailCustomer,
				contactnoCustomer);
		customerService.saveMyCustomer(customer);
		return "User Saved";
	}

	@GetMapping("/savevehicle")
	public String saveVehicle(@RequestParam String nameVehicle, @RequestParam String typeVehicle,
			@RequestParam int yearVehicle, @RequestParam int capacityVehicle, @RequestParam String descriptionVehicle,
			@RequestParam byte[] imageVehicle, @RequestParam Blob imageProduct) {
		Vehicle vehicle = new Vehicle(capacityVehicle, nameVehicle, typeVehicle, yearVehicle, capacityVehicle,
				descriptionVehicle, imageVehicle, imageProduct);
		vehicleService.saveMyVehicle(vehicle);
		return "Vehicle Saved";
	}
}