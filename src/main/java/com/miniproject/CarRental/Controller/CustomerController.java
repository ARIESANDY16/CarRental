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

import com.miniproject.CarRental.Model.Customer;
import com.miniproject.CarRental.Service.CustomerService;

@Controller
public class CustomerController {
	@Autowired
	CustomerService customerService;

	@RequestMapping(value = "/login-customer", method = RequestMethod.POST)
	public String loginCustomer(ModelMap model, @ModelAttribute Customer customer, HttpServletRequest request) {
		Customer customerData = customerService.findByUsernameCustomerAndPasswordCustomer(
				customer.getusernameCustomer(), customer.getpasswordCustomer());

		if (customerData != null) {
			int customerId = customerData.getidCustomer();
			customer.setidCustomer(customerId);
			request.getSession().setAttribute("customerId", customerId);

			return "homeutama";
		} else {
			request.setAttribute("error", "Invalid Username or Password");
			request.setAttribute("mode", "MODE_LOGIN_CUSTOMER");
			return "redirect:/index";
		}

	}

	@RequestMapping("/logout-customer")
	public String logoutCustomer(@ModelAttribute Customer customer, HttpServletRequest request, Object logout) {
		request.setAttribute("mode", "MODE_LOGIN_CUSTOMER");
		request.getSession().invalidate();
		return "redirect:/index";
	}
	
	
	@PostMapping("/save-customer")
	public String registerCustomer(@ModelAttribute Customer customer, BindingResult bindingResult,
			HttpServletRequest request) {
		customerService.saveMyCustomer(customer);
		request.setAttribute("mode", "MODE_REGISTER");
		return "redirect:/index";
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

	@RequestMapping("/edit-customer")
	public ModelAndView editCustomer(HttpServletRequest request) {
		int idCustomer = (int) request.getSession().getAttribute("customerId");
		request.setAttribute("mode", "MODE_UPDATE_CUSTOMER");

		Customer customer = customerService.editCustomer(idCustomer);
		return new ModelAndView("customerprofile", "customer", customer);

	}

	@RequestMapping("/delete-customer")
	public String deleteCustomer(@RequestParam int idCustomer, HttpServletRequest request) {
		customerService.deleteMyCustomer(idCustomer);
		request.setAttribute("customers", customerService.showAllCustomers());
		request.setAttribute("mode", "ALL_CUSTOMERS");
		return "homeadmin";
	}

	@GetMapping("/show-customers")
	public String showAllCustomers(HttpServletRequest request) {
		request.setAttribute("customers", customerService.showAllCustomers());
		request.setAttribute("mode", "ALL_CUSTOMERS");
		return "dashboard";

	}

}