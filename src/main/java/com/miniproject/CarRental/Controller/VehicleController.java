package com.miniproject.CarRental.Controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.miniproject.CarRental.Model.Vehicle;
import com.miniproject.CarRental.Service.VehicleService;

@Controller
public class VehicleController {

	@Autowired
	VehicleService vehicleService;

	@RequestMapping("/addvehicle")
	public String vehicle(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_ADD_VEHICLE");
		return "homeadmin";
	}
	
	@PostMapping("/save-vehicle")
	public String addNewVehicle(@ModelAttribute Vehicle vehicle, BindingResult bindingResult,HttpServletRequest request)
		{
		vehicleService.saveMyVehicle(vehicle);
		request.setAttribute("mode", "MODE_HOME");
		return"homeadmin";
	}
	
	@GetMapping("/show-vehicles")
	public String showAllVehicles(HttpServletRequest request) {
		request.setAttribute("vehicles", vehicleService.showAllVehicles());
		request.setAttribute("mode", "ALL_VEHICLES_1");
		return"homeadmin";
		
	}
	@GetMapping("/vehicles")
	public String showVehicles(HttpServletRequest request) {
		request.setAttribute("vehicles", vehicleService.showAllVehicles());
		request.setAttribute("mode", "ALL_VEHICLES");
		return"vehiclepage";
		
	}
	
	
	
	@RequestMapping("/delete-vehicle")
	public String deleteVehicle(@RequestParam int idVehicle,HttpServletRequest request) {
		vehicleService.deleteMyVehicle(idVehicle);
		request.setAttribute("vehicles", vehicleService.showAllVehicles());
		request.setAttribute("mode", "ALL_VEHICLES");
		return "homeadmin";
	}
	
	@RequestMapping("/edit-vehicle")
	public String editVehicle(@RequestParam int idVehicle, HttpServletRequest request) {
		request.setAttribute("vehicle", vehicleService.editVehicle(idVehicle));
		request.setAttribute("mode", "MODE_UPDATE_VEHICLE");
		return"homeadmin";
	}
	
	
}
