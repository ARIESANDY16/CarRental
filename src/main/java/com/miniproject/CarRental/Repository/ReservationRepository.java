package com.miniproject.CarRental.Repository;

import org.springframework.data.repository.CrudRepository;

import com.miniproject.CarRental.Model.Reservation;

public interface ReservationRepository extends CrudRepository<Reservation, Integer>{

}
