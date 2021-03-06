package com.ashu.flightreservation.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ashu.flightreservation.dto.ReservationRequest;
import com.ashu.flightreservation.entities.Flight;
import com.ashu.flightreservation.entities.Reservation;
import com.ashu.flightreservation.repos.FlightRepository;
import com.ashu.flightreservation.services.ReservationService;

@Controller
public class ReservationController {
	
	@Autowired
	FlightRepository flightRepository;
	
	@Autowired
	ReservationService reservationService;
	
	@RequestMapping("/showCompleteReservation")
	public String showCompleteReservation(@RequestParam("flightId") Long flightId,ModelMap modelMap) {
		
		Flight flight=flightRepository.findById(flightId).get();
		modelMap.addAttribute("flight", flight);
		return "completeReservation";
		
	}
	
	@RequestMapping(value = "completeReservation",method = RequestMethod.POST)
	public String completereservation(ReservationRequest request,ModelMap modelMap) {
		Reservation reservation = reservationService.bookFlight(request);	
		
		modelMap.addAttribute("msg","Reservaition created successfully and the id is "+reservation.getId());
		return "reservationConfirmation";
		
		
	}
	
	
	
	

}
