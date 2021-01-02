package com.ashu.flightreservation.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ashu.flightreservation.dto.ReservationRequest;
import com.ashu.flightreservation.entities.Flight;
import com.ashu.flightreservation.entities.Passenger;
import com.ashu.flightreservation.entities.Reservation;
import com.ashu.flightreservation.repos.FlightRepository;
import com.ashu.flightreservation.repos.PassengerRepository;
import com.ashu.flightreservation.repos.ReservationRepository;
import com.ashu.flightreservation.util.EmailUtil;
import com.ashu.flightreservation.util.PDFGenerator;

@Service
public class ReservationServiceImpl implements ReservationService {

	@Value("${com.ashu.flightreservation.itinerary.dirpath}")
	private  String ITINERARY_DIR;

	@Autowired
	FlightRepository flightRepository;
	
	@Autowired
	PassengerRepository passengerRepository;
	
	@Autowired
	ReservationRepository reservationRepository;
	
	@Autowired
	PDFGenerator pdfGenerator;
	
	@Autowired
	EmailUtil emailUtil;
	
	@Override
	@Transactional
	public Reservation bookFlight(ReservationRequest request) {
		//payment 
		
		Long flightId = request.getFlightId();
		Flight flight=flightRepository.findById(flightId).get();
		
		Passenger passenger=new Passenger();
		passenger.setFirstName(request.getPassengerFirstName());
		passenger.setLastName(request.getPassengerLastName());
		passenger.setPhone(request.getPassengerPhone());
		passenger.setEmail(request.getPassengerEmail());
		
		Passenger savedPassenger = passengerRepository.save(passenger);
		
		Reservation reservation=new Reservation();
		reservation.setFlight(flight);
		reservation.setPassenger(savedPassenger);
		reservation.setCheckedIn(false);
		Reservation saveReservation = reservationRepository.save(reservation);
		
		String filePath =ITINERARY_DIR+saveReservation.getId()+".pdf";
		pdfGenerator.generateItinerary(saveReservation,filePath);
		emailUtil.sendItinerary(passenger.getEmail(), filePath);
		
		return saveReservation;
	}

}
