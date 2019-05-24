package com.miniproject.CarRental.Controller;

import java.sql.Blob;
import java.sql.Date;
import java.sql.Time;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.miniproject.CarRental.Model.Customer;
import com.miniproject.CarRental.Model.Driver;
import com.miniproject.CarRental.Model.Reservation;
import com.miniproject.CarRental.Model.Vehicle;
import com.miniproject.CarRental.Service.CustomerService;
import com.miniproject.CarRental.Service.DriverService;
import com.miniproject.CarRental.Service.ReservationService;
import com.miniproject.CarRental.Service.VehicleService;

@RestController
@RequestMapping("/carrental/api/")
public class AllController {
	@Autowired
	private CustomerService customerService;
	private VehicleService vehicleService;
	private ReservationService reservationService;
	private DriverService driverService;

	/*
	 * @GetMapping("/save-customer") public String saveCustomer(@RequestParam String
	 * fullnameCustomer, @RequestParam String usernameCustomer,
	 * 
	 * @RequestParam String passwordCustomer, @RequestParam String emailCustomer,
	 * 
	 * @RequestParam long contactnoCustomer) { Customer customer = new
	 * Customer(fullnameCustomer, usernameCustomer, passwordCustomer, emailCustomer,
	 * contactnoCustomer); customerService.saveMyCustomer(customer); return
	 * "User Saved"; }
	 */
	/*
	 * @GetMapping("/save-customer-edit") public String
	 * saveCustomerEdit(@RequestParam String fullnameCustomer, @RequestParam String
	 * usernameCustomer,
	 * 
	 * @RequestParam String passwordCustomer, @RequestParam String emailCustomer,
	 * 
	 * @RequestParam long contactnoCustomer) { Customer customer = new
	 * Customer(fullnameCustomer, usernameCustomer, passwordCustomer, emailCustomer,
	 * contactnoCustomer); customerService.saveMyCustomer(customer); return
	 * "User Saved"; }
	 */

	/*
	 * @GetMapping("/savevehicle") public String saveVehicle(@RequestParam String
	 * nameVehicle, @RequestParam String typeVehicle,
	 * 
	 * @RequestParam int yearVehicle, @RequestParam int
	 * capacityVehicle, @RequestParam String descriptionVehicle,
	 * 
	 * @RequestParam int priceVehicle, @RequestParam byte[] imageVehicle) { Vehicle
	 * vehicle = new Vehicle(nameVehicle, typeVehicle, yearVehicle, capacityVehicle,
	 * descriptionVehicle, priceVehicle, imageVehicle);
	 * vehicleService.saveMyVehicle(vehicle); return "Vehicle Saved"; }
	 */

	/*
	 * @GetMapping("/savedriver") public String saveDriver(@RequestParam String
	 * fullnameDriver, @RequestParam String usernameDriver,
	 * 
	 * @RequestParam String passwordDriver, @RequestParam int priceDriver) { Driver
	 * driver = new Driver(fullnameDriver, usernameDriver, passwordDriver,
	 * priceDriver); driverService.saveMyDriver(driver); return "Driver Saved"; }
	 */
	/*
	 * @GetMapping("/save-reservation") public String saveReservation(@RequestParam
	 * int idReservation, @RequestParam Customer customer,
	 * 
	 * @RequestParam Vehicle vehicle, @RequestParam Driver driver, @RequestParam
	 * String rentDate,
	 * 
	 * @RequestParam String rentTime, @RequestParam int rentDuration, @RequestParam
	 * String rentStatus,
	 * 
	 * @RequestParam int totalPayment,@RequestParam String statusPayment ) {
	 * Reservation reservation = new Reservation(idReservation, customer, vehicle,
	 * driver, rentDate, rentTime, rentDuration, rentStatus,
	 * totalPayment,statusPayment);
	 * reservationService.saveMyReservation(reservation); return
	 * "Reservation Saved"; }
	 */
}