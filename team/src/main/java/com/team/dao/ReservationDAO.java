package com.team.dao;

import java.util.List;

import com.team.domain.FieldDTO;

public interface ReservationDAO {

	public List<FieldDTO> getFieldList_sel() throws Exception;
	public List<FieldDTO> getFieldList_sel1(String sel) throws Exception;
}
