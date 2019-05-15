package com.miniproject.CarRental.Controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.miniproject.CarRental.Model.Reservation;
import com.miniproject.CarRental.Service.ReservationService;

public class ReservationController {
	@Autowired
	ReservationService reservationService;

	@RequestMapping("/addreservation")
		public String reservation(HttpServletRequest request) {
			request.setAttribute("mode", "MODE_ADD_RESERVATION");
			return "homecustomer";
		}
		
		@PostMapping("/save-reservation")
		public String addNewReservation(@ModelAttribute Reservation reservation, BindingResult bindingResult,HttpServletRequest request)
			{
			reservationService.saveMyReservation(reservation);
			request.setAttribute("mode", "MODE_SAVE-RESERVATION");
			return"homecustomer";
		}
		
		@GetMapping("/show-reservation")
		public String showAllReservation(HttpServletRequest request) {
			request.setAttribute("reservation", reservationService.showAllReservation());
			request.setAttribute("mode", "ALL_RESERVATION_1");
			return"homecustomer";
			
		}
		@GetMapping("/reservation")
		public String showReservation(HttpServletRequest request) {
			request.setAttribute("reservation", reservationService.showAllReservation());
			request.setAttribute("mode", "ALL_RESERVATION");
			return"reservation";
			
		}
		
		@RequestMapping("/delete-reservation")
		public String deleteReservation(@RequestParam int idReservation,HttpServletRequest request) {
			reservationService.deleteMyReservation(idReservation);
			request.setAttribute("reservation", reservationService.showAllReservation());
			request.setAttribute("mode", "MODE_DELETE_RESERVATION");
			return "homeadmin";
		}
		
		@RequestMapping("/edit-reservation")
		public String editReservation(@RequestParam int idReservation, HttpServletRequest request) {
			request.setAttribute("reservation", reservationService.editReservation(idReservation));
			request.setAttribute("mode", "MODE_UPDATE_RESERVATION");
			return"homeadmin";
		}

}
