package com.miniproject.CarRental.Controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.miniproject.CarRental.Model.Driver;
import com.miniproject.CarRental.Service.DriverService;

@Controller
public class DriverController {

	@Autowired
	DriverService driverService;
	
	@RequestMapping(value = "/driver", method = RequestMethod.GET)
	public String login(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_LOGIN_DRIVER");
		return "driverlogin";
	}
	@RequestMapping(value = "/login-driver", method= RequestMethod.POST)
	public String loginDriver(@ModelAttribute Driver driver, HttpServletRequest request) {
		if (driverService.findByUsernameDriverAndPasswordDriver(driver.getUsernameDriver(),
				driver.getPasswordDriver()) != null) {
			return "homedriver";
		} else {
			request.setAttribute("error", "Invalid Username or Password");
			request.setAttribute("mode", "MODE_LOGIN_DRIVER");
			return "driverlogin";
		}

	}
	
	@RequestMapping(value = "/logout-driver", method = RequestMethod.GET)
	public String logoutDriver(@ModelAttribute Driver driver, HttpServletRequest request, Object logout) {
		request.setAttribute("mode", "MODE_LOGIN_DRIVER");
		return "driverlogin";
	}
	
	@RequestMapping(value = "/adddriver", method = RequestMethod.GET)
	public String driver(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_ADD_DRIVER");
		return "homeadmin";
	}
	@PostMapping(value = "/save-driver")
	public String addNewDriver(@ModelAttribute Driver driver, BindingResult bindingResult,
			HttpServletRequest request) {
		driverService.saveMyDriver(driver);
		request.setAttribute("mode", "MODE_HOME");
		return "homeadmin";
	}
	
	@GetMapping("/show-drivers")
	public String showAllDrivers(HttpServletRequest request) {
		request.setAttribute("drivers", driverService.showAllDrivers());
		request.setAttribute("mode", "ALL_DRIVERS");
		return "homeadmin";

	}
	
	@RequestMapping(value = "/delete-driver", method = RequestMethod.GET)
	public String deleteDriver(@RequestParam int idDriver, HttpServletRequest request) {
		driverService.deleteMyDriver(idDriver);
		request.setAttribute("drivers", driverService.showAllDrivers());
		request.setAttribute("mode", "ALL_DRIVERS");
		return "homeadmin";
	}
	@RequestMapping(value ="/edit-driver", method = RequestMethod.GET)
	public String editDriver(@RequestParam int idDriver, HttpServletRequest request) {
		request.setAttribute("driver", driverService.editDriver(idDriver));
		request.setAttribute("mode", "MODE_UPDATE_DRIVER");
		return "homeadmin";
	}
}
