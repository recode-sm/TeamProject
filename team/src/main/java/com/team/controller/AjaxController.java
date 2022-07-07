package com.team.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.team.domain.FieldDTO;
import com.team.service.ReservationService;

@RestController
public class AjaxController {
	
	@Inject
	private ReservationService reservationService;
	
	@RequestMapping(value = "/reservation/select_sel", method = RequestMethod.GET)
	public ResponseEntity<List<FieldDTO>> list_sel(HttpServletRequest request) throws Exception {
		ResponseEntity<List<FieldDTO>> entity = null;		
		
		String sel=request.getParameter("sel");
		
		List<FieldDTO> fieldList = reservationService.getFieldList_sel1(sel);
		
		entity = new ResponseEntity<List<FieldDTO>>(fieldList,HttpStatus.OK);
		return entity;
		
	}
	
}
