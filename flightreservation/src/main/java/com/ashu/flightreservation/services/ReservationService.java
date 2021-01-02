package com.ashu.flightreservation.services;

import com.ashu.flightreservation.dto.ReservationRequest;
import com.ashu.flightreservation.entities.Reservation;

public interface ReservationService {
	
	public Reservation bookFlight(ReservationRequest request);

}
