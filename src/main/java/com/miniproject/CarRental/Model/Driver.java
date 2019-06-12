package com.miniproject.CarRental.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;

@Entity
@Table(name = "driver")
public class Driver {

	@Id
	private int idDriver;
	private String fullnameDriver;
	private String usernameDriver;
	private String passwordDriver;
	private int priceDriver;
	/*
	 * @Size(max = 7)
	 * 
	 * @Column(name = "status_driver", nullable = true)
	 */
	private String statusDriver;
    private String contactnoDriver;

	public Driver() {

	}

	public Driver(int idDriver, String fullnameDriver, String usernameDriver, String passwordDriver, int priceDriver,
			String statusDriver,String contactnoDriver) {
		super();
		this.idDriver = idDriver;
		this.fullnameDriver = fullnameDriver;
		this.usernameDriver = usernameDriver;
		this.passwordDriver = passwordDriver;
		this.priceDriver = priceDriver;
		this.statusDriver = statusDriver;
		this.contactnoDriver = contactnoDriver;
	}

	public int getIdDriver() {
		return idDriver;
	}

	public void setIdDriver(int idDriver) {
		this.idDriver = idDriver;
	}

	public String getFullnameDriver() {
		return fullnameDriver;
	}

	public void setFullnameDriver(String fullnameDriver) {
		this.fullnameDriver = fullnameDriver;
	}

	public String getUsernameDriver() {
		return usernameDriver;
	}

	public void setUsernameDriver(String usernameDriver) {
		this.usernameDriver = usernameDriver;
	}

	public String getPasswordDriver() {
		return passwordDriver;
	}

	public void setPasswordDriver(String passwordDriver) {
		this.passwordDriver = passwordDriver;
	}

	public int getPriceDriver() {
		return priceDriver;
	}

	public void setPriceDriver(int priceDriver) {
		this.priceDriver = priceDriver;
	}

	public String getStatusDriver() {
		return statusDriver;
	}

	public void setStatusDriver(String statusDriver) {
		this.statusDriver = statusDriver;
	}

	public String getContactnoDriver() {
		return contactnoDriver;
	}

	public void setContactnoDriver(String contactnoDriver) {
		this.contactnoDriver = contactnoDriver;
	}

	@Override
	public String toString() {
		return "Driver [idDriver=" + idDriver + ", fullnameDriver=" + fullnameDriver + ", usernameDriver="
				+ usernameDriver + ", passwordDriver=" + passwordDriver + ", priceDriver=" + priceDriver
				+ ", statusDriver=" + statusDriver + ", contactnoDriver=" + contactnoDriver + "]";
	}

	

}
