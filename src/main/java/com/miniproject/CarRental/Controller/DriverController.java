package com.miniproject.CarRental.Controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.miniproject.CarRental.Model.Driver;
import com.miniproject.CarRental.Service.DriverService;

@Controller
@SessionAttributes("sessionId")
public class DriverController {

	@Autowired
	DriverService driverService;

	@RequestMapping(value = "/driver", method = RequestMethod.GET)
	public String login(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_LOGIN_DRIVER");
		return "driverlogin";
	}

	@RequestMapping(value = "/login-driver", method = RequestMethod.POST)
	public String loginDriver(ModelMap model, @ModelAttribute Driver driver, HttpServletRequest request) {
		Driver driverData = driverService.findByUsernameDriverAndPasswordDriver(driver.getUsernameDriver(),
				driver.getPasswordDriver());
				
		if ( driverData != null) {

			int driverId = driverData.getIdDriver();
		//	String sessionUserName = driver.getUsernameDriver();

//			model.put("sessionId", sessionId);
			driver.setIdDriver(driverId);

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
	public String addNewDriver(@ModelAttribute Driver driver, BindingResult bindingResult, HttpServletRequest request) {
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

	@RequestMapping(value = "/edit-driver", method = RequestMethod.GET)
	public String editDriver(@RequestParam int idDriver, HttpServletRequest request) {
		request.setAttribute("driver", driverService.editDriver(idDriver));
		request.setAttribute("mode", "MODE_UPDATE_DRIVER");
		return "homeadmin";
	}

	/*
	 * @RequestMapping(value = "/edit-driver{idDriver}", method = RequestMethod.GET,
	 * produces = { "application/json" }) public Driver
	 * getIdDriver(@PathVariable("idDriver") String idDriver) { return
	 * driverService.findbyIdDriver(Integer.parseInt(idDriver)); }
	 */

	/*
	 * @RequestMapping("/edit-driver{idDriver}")
	 * 
	 * @ResponseBody public String editDriver(@RequestParam int idDriver,String
	 * fullnameDriver, String usernameDriver, String passwordDriver, int
	 * priceDriver) { try { Driver driver = driverService.findById(idDriver);
	 * driver.setFullnameDriver(fullnameDriver);
	 * driver.setUsernameDriver(usernameDriver);
	 * driver.setPasswordDriver(passwordDriver); driver.setPriceDriver(priceDriver);
	 * } catch (Exception ex) { return "Error updating the user: " + ex.toString();
	 * } return "User successfully updated!"; }
	 */
}
