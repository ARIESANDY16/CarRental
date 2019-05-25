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
	public String genderCustomer;
	public String dobCustomer;
	public String addressCustomer;
	public String cityCustomer;
	public String countryCustomer;

	public Customer() {

	}

	public Customer(String fullnameCustomer, String usernameCustomer, String passwordCustomer, String emailCustomer,
			String contactnoCustomer, String genderCustomer, String dobCustomer, String addressCustomer,
			String cityCustomer, String countryCustomer) {
		super();
		this.fullnameCustomer = fullnameCustomer;
		this.usernameCustomer = usernameCustomer;
		this.passwordCustomer = passwordCustomer;
		this.emailCustomer = emailCustomer;
		this.contactnoCustomer = contactnoCustomer;
		this.genderCustomer = genderCustomer;
		this.dobCustomer = dobCustomer;
		this.addressCustomer = addressCustomer;
		this.cityCustomer = cityCustomer;
		this.countryCustomer = countryCustomer;

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

	public String getGenderCustomer() {
		return genderCustomer;
	}

	public void setGenderCustomer(String genderCustomer) {
		this.genderCustomer = genderCustomer;
	}

	public String getDobCustomer() {
		return dobCustomer;
	}

	public void setDobCustomer(String dobCustomer) {
		this.dobCustomer = dobCustomer;
	}

	public String getAddressCustomer() {
		return addressCustomer;
	}

	public void setAddressCustomer(String addressCustomer) {
		this.addressCustomer = addressCustomer;
	}

	public String getCityCustomer() {
		return cityCustomer;
	}

	public void setCityCustomer(String cityCustomer) {
		this.cityCustomer = cityCustomer;
	}

	public String getCountryCustomer() {
		return countryCustomer;
	}

	public void setCountryCustomer(String countryCustomer) {
		this.countryCustomer = countryCustomer;
	}

	@Override
	public String toString() {
		return "Customer [idCustomer=" + idCustomer + ", fullnameCustomer=" + fullnameCustomer + ", usernameCustomer="
				+ usernameCustomer + ", passwordCustomer=" + passwordCustomer + ", emailCustomer=" + emailCustomer
				+ ", contactnoCustomer=" + contactnoCustomer + ", genderCustomer=" + genderCustomer + ", dobCustomer="
				+ dobCustomer + ", addressCustomer=" + addressCustomer + ", cityCustomer=" + cityCustomer
				+ ", countryCustomer=" + countryCustomer + "]";
	}

}
