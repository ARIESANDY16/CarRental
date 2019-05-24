package com.miniproject.CarRental.Model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "customer")
public class Customer {

	@Id
	private int idCustomer;
	private String fullnameCustomer;
	private String usernameCustomer;
	private String passwordCustomer;
	private String emailCustomer;
	private String contactnoCustomer;

	public Customer() {

	}

	public Customer(String fullnameCustomer, String usernameCustomer, String passwordCustomer, String emailCustomer,
			String contactnoCustomer) {
		super();
		this.fullnameCustomer = fullnameCustomer;
		this.usernameCustomer = usernameCustomer;
		this.passwordCustomer = passwordCustomer;
		this.emailCustomer = emailCustomer;
		this.contactnoCustomer = contactnoCustomer;

	}

	public int getidCustomer() {
		return idCustomer;
	}

	public void setidCustomer(int idCustomer) {
		this.idCustomer = idCustomer;
	}

	public String getfullnameCustomer() {
		return fullnameCustomer;
	}

	public void setfullnameCustomer(String fullnameCustomer) {
		this.fullnameCustomer = fullnameCustomer;
	}

	public String getusernameCustomer() {
		return usernameCustomer;
	}

	public void setusernameCustomer(String usernameCustomer) {
		this.usernameCustomer = usernameCustomer;
	}

	public String getpasswordCustomer() {
		return passwordCustomer;
	}

	public void setpasswordCustomer(String passwordCustomer) {
		this.passwordCustomer = passwordCustomer;
	}

	public String getemailCustomer() {
		return emailCustomer;
	}

	public void setemailCustomer(String emailCustomer) {
		this.emailCustomer = emailCustomer;
	}

	public String getcontactnoCustomer() {
		return contactnoCustomer;
	}

	public void setcontactnoCustomer(String contactnoCustomer) {
		this.contactnoCustomer = contactnoCustomer;
	}

	@Override
	public String toString() {
		return "Customer [idCustomer=" + idCustomer + ", fullnameCustomer=" + fullnameCustomer + ", usernameCustomer="
				+ usernameCustomer + ", passwordCustomer=" + passwordCustomer + ", emailCustomer=" + emailCustomer
				+ ", contactnoCustomer=" + contactnoCustomer + "]";
	}
}
