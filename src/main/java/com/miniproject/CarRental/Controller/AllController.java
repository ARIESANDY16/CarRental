package com.miniproject.CarRental.Controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.miniproject.CarRental.Service.VehicleService;

@Controller
public class AllController {
	@Autowired
	
	VehicleService vehicleService;
	

	@RequestMapping("/index")
	public String home(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_HOME");
		return "homeutama";
	}
	
	@RequestMapping("/about-us")
	public String about(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_HOME");
		return "about-us";
	}
	
	@GetMapping("/car-listing")
	public String showVehicles(HttpServletRequest request) throws UnsupportedEncodingException {
		request.setAttribute("vehicles", vehicleService.showAllVehicles());
		request.setAttribute("mode", "ALL_VEHICLES");
		return"car-listing";
		
	}
	
	@RequestMapping("/vehicle-details")
	public String vehicleDetails(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_HOME");
		return "vehicle-details";
	}
	
	@RequestMapping("/contact-us")
	public String contact(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_HOME");
		return "contact-us";
	}
	
	@RequestMapping("/faqs")
	public String faqs(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_HOME");
		return "faqs";
	}
	
	@RequestMapping("/update-password")
	public String updatePassword(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_HOME");
		return "update-password";
	}

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
	 * 
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
	 * 
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
	 * 
	 * @GetMapping("/savedriver") public String saveDriver(@RequestParam String
	 * fullnameDriver, @RequestParam String usernameDriver,
	 * 
	 * @RequestParam String passwordDriver, @RequestParam int priceDriver) { Driver
	 * driver = new Driver(fullnameDriver, usernameDriver, passwordDriver,
	 * priceDriver); driverService.saveMyDriver(driver); return "Driver Saved"; }
	 * 
	 * @GetMapping("/save-reservation") public String saveReservation(@RequestParam
	 * int idReservation, @RequestParam Customer customer,
	 * 
	 * @RequestParam Vehicle vehicle, @RequestParam Driver driver, @RequestParam
	 * String rentDate,
	 * 
	 * @RequestParam String rentTime, @RequestParam int rentDuration, @RequestParam
	 * String rentStatus,
	 * 
	 * @RequestParam int totalPayment) { Reservation reservation = new
	 * Reservation(idReservation, customer, vehicle, driver, rentDate, rentTime,
	 * rentDuration, rentStatus, totalPayment);
	 * reservationService.saveMyReservation(reservation); return
	 * "Reservation Saved"; }
	 */

}