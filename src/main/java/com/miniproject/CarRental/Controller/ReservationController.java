package com.miniproject.CarRental.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
import com.miniproject.CarRental.Model.Reservation;
import com.miniproject.CarRental.Model.Vehicle;
import com.miniproject.CarRental.Service.CustomerService;
import com.miniproject.CarRental.Service.ReservationService;
import com.miniproject.CarRental.Service.VehicleService;
@Controller
public class ReservationController {
	@Autowired
	ReservationService reservationService;
	@Autowired VehicleService vehicleService; 
	
	@Autowired
	CustomerService customerService;
	
	@RequestMapping(value ="/addreservation", method = RequestMethod.GET) 
	public ModelAndView
	  reservation(@RequestParam("idVehicle") int idVehicle, HttpServletRequest request) {
		
	  System.out.println("idVehicle: "+idVehicle);
	  
	  int idCustomer = (int)request.getSession().getAttribute("customerId");
	  request.setAttribute("mode", "MODE_ADD_RESERVATION");
	  
	  Reservation reservation = new Reservation();
	  
	  System.out.println("idCustomer: "+idCustomer);
	  reservation.setCustomer(customerService.editCustomer(idCustomer));
	  reservation.setVehicle(vehicleService.editVehicle(idVehicle));
	  return new ModelAndView("reservationpage", "reservation",reservation) ; 
	}
	 
		
	
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
		reservationService.reservationCustomer(reservation);
		request.setAttribute("mode", "MODE_HOME");
		return"homecustomer";
	}
	
	@PostMapping("/save-reservation-admin")
	public String updateReservationByadmins(@ModelAttribute Reservation reservation, BindingResult bindingResult,HttpServletRequest request)
		{
		reservationService.reservationAdmin(reservation);
		request.setAttribute("mode", "ALL_RESERVATION");
		return"redirect:/show-reservation";
	}
	
		@GetMapping("/show-reservation")
		public String showAllReservation(HttpServletRequest request) {
			request.setAttribute("reservations", reservationService.showAllReservations());
			request.setAttribute("mode", "ALL_RESERVATION");
			return"homeadmin";
			
		}
	/*
	 * @GetMapping("/my-reservation") public String
	 * showReservation(HttpServletRequest request) {
	 * request.setAttribute("reservations",
	 * reservationService.showAllReservations()); request.setAttribute("mode",
	 * "CUSTOMER_RESERVATION"); return"customerreservation";
	 * 
	 * }
	 */
		
	//Add New My-Reservation	
		
	@GetMapping("/my-reservation")
	public ModelAndView showReservation(HttpServletRequest request) {
		int idCustomer = (int) request.getSession().getAttribute("customerId");
		//request.setAttribute("reservations", reservationService.showAllReservations());
		request.setAttribute("mode", "CUSTOMER_RESERVATION");
		List<Reservation> customerreservation = reservationService.showReservations(idCustomer);
		return new ModelAndView("customerreservation", "reservations", customerreservation);

	}
		
	
	@GetMapping("/task-driver")
	public ModelAndView taskDriver(HttpServletRequest request) {
		int idDriver = (int) request.getSession().getAttribute("driverId");
		//request.setAttribute("reservations", reservationService.showAllReservations());
		request.setAttribute("mode", "TASK_DRIVER");
		List<Reservation> driverTask = reservationService.driverTask(idDriver);
		return new ModelAndView("homedriver", "reservations", driverTask);

	}
		
	@RequestMapping("/delete-reservation") 
	public String deleteReservation(@RequestParam int idReservation,HttpServletRequest request)
	  { reservationService.deleteMyReservation(idReservation);
	  request.setAttribute("reservation", reservationService.showAllReservations());
	  request.setAttribute("mode", "MODE_DELETE_RESERVATION"); return "homeadmin";
	  }
		
	/*
	 * @GetMapping("/task-driver") public String driverTask(HttpServletRequest
	 * request) { request.setAttribute("reservations",
	 * reservationService.showAllReservations()); request.setAttribute("mode",
	 * "TASK_DRIVER"); return"homedriver";
	 * 
	 * }
	 */
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

}
