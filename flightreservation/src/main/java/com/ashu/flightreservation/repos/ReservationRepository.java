package com.ashu.flightreservation.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ashu.flightreservation.entities.Reservation;

public interface ReservationRepository extends JpaRepository<Reservation, Long> {

}
