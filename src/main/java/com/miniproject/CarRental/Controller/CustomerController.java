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

import com.miniproject.CarRental.Model.Customer;
import com.miniproject.CarRental.Service.CustomerService;

import io.swagger.annotations.ApiOperation;

@Controller
public class CustomerController {
	@Autowired
	CustomerService customerService;

	@ApiOperation(value = "homecustomer", notes = "Returns the Data from user database with....")
	@RequestMapping("/login")
	public String login(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_LOGIN_CUSTOMER");
		return "customerlogin";
	}

	@RequestMapping(value = "/login-customer", method = RequestMethod.POST)
	public String loginCustomer(ModelMap model, @ModelAttribute Customer customer, HttpServletRequest request) {
		Customer customerData = customerService.findByUsernameCustomerAndPasswordCustomer(
				customer.getusernameCustomer(), customer.getpasswordCustomer());

		if (customerData != null) {
			int customerId = customerData.getidCustomer();
			customer.setidCustomer(customerId);
			/*
			 * String customerFullname =customerData.getfullnameCustomer();
			 * customer.setfullnameCustomer(customerFullname);
			 */

			return "homecustomer";
		} else {
			request.setAttribute("error", "Invalid Username or Password");
			request.setAttribute("mode", "MODE_LOGIN_CUSTOMER");
			return "customerlogin";
		}

	}

	@RequestMapping("/logout-customer")
	public String logoutCustomer(@ModelAttribute Customer customer, HttpServletRequest request, Object logout) {
		request.setAttribute("mode", "MODE_LOGIN_CUSTOMER");
		return "homeutama";
	}

	@RequestMapping("/customer")
	public String homeCustomer(@ModelAttribute Customer customer, HttpServletRequest request, Object logout) {
		request.setAttribute("mode", "MODE_LOGIN_CUSTOMER");
		return "homecustomer";
	}

	/*
	 * @RequestMapping("/reservation") public String Reservation(HttpServletRequest
	 * request) { request.setAttribute("mode", "MODE_HOME"); return "reservation"; }
	 */

	@RequestMapping("/register")
	public String registration(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_REGISTER");
		return "customerregistration";
	}

	@PostMapping("/save-customer")
	public String registerCustomer(@ModelAttribute Customer customer, BindingResult bindingResult,
			HttpServletRequest request) {
		customerService.saveMyCustomer(customer);
		request.setAttribute("mode", "MODE_REGISTER");
		return "redirect:/login";
	}

	@RequestMapping("/forgotpassword")
	public String forgotpassword(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_REGISTER");
		return "forgotpassword";
	}

	@PostMapping("/save-password")
	public String recoveryPassword(@ModelAttribute Customer customer, BindingResult bindingResult,
			HttpServletRequest request) {
		customerService.saveMyPassword(customer);
		request.setAttribute("mode", "MODE_RECOVERY");
		return "redirect:/login";
	}

	@GetMapping("/show-customers")
	public String showAllCustomers(HttpServletRequest request) {
		request.setAttribute("customers", customerService.showAllCustomers());
		request.setAttribute("mode", "ALL_CUSTOMERS");
		return "homeadmin";

	}

//
	@RequestMapping("/delete-customer")
	public String deleteCustomer(@RequestParam int idCustomer, HttpServletRequest request) {
		customerService.deleteMyCustomer(idCustomer);
		request.setAttribute("customers", customerService.showAllCustomers());
		request.setAttribute("mode", "ALL_CUSTOMERS");
		return "homeadmin";
	}

	@RequestMapping("/edit-customer")
	public String editCustomer(@RequestParam int idCustomer, HttpServletRequest request) {
		request.setAttribute("customer", customerService.editCustomer(idCustomer));
		request.setAttribute("mode", "MODE_UPDATE_CUSTOMER");
		return "customeredit";
	}
	/*
	 * @PostMapping("/save-customer-edit") public String
	 * editCustomer(@ModelAttribute Customer customer, BindingResult bindingResult,
	 * HttpServletRequest request) { customerService.saveMyCustomer(customer);
	 * //request.setAttribute("mode", "MODE_REGISTER"); return "redirect:/customer";
	 * }
	 */

}