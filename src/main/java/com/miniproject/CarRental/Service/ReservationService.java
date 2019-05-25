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

	public List<Reservation> showAllReservations() {
		List<Reservation> reservations = new ArrayList<Reservation>();
		for (Reservation reservation : reservationRepository.findAll()) {
			reservations.add(reservation);
		}
		return reservations;
	}

	public List<Reservation> showReservations() {
		List<Reservation> reservations = new ArrayList<Reservation>();
		for (Reservation reservation : reservationRepository.findAll()) {
			reservations.add(reservation);
		}
		return reservations;
	}

	public List<Reservation> driverTask() {
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

	public void reservationCustomer(Reservation reservation) {
		int hargaKendaraan = reservation.getVehicle().getPriceVehicle();
		int durasi = reservation.getRentDuration();
		int total = hargaKendaraan * durasi;
		reservation.setTotalPayment(total);
		reservationRepository.save(reservation);
	}

	public void reservationAdmin(Reservation reservation) {
		int hargaKendaraan = reservation.getVehicle().getPriceVehicle();
		int durasi = reservation.getRentDuration();
		int hargaDriver = reservation.getDriver().getPriceDriver();
		int total = (hargaKendaraan * durasi) + (hargaDriver * durasi);
		reservation.setTotalPayment(total);
		reservationRepository.save(reservation);
	}

	// Add New
	public List<Reservation> showReservations(int idCustomer) {
		return reservationRepository.findByCustomer(idCustomer);
	}

	public List<Reservation> driverTask(int idDriver) {
		return reservationRepository.findByDriver(idDriver);
	}

}
