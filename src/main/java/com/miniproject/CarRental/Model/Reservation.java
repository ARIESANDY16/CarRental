
package com.miniproject.CarRental.Model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "reservasi")
public class Reservation {
	@Id
	private int idReservation;
	private int idCustomer;
	private int idVehicle;
	private int idDriver;
	private String fromDate;
	private String toDate;
	private String duration;
	private String condition;
	private String fromLocation;
	private String toLocation;
//	private Datetime reservationDate;

	public Reservation() {

	}

	public Reservation(int idReservation, int idCustomer, int idVehicle, int idDriver, String fromDate, String toDate,
			String duration, String condition, String fromLocation, String toLocation) {
		super();
		this.idReservation = idReservation;
		this.idCustomer = idCustomer;
		this.idVehicle = idVehicle;
		this.idDriver = idDriver;
		this.fromDate = fromDate;
		this.toDate = toDate;
		this.duration = duration;
		this.condition = condition;
		this.fromLocation = fromLocation;
		this.toLocation = toLocation;
//		this.reservationDate = reservationDate;
	}

	public int getidReservation() {
		return idReservation;
	}

	public void setidReservation(int idReservation) {
		this.idReservation = idReservation;
	}

	public int getidCustomer() {
		return idCustomer;
	}

	public void setidCustomer(int idCustomer) {
		this.idCustomer = idCustomer;
	}

	public int getidVehicle() {
		return idVehicle;
	}

	public void setuidVehicle(int idVehicle) {
		this.idVehicle = idVehicle;
	}

	public int getidDriver() {
		return idDriver;
	}

	public void setidDriver(int idDriver) {
		this.idDriver = idDriver;
	}

	public String getfromDate() {
		return fromDate;
	}

	public void setfromDate(String fromDate) {
		this.fromDate = fromDate;
	}

	public String getcondition() {
		return condition;
	}

	public void setcondition(String condition) {
		this.condition = condition;
	}

	public String getduration() {
		return duration;
	}

	public void setduration(String duration) {
		this.duration = duration;
	}

	public String getfromLocation() {
		return fromLocation;
	}

	public void setfromLocation(String fromLocation) {
		this.fromLocation = fromLocation;
	}

	public String gettoLocation() {
		return toLocation;
	}

	public void settoLocation(String toLocation) {
		this.toLocation = toLocation;
	}

//	public Datetime getreservationDate() {
//		return reservationDate;
//	}
//
//	public void setreservationDate(Datetime reservationDate) {
//		this.reservationDate = reservationDate;
//	}

	@Override
	public String toString() {
		return "Reservation [idReservastion=" + idReservation + ", idCustomer=" + idCustomer + ", idVehicle="
				+ idVehicle + ", idDriver=" + idDriver + ", fromDate=" + fromDate + ", toDate=" + toDate + ", duration="
				+ duration + ", condition=" + condition + ", fromLocation=" + fromLocation + ", toLocation="
				+ toLocation + "]";
	}
}
