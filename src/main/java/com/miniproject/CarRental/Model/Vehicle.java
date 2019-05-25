package com.miniproject.CarRental.Model;

import java.util.Arrays;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "vehicle")
public class Vehicle {

	@Id
	private int idVehicle;
	private String nameVehicle;
	private String typeVehicle;
	private int yearVehicle;
	private int capacityVehicle;
	private String descriptionVehicle;
	private int priceVehicle;
	private byte[] imageVehicle;
	private String imageName;

	public Vehicle() {

	}

	public Vehicle(String nameVehicle, String typeVehicle, int yearVehicle, int capacityVehicle,
			String descriptionVehicle, int priceVehicle, byte[] imageVehicle) {
		super();
		this.nameVehicle = nameVehicle;
		this.typeVehicle = typeVehicle;
		this.yearVehicle = yearVehicle;
		this.capacityVehicle = capacityVehicle;
		this.descriptionVehicle = descriptionVehicle;
		this.priceVehicle = priceVehicle;
		this.imageVehicle = imageVehicle;
	}

	public int getIdVehicle() {
		return idVehicle;
	}

	public void setIdVehicle(int idVehicle) {
		this.idVehicle = idVehicle;
	}

	public String getNameVehicle() {
		return nameVehicle;
	}

	public void setNameVehicle(String nameVehicle) {
		this.nameVehicle = nameVehicle;
	}

	public String getTypeVehicle() {
		return typeVehicle;
	}

	public void setTypeVehicle(String typeVehicle) {
		this.typeVehicle = typeVehicle;
	}

	public int getYearVehicle() {
		return yearVehicle;
	}

	public void setYearVehicle(int yearVehicle) {
		this.yearVehicle = yearVehicle;
	}

	public int getCapacityVehicle() {
		return capacityVehicle;
	}

	public void setCapacityVehicle(int capacityVehicle) {
		this.capacityVehicle = capacityVehicle;
	}

	public String getDescriptionVehicle() {
		return descriptionVehicle;
	}

	public void setDescriptionVehicle(String descriptionVehicle) {
		this.descriptionVehicle = descriptionVehicle;
	}

	public int getPriceVehicle() {
		return priceVehicle;
	}

	public void setPriceVehicle(int priceVehicle) {
		this.priceVehicle = priceVehicle;
	}

	public byte[] getImageVehicle() {
		return imageVehicle;
	}

	public void setImageVehicle(byte[] imageVehicle) {
		this.imageVehicle = imageVehicle;
	}

	public String getImageName() {
		return imageName;
	}

	public void setImageName(String imageName) {
		this.imageName = imageName;
	}

	@Override
	public String toString() {
		return "Vehicle [idVehicle=" + idVehicle + ", nameVehicle=" + nameVehicle + ", typeVehicle=" + typeVehicle
				+ ", yearVehicle=" + yearVehicle + ", capacityVehicle=" + capacityVehicle + ", descriptionVehicle="
				+ descriptionVehicle + ", priceVehicle=" + priceVehicle + ", imageVehicle="
				+ Arrays.toString(imageVehicle) + "]";
	}

}
