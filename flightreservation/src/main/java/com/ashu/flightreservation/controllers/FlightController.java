package com.ashu.flightreservation.controllers;

//import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ashu.flightreservation.entities.Flight;
import com.ashu.flightreservation.repos.FlightRepository;

@Controller
public class FlightController {
	
	@Autowired
	FlightRepository flightRepository;

	@RequestMapping(value="findFlights", method = RequestMethod.POST)
	public String findFlights(@RequestParam("from") String from,@RequestParam("to") String to,
			@DateTimeFormat(pattern = "mm/dd/yyyy") String departureDate,ModelMap modelMap) {
		
		List<Flight>  flights  = flightRepository.findFlights(from,to,departureDate);
		modelMap.addAttribute("flights", flights);
		
		return "displayFlights" ;
		
	}
	
	@RequestMapping(value="viewFlights", method = RequestMethod.POST)
	public String viewFlights(@RequestParam("departureCity") String departureCity,@RequestParam("arrivalCity") String arrivalCity,
			@DateTimeFormat(pattern = "mm/dd/yyyy") String departureDate,ModelMap modelMap) {
		
		List<Flight>  flights  = flightRepository.findFlights(departureCity,arrivalCity,departureDate);
		modelMap.addAttribute("flights", flights);
		
		return "viewToUpdate" ;
		
	}
	
	@RequestMapping("admin/adminControl")
	public String adminControl(){
		
		return "admin";
	}
	
	@RequestMapping("/updateFlight")
	public String updateFlight() {
		
		return "updateFlight";
	}
	
	@RequestMapping(value="addedFlight", method = RequestMethod.POST)
	public String addedFlight(@DateTimeFormat(pattern = "mm/dd/yyyy") String departuredate,@ModelAttribute("flight") Flight flight){
		flight.setDateOfDeparture(departuredate);
		flightRepository.save(flight);			
		return "addFlight";
	}
	
	@RequestMapping("/addFlight")
	public String addFlight() {
		return "addFlight";
	}
	
	@RequestMapping("/deleteFlight")
	public String deleteStudent(@RequestParam("flightId") long flightId,ModelMap modelMap) {
		Flight flight = flightRepository.findById(flightId).get();
		flightRepository.delete(flight);
		List<Flight>  flights  = flightRepository.findFlights(flight.getDepartureCity(),flight.getArrivalCity(),flight.getDateOfDeparture());
		modelMap.addAttribute("flights", flights);
		
		return "viewToUpdate" ;
	}
	
	@RequestMapping("/editFlight")
	public String editStudent(@RequestParam("flightId") long flightId,ModelMap modelMap) {
		Flight flight = flightRepository.findById(flightId).get();
		modelMap.addAttribute("flight",flight);
		return "editFlight";
		
	}
	
	@RequestMapping(value="updatedFlight", method = RequestMethod.POST)
	public String updatedFlight(@DateTimeFormat(pattern = "mm/dd/yyyy") String departuredate,@ModelAttribute("flight") Flight flight,ModelMap modelMap){
		flight.setDateOfDeparture(departuredate);
		flightRepository.save(flight);
		List<Flight>  flights  = flightRepository.findFlights(flight.getDepartureCity(),flight.getArrivalCity(),flight.getDateOfDeparture());
		modelMap.addAttribute("flights", flights);
		
		return "viewToUpdate" ;
					
		
	}
	
	
	
}
