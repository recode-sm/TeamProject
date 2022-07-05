package com.team.dao;

import java.util.List;

import com.team.domain.FieldDTO;

public interface FieldDAO {

	public void insertFeild(FieldDTO fieldDTO);
	
	public List<FieldDTO> getFieldList();
}
