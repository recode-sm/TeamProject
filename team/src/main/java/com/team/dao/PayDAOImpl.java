package com.team.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.team.domain.PayDTO;

@Repository
public class PayDAOImpl implements PayDAO {
	
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "com.team.service.payMapper";
	
	@Override
	public void insertPay(PayDTO payDTO) {
		sqlSession.insert(namespace + ".insertPay", payDTO);
	}
		
}