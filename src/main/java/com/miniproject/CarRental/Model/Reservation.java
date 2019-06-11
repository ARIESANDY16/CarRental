
package com.miniproject.CarRental.Model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "reservation")
public class Reservation {

	@Id
	private int idReservation;
	@ManyToOne
	@JoinColumn(name = "idCustomer")
	private Customer customer;
	@ManyToOne
	@JoinColumn(name = "idVehicle")
	private Vehicle vehicle;
	@ManyToOne
	@JoinColumn(name = "idDriver", nullable = true)
	private Driver driver;
	private String rentDate;
	private String rentTime;
	private int rentDuration;
	private String pickupLocation;
	private String returnDate;
	private String returnTime;
	private String rentStatus;
	private int totalPayment;
	private String statusPayment;
	private int lateDuration;
	private int latePayment;
	private int totalAllpayment;
	private String returnStatus;

	public Reservation() {

	}

	public Reservation(int idReservation, Customer customer, Vehicle vehicle, Driver driver, String rentDate,
			String rentTime, int rentDuration, String pickupLocation, String returnDate, String returnTime,
			String rentStatus, int totalPayment, String statusPayment, int lateDuration, int latePayment, int totalAllpayment, String returnStatus) {
		super();
		this.idReservation = idReservation;
		this.customer = customer;
		this.vehicle = vehicle;
		this.driver = driver;
		this.rentDate = rentDate;
		this.rentTime = rentTime;
		this.rentDuration = rentDuration;
		this.pickupLocation = pickupLocation;
		this.returnDate = returnDate;
		this.returnTime = returnTime;
		this.rentStatus = rentStatus;
		this.totalPayment = totalPayment;
		this.statusPayment = statusPayment;
		this.lateDuration = lateDuration;
		this.latePayment = latePayment;
		this.totalAllpayment = totalAllpayment;
		this.returnStatus = returnStatus;
		
	}

	public int getIdReservation() {
		return idReservation;
	}

	public void setIdReservation(int idReservation) {
		this.idReservation = idReservation;
	}

	public Customer getCustomer() {
		if (customer == null) {
			customer = new Customer();
		}
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public Vehicle getVehicle() {
		if (vehicle == null) {
			vehicle = new Vehicle();
		}
		return vehicle;
	}

	public void setVehicle(Vehicle vehicle) {
		this.vehicle = vehicle;
	}

	public Driver getDriver() {
		if (driver == null) {
			driver = new Driver();
		}
		return driver;
	}

	public void setDriver(Driver driver) {
		this.driver = driver;
	}

	public String getRentDate() {
		return rentDate;
	}

	public void setRentDate(String rentDate) {
		this.rentDate = rentDate;
	}

	public String getRentTime() {
		return rentTime;
	}

	public void setRentTime(String rentTime) {
		this.rentTime = rentTime;
	}

	public int getRentDuration() {
		return rentDuration;
	}

	public void setRentDuration(int rentDuration) {
		this.rentDuration = rentDuration;
	}

	public String getPickupLocation() {
		return pickupLocation;
	}

	public void setPickupLocation(String pickupLocation) {
		this.pickupLocation = pickupLocation;
	}

	public String getReturnDate() {
		return returnDate;
	}

	public void setReturnDate(String returnDate) {
		this.returnDate = returnDate;
	}

	public String getReturnTime() {
		return returnTime;
	}

	public void setReturnTime(String returnTime) {
		this.returnTime = returnTime;
	}

	public String getRentStatus() {
		return rentStatus;
	}

	public void setRentStatus(String rentStatus) {
		this.rentStatus = rentStatus;
	}

	public int getTotalPayment() {
		return totalPayment;
	}

	public void setTotalPayment(int totalPayment) {
		this.totalPayment = totalPayment;
	}

	public String getStatusPayment() {
		return statusPayment;
	}

	public void setStatusPayment(String statusPayment) {
		this.statusPayment = statusPayment;
	}
	
	public int getLateDuration() {
		return lateDuration;
	}

	public void setLateDuration(int lateDuration) {
		this.lateDuration = lateDuration;
	}

	public int getLatePayment() {
		return latePayment;
	}

	public void setLatePayment(int latePayment) {
		this.latePayment = latePayment;
	}

	public String getReturnStatus() {
		return returnStatus;
	}

	public void setReturnStatus(String returnStatus) {
		this.returnStatus = returnStatus;
	}

	
	public int getTotalAllpayment() {
		return totalAllpayment;
	}

	public void setTotalAllpayment(int totalAllpayment) {
		this.totalAllpayment = totalAllpayment;
	}

	@Override
	public String toString() {
		return "Reservation [idReservation=" + idReservation + ", customer=" + customer + ", vehicle=" + vehicle
				+ ", driver=" + driver + ", rentDate=" + rentDate + ", rentTime=" + rentTime + ", rentDuration="
				+ rentDuration + ", pickupLocation=" + pickupLocation + ", returnDate=" + returnDate + ", returnTime="
				+ returnTime + ", rentStatus=" + rentStatus + ", totalPayment=" + totalPayment + ", statusPayment="
				+ statusPayment + ", lateDuration=" + lateDuration + ", latePayment=" + latePayment
				+ ", totalAllpayment=" + totalAllpayment + ", returnStatus=" + returnStatus + "]";
	}




}
