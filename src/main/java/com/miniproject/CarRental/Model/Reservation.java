
package com.miniproject.CarRental.Model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
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
	@JoinColumn(name = "idDriver")
	private Driver driver;
	private String rentDate;
	private String rentTime;
	private int rentDuration;
	private String rentStatus;
	private int totalPayment;


	public Reservation() {

	}
	
	
	public Reservation(int idReservation, Customer customer, Vehicle vehicle, Driver driver, String rentDate,
			String rentTime, int rentDuration, String rentStatus, int totalPayment) {
		super();
		this.idReservation = idReservation;
		this.customer = customer;
		this.vehicle = vehicle;
		this.driver = driver;
		this.rentDate = rentDate;
		this.rentTime = rentTime;
		this.rentDuration = rentDuration;
		this.rentStatus = rentStatus;
		this.totalPayment = totalPayment;
	}


	public int getIdReservation() {
		return idReservation;
	}

	public void setIdReservation(int idReservation) {
		this.idReservation = idReservation;
	}
	
	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public Vehicle getVehicle() {
		return vehicle;
	}

	public void setVehicle(Vehicle vehicle) {
		this.vehicle = vehicle;
	}

	public Driver getDriver() {
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





	@Override
	public String toString() {
		return "Reservation [idReservation=" + idReservation + ", customer=" + customer + ", vehicle=" + vehicle
				+ ", driver=" + driver + ", rentDate=" + rentDate + ", rentTime=" + rentTime + ", rentDuration="
				+ rentDuration + ", rentStatus=" + rentStatus + ", totalPayment=" + totalPayment + "]";
	}
	
	
	
	
	
}


