package com.miniproject.CarRental.Controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
<<<<<<< HEAD
=======
import org.springframework.ui.ModelMap;
>>>>>>> Feature/Ray
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
<<<<<<< HEAD

=======
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
>>>>>>> Feature/Ray

import com.miniproject.CarRental.Model.Reservation;
import com.miniproject.CarRental.Model.Vehicle;
import com.miniproject.CarRental.Service.ReservationService;
<<<<<<< HEAD

=======
import com.miniproject.CarRental.Service.VehicleService;
>>>>>>> Feature/Ray
@Controller
public class ReservationController {
	@Autowired
	ReservationService reservationService;
<<<<<<< HEAD

	@RequestMapping("/reservation")
		public String reservation(HttpServletRequest request) {
			request.setAttribute("mode", "MODE_ADD_RESERVATION");
			return "homecustomer";
		}
		
		@PostMapping("/save-reservation")
		public String addNewReservation(@ModelAttribute Reservation reservation, BindingResult bindingResult,HttpServletRequest request)
			{
			reservationService.saveMyReservation(reservation);
			request.setAttribute("mode", "MODE_SAVE-RESERVATION");
			return"redirect:/homecustomer";
		}
=======
	@Autowired VehicleService vehicleService; 
	
	  @RequestMapping("/addreservation") public String
	  reservation(HttpServletRequest request) {
	  
	  request.setAttribute("mode", "MODE_ADD_RESERVATION"); return
	  "reservationpage"; }
	 
>>>>>>> Feature/Ray
		
	
	/*
	 * @RequestMapping(value = "/addreservation", method = RequestMethod.GET) public
	 * String Addreservation(@ModelAttribute Vehicle vehicle, HttpServletRequest
	 * request) { if (vehicleService.findByIdVehicle(vehicle.getIdVehicle())!=null){
	 * request.setAttribute("mode", "MODE_ADD_RESERVATION"); return
	 * "reservationpage"; }else { request.setAttribute("error",
	 * "Vehicle not Found!"); request.setAttribute("mode", "ALL_VEHICLES"); return
	 * "vehiclepage"; } }
	 */
	
	@PostMapping("/save-reservation")
	public String addNewReservation(@ModelAttribute Reservation reservation, BindingResult bindingResult,HttpServletRequest request)
		{
		reservationService.saveMyReservation(reservation);
		request.setAttribute("mode", "MODE_HOME");
		return"homecustomer";
	}
	
	@PostMapping("/save-reservation-admin")
	public String updateReservationByadmins(@ModelAttribute Reservation reservation, BindingResult bindingResult,HttpServletRequest request)
		{
		reservationService.saveMyReservation(reservation);
		request.setAttribute("mode", "ALL_RESERVATION");
		return"redirect:/show-reservation";
	}
	
		@GetMapping("/show-reservation")
		public String showAllReservation(HttpServletRequest request) {
<<<<<<< HEAD
			request.setAttribute("reservation", reservationService.showAllReservation());
			request.setAttribute("mode", "ALL_RESERVATION_1");
			return"redirect:/homecustomer";
			
		}
		
//		@GetMapping("/Reservation")
//		public String showReservation(HttpServletRequest request) {
//			request.setAttribute("reservation", reservationService.showAllReservation());
//			request.setAttribute("mode", "ALL_RESERVATION");
//			return"reservation";
//			
//		}
		
//		@RequestMapping("/delete-reservation")
//		public String deleteReservation(@RequestParam int idReservation,HttpServletRequest request) {
//			reservationService.deleteMyReservation(idReservation);
//			request.setAttribute("reservation", reservationService.showAllReservation());
//			request.setAttribute("mode", "MODE_DELETE_RESERVATION");
//			return "homeadmin";
//		}
//		
//		@RequestMapping("/edit-reservation")
//		public String editReservation(@RequestParam int idReservation, HttpServletRequest request) {
//			request.setAttribute("reservation", reservationService.editReservation(idReservation));
//			request.setAttribute("mode", "MODE_UPDATE_RESERVATION");
//			return"homeadmin";
//		}
=======
			request.setAttribute("reservations", reservationService.showAllReservations());
			request.setAttribute("mode", "ALL_RESERVATION");
			return"homeadmin";
			
		}
		@GetMapping("/my-reservation")
		public String showReservation(HttpServletRequest request) {
			request.setAttribute("reservations", reservationService.showAllReservations());
			request.setAttribute("mode", "CUSTOMER_RESERVATION");
			return"customerreservation";
			
		}
	/*
	 * @GetMapping("/reservation") public String showReservation(HttpServletRequest
	 * request) { request.setAttribute("reservation",
	 * reservationService.showAllReservation()); request.setAttribute("mode",
	 * "ALL_RESERVATION"); return"reservation";
	 * 
	 * }
	 * 
	 * @RequestMapping("/delete-reservation") public String
	 * deleteReservation(@RequestParam int idReservation,HttpServletRequest request)
	 * { reservationService.deleteMyReservation(idReservation);
	 * request.setAttribute("reservation", reservationService.showAllReservation());
	 * request.setAttribute("mode", "MODE_DELETE_RESERVATION"); return "homeadmin";
	 * }
	 */
		@RequestMapping("/edit-reservation")
		public String editReservation(@RequestParam int idReservation, HttpServletRequest request) {
			request.setAttribute("reservation", reservationService.editReservation(idReservation));
			request.setAttribute("mode", "MODE_UPDATE_RESERVATION");
			return"homeadmin";
		}
>>>>>>> Feature/Ray

}
