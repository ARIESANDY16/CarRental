package com.miniproject.CarRental.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;

import com.miniproject.CarRental.Model.Reservation;

public interface ReservationRepository extends CrudRepository<Reservation, Integer>,JpaRepository<Reservation, Integer>,PagingAndSortingRepository<Reservation, Integer> {
	
	  @Query(value =
	  "SELECT r FROM Reservation r where r.customer.idCustomer =:idCustomer order By r.idReservation" )
	  List<Reservation> findByCustomer(@Param("idCustomer") int idCustomer);
	 
	  
	  @Query(value = "SELECT r FROM Reservation r where r.driver.idDriver =:idDriver order by r.idReservation" )
	  List<Reservation> findByDriver(@Param("idDriver") int idDriver);
	 
	 
	
}