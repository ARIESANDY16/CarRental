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
import org.springframework.web.servlet.ModelAndView;

import com.miniproject.CarRental.Model.Driver;
import com.miniproject.CarRental.Service.DriverService;

@Controller
public class DriverController {

	@Autowired
	DriverService driverService;

	@RequestMapping(value = "/driver", method = RequestMethod.GET)
	public String login(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_LOGIN_DRIVER");
		return "indexdriver";
	}

	// New
	@RequestMapping(value = "/login-driver", method = RequestMethod.POST)
	public String loginDriver(ModelMap model, @ModelAttribute Driver driver, HttpServletRequest request) {
		Driver driverData = driverService.findByUsernameDriverAndPasswordDriver(driver.getUsernameDriver(),
				driver.getPasswordDriver());
		if (driverData != null) {
			int driverId = driverData.getIdDriver();
			request.getSession().setAttribute("driverId", driverId);
			return "dashboarddriver";
		} else {
			request.setAttribute("error", "Invalid Username or Password");
			request.setAttribute("mode", "MODE_LOGIN_DRIVER");
			return "indexdriver";
		}
	}

	@RequestMapping(value = "/logout-driver", method = RequestMethod.GET)
	public String logoutDriver(@ModelAttribute Driver driver, HttpServletRequest request, Object logout) {
		request.setAttribute("mode", "MODE_LOGIN_DRIVER");
		request.getSession().invalidate();
		return "indexdriver";
	}

	@RequestMapping(value = "/add-driver", method = RequestMethod.GET)
	public String driver(HttpServletRequest request) {
		request.setAttribute("mode", "ADD_DRIVER");
		return "dashboard";
	}

	@PostMapping(value = "/save-driver")
	public String saveDriver(@ModelAttribute Driver driver, BindingResult bindingResult, HttpServletRequest request) {
		driverService.saveMyDriver(driver);
		request.setAttribute("mode", "MODE_HOME");
		return "dashboarddriver";
	}

	@PostMapping(value = "/save-driver-admin")
	public String saveDriverByAdmin(@ModelAttribute Driver driver, BindingResult bindingResult,
			HttpServletRequest request) {
		driverService.saveMyDriver(driver);
		request.setAttribute("mode", "ALL_DRIVERS_ADMIN");
		return "redirect:/show-drivers";
	}

	@GetMapping("/show-drivers")
	public String showAllDrivers(HttpServletRequest request) {
		request.setAttribute("drivers", driverService.showAllDrivers());
		request.setAttribute("mode", "ALL_DRIVERS");
		return "dashboard";

	}

	@RequestMapping(value = "/delete-driver", method = RequestMethod.GET)
	public String deleteDriver(@RequestParam int idDriver, HttpServletRequest request) {
		driverService.deleteMyDriver(idDriver);
		request.setAttribute("drivers", driverService.showAllDrivers());
		request.setAttribute("mode", "ALL_DRIVERS");
		return "redirect:/show-drivers";
	}

	@RequestMapping(value = "/edit-driver")
	public ModelAndView editDriver(HttpServletRequest request) {
		int idDriver = (int) request.getSession().getAttribute("driverId");
		// request.setAttribute("driver", driverService.editDriver(idDriver));
		request.setAttribute("mode", "UPDATE_DRIVER");
		Driver driver = driverService.editDriver(idDriver);
		return new ModelAndView("dashboarddriver", "driver", driver);
	}

	
	@RequestMapping(value = "/edit-driver-admin", method = RequestMethod.GET)
	public String editDriverByAdmin(@RequestParam int idDriver, HttpServletRequest request) {
		request.setAttribute("driver", driverService.editDriver(idDriver));
		request.setAttribute("mode", "UPDATE_DRIVER_ADMIN");
		return "dashboard";
	}

}



