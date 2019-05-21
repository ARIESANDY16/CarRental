package com.miniproject.CarRental.Service;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.transaction.Transactional;

import org.apache.commons.codec.binary.Base64;
import org.springframework.stereotype.Service;

import com.miniproject.CarRental.Model.Vehicle;
import com.miniproject.CarRental.Repository.VehicleRepository;

@Service
@Transactional
public class VehicleService {

	private final VehicleRepository vehicleRepository;
	/* private static EntityManager entityManager; */
	
	public VehicleService(VehicleRepository vehicleRepository) {
		this.vehicleRepository = vehicleRepository;
	}
	
	public void saveMyVehicle(Vehicle vehicle) {
		vehicleRepository.save(vehicle);
	}
	
	public List<Vehicle> showAllVehicles() throws UnsupportedEncodingException{
		List<Vehicle> vehicles = new ArrayList<Vehicle>() ;
			for(Vehicle vehicle:vehicleRepository.findAll()) {

				vehicles.add(vehicle);
			}
			return vehicles;
		}
	public List<Vehicle> showVehicles(){
		List<Vehicle> vehicles = new ArrayList<Vehicle>() ;
			for(Vehicle vehicle:vehicleRepository.findAll()) {
				vehicles.add(vehicle);
			}
			return vehicles;
		}
	
	public void deleteMyVehicle(int idVehicle) {
		vehicleRepository.deleteById(idVehicle);
	}
	
	public Vehicle editVehicle(int idVehicle) {
		return vehicleRepository.findById(idVehicle).orElse(null);
	}
	
	/*
	 * public byte[] loadImage(int idVehicle) { return
	 * entityManager.find(Vehicle.class, idVehicle).getImageVehicle(); }
	 */

	
	}
	

