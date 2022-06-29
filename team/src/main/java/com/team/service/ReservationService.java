package com.team.service;

import java.util.List;

import com.team.domain.FieldDTO;


public interface ReservationService {

	public List<FieldDTO> getFieldList_sel() throws Exception;
	public List<FieldDTO> getFieldList_sel1(String sel) throws Exception;
}
