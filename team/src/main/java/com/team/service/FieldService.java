package com.team.service;

import java.util.List;

import com.team.domain.FieldDTO;

public interface FieldService {
		
	public void insertFeild(FieldDTO fieldDTO);

	public List<FieldDTO> getFieldList();
		
}
