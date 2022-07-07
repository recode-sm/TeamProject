package com.team.service;

import java.util.List;

<<<<<<< HEAD
import com.team.domain.DateDTO;
=======
>>>>>>> Base
import com.team.domain.FieldDTO;
import com.team.domain.MemberDTO;
import com.team.domain.ReservDTO;


public interface ReservationService {

	public List<FieldDTO> getFieldList_sel() throws Exception;
	public List<FieldDTO> getFieldList_sel1(String sel) throws Exception;
	public MemberDTO getPhone(String id);
	public FieldDTO getFiled(int f_num);
	public void insertReserv(ReservDTO reservDTO);
<<<<<<< HEAD
<<<<<<< HEAD
	public List<DateDTO> getDateList(DateDTO dateDTO);
	public ReservDTO getReservation(String s_id);
=======
>>>>>>> Base
=======
	public List<DateDTO> getDateList(String sel);
>>>>>>> parent of 65fa9d6 (결제 구현)
}
