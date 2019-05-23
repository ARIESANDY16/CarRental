package com.miniproject.CarRental.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "driver")
public class Driver {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idDriver;
	@Column(name = "fullname_driver")
	private String fullnameDriver;
	private String usernameDriver;
	private String passwordDriver;
	private int priceDriver;

	public Driver() {

	}

	public Driver(String fullnameDriver, String usernameDriver, String passwordDriver, int priceDriver) {
		super();
		this.fullnameDriver = fullnameDriver;
		this.usernameDriver = usernameDriver;
		this.passwordDriver = passwordDriver;
		this.priceDriver = priceDriver;
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

	@Override
	public String toString() {
		return "Driver [idDriver=" + idDriver + ", fullnameDriver=" + fullnameDriver + ", usernameDriver="
				+ usernameDriver + ", passwordDriver=" + passwordDriver + ", priceDriver=" + priceDriver + "]";
	}

}
