package com.team.service;

import java.util.List;

import javax.inject.Inject;
import org.springframework.stereotype.Service;
import com.team.dao.FieldDAO;
import com.team.domain.FieldDTO;

@Service
public class FieldServiceImpl implements FieldService{
	
	@Inject
	private FieldDAO fieldDAO;
	
	@Override
	public void insertFeild(FieldDTO fieldDTO) {
		fieldDAO.insertFeild(fieldDTO);		
	}

	@Override
	public List<FieldDTO> getFieldList() {
		return fieldDAO.getFieldList();
	}

	


	
}
