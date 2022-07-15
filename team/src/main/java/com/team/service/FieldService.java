package com.team.service;

import java.util.List;

import com.team.domain.FieldDTO;

public interface FieldService {
		
	public void insertFeild(FieldDTO fieldDTO);

	public List<FieldDTO> getFieldList();

	public FieldDTO getField(int f_num);

	public void fieldUpdatePro(FieldDTO fieldDTO);
		
}
