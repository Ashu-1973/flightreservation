package com.ashu.flightreservation.repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ashu.flightreservation.entities.Passenger;

public interface PassengerRepository extends JpaRepository<Passenger, Long> {

}
