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
	
	
	@RequestMapping("/")
	public String hello(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_HOME");
		return "homeutama";
	}

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
}