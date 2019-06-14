package com.miniproject.CarRental.Controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.miniproject.CarRental.Model.Admin;
import com.miniproject.CarRental.Service.AdminService;

@Controller
public class AdminController {
	@Autowired
	AdminService adminService;

	
//Halaman Login Admin	
	@RequestMapping("/admin")
	public String loginadmin(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_LOGIN_ADMIN");
		return "indexadmin";
	}

	
//Login Admin	
	/*
	 * @RequestMapping("/login-admin") public String loginAdmin(@ModelAttribute
	 * Admin admin, HttpServletRequest request) { //Login Admin Berhasil if
	 * (adminService.findByUsernameAdminAndPasswordAdmin(admin.getusernameAdmin(),
	 * admin.getpasswordAdmin()) != null) { request.setAttribute("mode",
	 * "DASHBOARD_ADMIN"); return "dashboard"; } //Login Admin Gagal else {
	 * request.setAttribute("error", "Invalid Username or Password");
	 * request.setAttribute("mode", "MODE_LOGIN_ADMIN"); return "indexadmin"; } }
	 */
	
	@RequestMapping(value = "/login-admin", method = RequestMethod.POST)
	public String loginAdmin(ModelMap model, @ModelAttribute Admin admin, HttpServletRequest request) {
		Admin adminData = adminService.findByUsernameAdminAndPasswordAdmin(admin.getusernameAdmin(),
				admin.getpasswordAdmin());
		if (adminData != null) {
			int adminId = adminData.getidAdmin();
			request.getSession().setAttribute("adminId", adminId);
			return "dashboard";
		} else {
			request.setAttribute("error", "Invalid Username or Password");
			request.setAttribute("mode", "MODE_LOGIN_ADMIN");
			return "indexadmin";
		}
	}
//Logout Admin
	@RequestMapping(value = "/logout-admin", method = RequestMethod.GET)
	public String logoutAdmin(@ModelAttribute Admin admin, HttpServletRequest request, Object logout) {
		request.setAttribute("mode", "MODE_LOGIN_ADMIN");
		request.getSession().invalidate();
		return "indexadmin";
	}
	
	@RequestMapping("/dashboard")
	public String homeadmin(HttpServletRequest request) {
		request.setAttribute("mode", "DASHBOARD_ADMIN");
		return "dashboard";
	}
}