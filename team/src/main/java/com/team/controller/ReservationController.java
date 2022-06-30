package com.team.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller //주소맵핑
public class ReservationController {

	@RequestMapping(value = "/reservation/reservation", method = RequestMethod.GET)
	public String reservation() {
		// /WEB-INF/views/reservation/reservation.jsp
		return "/reservation/reservation";
	}
}

