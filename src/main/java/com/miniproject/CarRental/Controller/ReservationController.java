package com.miniproject.CarRental.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.miniproject.CarRental.Model.Reservation;
import com.miniproject.CarRental.Service.CustomerService;
import com.miniproject.CarRental.Service.DriverService;
import com.miniproject.CarRental.Service.ReservationService;
import com.miniproject.CarRental.Service.VehicleService;

@Controller
public class ReservationController {
	@Autowired
	ReservationService reservationService;
	@Autowired
	VehicleService vehicleService;

	@Autowired
	CustomerService customerService;
	
	@Autowired
	DriverService driverService;

	@RequestMapping(value = "/addreservation", method = RequestMethod.GET)
	public ModelAndView reservation(@RequestParam("idVehicle") int idVehicle, HttpServletRequest request) {

		System.out.println("idVehicle: " + idVehicle);

		int idCustomer = (int) request.getSession().getAttribute("customerId");
		request.setAttribute("mode", "MODE_ADD_RESERVATION");

		Reservation reservation = new Reservation();

		System.out.println("idCustomer: " + idCustomer);
		reservation.setCustomer(customerService.editCustomer(idCustomer));
		reservation.setVehicle(vehicleService.editVehicle(idVehicle));
		return new ModelAndView("reservationpage", "reservation", reservation);
	}

	@PostMapping("/save-reservation")
	public String addNewReservation(@ModelAttribute Reservation reservation, BindingResult bindingResult,
			HttpServletRequest request) {
		reservationService.reservationCustomer(reservation);
		request.setAttribute("mode", "MODE_HOME");
		return "redirect:/customer";
	}

	@PostMapping("/save-reservation-admin")
	public String updateReservationByadmins(@ModelAttribute Reservation reservation, BindingResult bindingResult,
			HttpServletRequest request) {
		reservationService.reservationAdmin(reservation);
		request.setAttribute("mode", "ALL_RESERVATION");
		return "redirect:/show-reservation";
	}
	
	/*
	 * @PostMapping("/save-return-vehicle") public String
	 * saveReturnVehicleAdmin(@ModelAttribute Reservation reservation, BindingResult
	 * bindingResult, HttpServletRequest request) {
	 * reservationService.lateReturnVehicle(reservation);
	 * request.setAttribute("mode", "ALL_RESERVATION"); return
	 * "redirect:/show-reservation"; }
	 */


	@GetMapping("/show-reservation")
	public String showAllReservation(HttpServletRequest request) {
		request.setAttribute("reservations", reservationService.showAllReservations());
		request.setAttribute("mode", "ALL_RESERVATION");
		return "dashboard";

	}

	// Add New My-Reservation

	@GetMapping("/my-reservation")
	public ModelAndView showReservation(HttpServletRequest request) {
		int idCustomer = (int) request.getSession().getAttribute("customerId");
		request.setAttribute("mode", "CUSTOMER_RESERVATION");
		List<Reservation> customerreservation = reservationService.showReservations(idCustomer);
		return new ModelAndView("customerreservation", "reservations", customerreservation);
	}

	@GetMapping("/task-driver")
	public ModelAndView taskDriver(HttpServletRequest request) {
		int idDriver = (int) request.getSession().getAttribute("driverId");
		request.setAttribute("mode", "TASK_DRIVER");
		List<Reservation> driverTask = reservationService.driverTask(idDriver);
		return new ModelAndView("dashboarddriver", "reservations", driverTask);
	}
	
	@RequestMapping("/delete-reservation")
	public String deleteReservation(@RequestParam int idReservation, HttpServletRequest request) {
		reservationService.deleteMyReservation(idReservation);
		request.setAttribute("reservation", reservationService.showAllReservations());
		request.setAttribute("mode", "MODE_DELETE_RESERVATION");
		return "homeadmin";
	}

	@RequestMapping("/edit-reservation")
	public String editReservation(@RequestParam int idReservation, HttpServletRequest request) {
		request.setAttribute("reservation", reservationService.editReservation(idReservation));
		request.setAttribute("mode", "MODE_UPDATE_RESERVATION");
		return "dashboard";
	}
		
	//rent vehicle
	@GetMapping("/rent-vehicle")
	public String rentVehicle(HttpServletRequest request) {
		request.setAttribute("reservations", reservationService.showReservationPending());
		request.setAttribute("mode", "RENT_VEHICLE");
		return "dashboard";
	}
	
	//view rent vehicle
	@GetMapping("/view-rent-vehicle")
	public String rentVehicle(@RequestParam int idReservation, HttpServletRequest request) {
		request.setAttribute("reservation", reservationService.editReservation(idReservation));
		request.setAttribute("drivers", driverService.showAllDriversStandby()); 
		request.setAttribute("mode", "VIEW_RENT_VEHICLE");
		return "dashboard";
	}
	
	//save rent vehicle
	@PostMapping("/save-rent-vehicle")
	public String saveRentVehicle(@ModelAttribute Reservation reservation, BindingResult bindingResult,
			HttpServletRequest request) {
	
		reservationService.reservationAdmin(reservation);
		request.setAttribute("reservation", reservationService.showAllReservations());
		request.setAttribute("mode", "RENT_VEHICLE");
		return "redirect:/rent-vehicle";
	}
	
	//return vehicle
		@GetMapping("/return-vehicle")
		public String returnVehicle(HttpServletRequest request) {
			request.setAttribute("reservations", reservationService.showReservationSuccessAndOnProgress());
			request.setAttribute("mode", "RETURN_VEHICLE");
			return "dashboard";
		}
		
		//view Return vehicle
		@RequestMapping("/view-return-vehicle")
		public String returnVehicle(@RequestParam int idReservation, HttpServletRequest request) {
			request.setAttribute("reservation", reservationService.editReservation(idReservation));
			request.setAttribute("mode", "VIEW_RETURN_VEHICLE");
			return "dashboard";
		}	
		//save return vehicle
		@PostMapping("/save-return-vehicle")
		public String saveReturnVehicle(@ModelAttribute Reservation reservation, BindingResult bindingResult,
				HttpServletRequest request) {
			reservationService.lateReturnVehicle(reservation);
			request.setAttribute("mode", "RETURN_VEHICLE");
			return "redirect:/return-vehicle";
		}

		
		//Transaction
		@GetMapping("/transaction")
		public String transaction(HttpServletRequest request) {
			request.setAttribute("reservations", reservationService.showReservationDone());
			request.setAttribute("mode", "TRANSACTION");
			return "dashboard";
		}
		
		//view Transaction
				@RequestMapping("/view-transaction")
				public String viewTransaction(@RequestParam int idReservation, HttpServletRequest request) {
					request.setAttribute("reservation", reservationService.editReservation(idReservation));
					request.setAttribute("mode", "VIEW_TRANSACTION");
					return "dashboard";
				}
				
				//save transactions
				@PostMapping("/save-transaction")
				public String saveTransaction(@ModelAttribute Reservation reservation, BindingResult bindingResult,
						HttpServletRequest request) {
					reservationService.reservationAdmin(reservation);
					request.setAttribute("mode", "TRANSACTION");
					return "redirect:/transaction";
				}				
		
}
