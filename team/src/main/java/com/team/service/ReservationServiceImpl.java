package com.team.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.team.dao.ReservationDAO;
import com.team.domain.DateDTO;
import com.team.domain.FieldDTO;
import com.team.domain.MemberDTO;
import com.team.domain.ReservDTO;

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

	@Override
	public MemberDTO getPhone(String id) {
		
		return reservationDAO.getPhone(id);
	}

	@Override
	public FieldDTO getFiled(int f_num) {
		return reservationDAO.getField(f_num);
	}

	@Override
	public void insertReserv(ReservDTO reservDTO) {
		reservationDAO.insertReserv(reservDTO);
		
	}

	@Override
	public List<ReservDTO> getReservList(String id) {
	
		return reservationDAO.getReservList(id);
	}

	
	@Override
	public List<DateDTO> getDateList(DateDTO dateDTO) {
		System.out.println("getDateList()");
		
		return reservationDAO.getDateList(dateDTO);
	}
	
	
}
