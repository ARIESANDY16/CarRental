package com.miniproject.CarRental.Service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.miniproject.CarRental.Model.Reservation;
import com.miniproject.CarRental.Repository.ReservationRepository;

@Service
@Transactional
public class ReservationService {
	private final ReservationRepository reservationRepository;

	public ReservationService(ReservationRepository reservationRepository) {
		this.reservationRepository = reservationRepository;
	}

	public void saveMyReservation(Reservation reservation) {
		reservationRepository.save(reservation);

	}

	public List<Reservation> showAllReservation() {
		List<Reservation> reservations = new ArrayList<Reservation>();
		for (Reservation reservation : reservationRepository.findAll()) {
			reservations.add(reservation);
		}
		return reservations;
	}

	public void deleteMyReservation(int idReservation) {
		reservationRepository.deleteById(idReservation);
	}

	public Reservation editReservation(int idReservation) {
		return reservationRepository.findById(idReservation).orElse(null);
	}

}
