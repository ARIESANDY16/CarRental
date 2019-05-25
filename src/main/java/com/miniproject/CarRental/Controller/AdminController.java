package com.miniproject.CarRental.Controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.miniproject.CarRental.Model.Admin;
import com.miniproject.CarRental.Service.AdminService;

@Controller
public class AdminController {
	@Autowired
	AdminService adminService;

	@RequestMapping("/admin")
	public String loginadmin(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_LOGIN_ADMIN");
		return "indexadmin";
	}

	@RequestMapping("/login-admin")
	public String loginAdmin(@ModelAttribute Admin admin, HttpServletRequest request) {
		if (adminService.findByUsernameAdminAndPasswordAdmin(admin.getusernameAdmin(),
				admin.getpasswordAdmin()) != null) {
			return "dashboard";
		} else {
			request.setAttribute("error", "Invalid Username or Password");
			request.setAttribute("mode", "MODE_LOGIN_ADMIN");
			return "indexadmin";
		}
	}

	@RequestMapping("/logout-admin")
	public String logoutAdmin(@ModelAttribute Admin admin, HttpServletRequest request, Object logout) {
		request.setAttribute("mode", "MODE_LOGIN_ADMIN");
		return "indexadmin";
	}
	
	@RequestMapping("/dashboard")
	public String homeadmin(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_LOGIN_ADMIN");
		return "dashboard";
	}

}