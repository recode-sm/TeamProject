package com.team.service;

import java.util.List;

import com.team.domain.DateDTO;
import com.team.domain.FieldDTO;
import com.team.domain.MemberDTO;
import com.team.domain.ReservDTO;


public interface ReservationService {

	public List<FieldDTO> getFieldList_sel() throws Exception;
	public List<FieldDTO> getFieldList_sel1(String sel) throws Exception;
	public MemberDTO getPhone(String id);
	public FieldDTO getFiled(int f_num);
	public void insertReserv(ReservDTO reservDTO);
	public List<ReservDTO> getReservList(String id);
	public List<DateDTO> getDateList(DateDTO dateDTO);
	public ReservDTO getReservation(String s_id);
}
