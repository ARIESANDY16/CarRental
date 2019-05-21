package com.miniproject.CarRental.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.miniproject.CarRental.Model.Reservation;
import com.miniproject.CarRental.Model.Vehicle;

public interface ReservationRepository extends CrudRepository<Reservation, Integer>,JpaRepository<Reservation, Integer>,PagingAndSortingRepository<Reservation, Integer> {
	/* public Vehicle findByVehicle (Vehicle vehicle); */
	/*
	 * @Query(value =
	 * "SELECT customer.fullname_customer, vehicle.name_vehicle,vehicle.price_vehicle,driver.fullname_driver AS vid,driver.price_driver,reservation.from_date, reservation.to_date, reservation.duration,reservation.status_reservation,reservation.from_location,reservation.to_location, (vehicle.price_vehicle * reservation.duration)+(driver.price_driver * reservation.duration) as total FROM reservation JOIN vehicle on vehicle.id_vehicle = reservation.id_vehicle JOIN customer ON customer.id_customer =reservation.id_customer JOIN driver ON driver.id_driver = reservation.id_driver"
	 * , nativeQuery = true) List<Reservation> findByParam( int idReservation);
	 */
		
	/*
	 * @Query("SELECT new com.miniproject.CarRental.Model.Reservation(d.fullnameCustomer, e.idVehicle, e.idDriver, e.fromDate, e.toDate,e.duration,e.statusReservation,e.fromLocation,e.toLocation) "
	 * + "FROM Customer d INNER JOIN d.Reservation e") List<Reservation>
	 * fetchReservationDataInnerJoin();
	 */
}