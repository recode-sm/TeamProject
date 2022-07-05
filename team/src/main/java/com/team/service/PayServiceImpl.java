package com.team.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team.dao.PayDAO;
import com.team.domain.PayDTO;

@Service
public class PayServiceImpl implements PayService {
	
	
	@Autowired
	private PayDAO payDAO;

	@Override
	public void insertPay(PayDTO payDTO) {
		payDAO.insertPay(payDTO);
	}

}
