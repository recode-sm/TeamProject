package com.team.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.team.dao.ReservationDAO;
import com.team.domain.FieldDTO;

@Service
public class ReservationServiceImpl implements ReservationService{

	@Inject
	private ReservationDAO reservationDAO;

	@Override
	public List<FieldDTO> getFieldList_sel() throws Exception {
	
		return reservationDAO.getFieldList_sel();
	}

	@Override
	public List<FieldDTO> getFieldList_sel1(String sel) throws Exception {
		
		return reservationDAO.getFieldList_sel1(sel);
	}
	
	
}
