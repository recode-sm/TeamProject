package com.team.controller;

import java.util.List;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

public class rescontroller {
	@RequestMapping(value = "/getimebyseat", method = RequestMethod.GET)
	public List<Integer> getReservation(@RequestParam("seat") String seat) {
		System.out.println("예약시간" +seat); 
		return ReservationService.getCanRerserTime(seat);
	}
	
}

