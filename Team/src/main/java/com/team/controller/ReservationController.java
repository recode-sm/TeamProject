package com.team.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.team.service.ReservationService;



@Controller //주소맵핑
public class ReservationController {

	@Inject
	private ReservationService reservationService;
	
	
	@RequestMapping(value = "/reservation/reservation", method = RequestMethod.GET)
	public String reservation() {
		// /WEB-INF/views/reservation/reservation.jsp
		return "/reservation/reservation";
	}
	
	@RequestMapping(value = "/reservation/select", method = RequestMethod.GET)
	public String reserSelect(HttpServletRequest request,Model model) throws Exception{
		model.addAttribute("getFieldList_sel",reservationService.getFieldList_sel());
		return "/reservation/reservSelect";
	}
}

