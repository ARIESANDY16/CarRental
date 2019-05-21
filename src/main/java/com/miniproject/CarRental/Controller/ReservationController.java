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

import com.miniproject.CarRental.Model.Reservation;
import com.miniproject.CarRental.Service.ReservationService;
import com.miniproject.CarRental.Service.VehicleService;

@Controller
public class ReservationController {
	@Autowired
	ReservationService reservationService;
	@Autowired
	VehicleService vehicleService;

	@RequestMapping("/addreservation")
	public String reservation(HttpServletRequest request) {

		request.setAttribute("mode", "MODE_ADD_RESERVATION");
		return "reservationpage";
	}

	@PostMapping("/save-reservation")
	public String addNewReservation(@ModelAttribute Reservation reservation, BindingResult bindingResult,
			HttpServletRequest request) {
		reservationService.saveMyReservation(reservation);
		request.setAttribute("mode", "MODE_HOME");
		return "homecustomer";
	}

	@PostMapping("/save-reservation-admin")
	public String updateReservationByadmins(@ModelAttribute Reservation reservation, BindingResult bindingResult,
			HttpServletRequest request) {
		reservationService.saveMyReservation(reservation);
		request.setAttribute("mode", "ALL_RESERVATION");
		return "redirect:/show-reservation";
	}

	@GetMapping("/show-reservation")
	public String showAllReservation(HttpServletRequest request) {
		request.setAttribute("reservation", reservationService.showAllReservations());
		request.setAttribute("mode", "ALL_RESERVATION_1");
		return "redirect:/homecustomer";
	}

	@GetMapping("/my-reservation")
	public String showReservation(HttpServletRequest request) {
		request.setAttribute("reservations", reservationService.showAllReservations());
		request.setAttribute("mode", "CUSTOMER_RESERVATION");
		return "customerreservation";
	}

	@RequestMapping("/edit-reservation")
	public String editReservation(@RequestParam int idReservation, HttpServletRequest request) {
		request.setAttribute("reservation", reservationService.editReservation(idReservation));
		request.setAttribute("mode", "MODE_UPDATE_RESERVATION");
		return "homeadmin";
	}
}
