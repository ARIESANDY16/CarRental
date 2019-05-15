package com.miniproject.CarRental.Model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="admin")
public class Admin {

	@Id
	private int idAdmin;
	private String usernameAdmin;
	private String passwordAdmin;
	
	public Admin() {
		
	}
	
	public Admin(String usernameAdmin, String passwordAdmin) {
		super();
		this.usernameAdmin = usernameAdmin;
		this.passwordAdmin = passwordAdmin;
	}

	public int getidAdmin() {
		return idAdmin;
	}

	public void setidAdmin(int idAdmin) {
		this.idAdmin = idAdmin;
	}

	public String getusernameAdmin() {
		return usernameAdmin;
	}

	public void setusernameAdmin(String usernameAdmin) {
		this.usernameAdmin = usernameAdmin;
	}

	public String getpasswordAdmin() {
		return passwordAdmin;
	}

	public void setpasswordAdmin(String passwordAdmin) {
		this.passwordAdmin = passwordAdmin;
	}

	@Override
	public String toString() {
		return "Admin [idAdmin=" + idAdmin + ", usernameAdmin=" + usernameAdmin + ", passwordAdmin="
				+ passwordAdmin + "]";
	}
	
}

