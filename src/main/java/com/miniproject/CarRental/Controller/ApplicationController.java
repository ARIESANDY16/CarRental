package com.miniproject.CarRental.Controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.miniproject.CarRental.Service.CustomerService;

@Controller
public class ApplicationController {
	@Autowired
	CustomerService customerService;

	@RequestMapping("/")
	public String hello(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_HOME");
		return "homeutama";
	}

	@RequestMapping("/home")
	public String Welcome(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_HOME");
		return "homeutama";
	}
	
	@RequestMapping("/servis1")
	public String Service(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_SERVIS1");
		return "servis";
	}
	
	@RequestMapping("/servis2")
	public String Service2(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_SERVIS2");
		return "servis";
	}

}
