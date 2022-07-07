package com.team.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

<<<<<<< HEAD
import com.team.domain.DateDTO;
=======
>>>>>>> Base
import com.team.domain.FieldDTO;
import com.team.domain.MemberDTO;
import com.team.domain.ReservDTO;

@Repository
public class ReservationDAOImpl implements ReservationDAO{

	@Inject
	private SqlSession sqlSession;
	private static final String namespace="com.team.reservation.reservationMapper";
	@Override
	
	
	public List<FieldDTO> getFieldList_sel() throws Exception {
		
		return sqlSession.selectList(namespace+".getFeildList_sel");
	}
	@Override
	public List<FieldDTO> getFieldList_sel1(String sel) throws Exception {
	
		return sqlSession.selectList(namespace+".getFeildList_sel1",sel);
	}
	@Override
	public MemberDTO getPhone(String id) {
		return sqlSession.selectOne(namespace+".getPhone",id);
	}
	@Override
	public FieldDTO getField(int f_num) {
		
		return sqlSession.selectOne(namespace+".getField",f_num);
	}
	
	@Override
	public void insertReserv(ReservDTO reservDTO) {
		
		reservDTO.setStart_time(reservDTO.getStart_time().substring(0, 2));
		System.out.println("starttime"+reservDTO.getStart_time());
		reservDTO.setEnd_time(reservDTO.getStart_time().substring(6, 8));
		System.out.println("endtime"+reservDTO.getEnd_time());
		sqlSession.selectOne(namespace+".insertReserv",reservDTO);
		
		
	}
	
<<<<<<< HEAD
	@Override
	public List<DateDTO> getDateList(String sel) {
		System.out.println("getDateList()");
		
		return sqlSession.selectList(namespace+".getDateList",sel);
	}
=======
	
	
>>>>>>> Base
	
	
	
	
	
}
