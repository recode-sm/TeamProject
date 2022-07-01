package com.team.dao;

import java.util.List;

import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.team.domain.FieldDTO;

@Repository
public class FieldDAOImpl implements FieldDAO {

	@Inject
	private SqlSession sqlSession;

	private static final String namespace = "com.itwillbs.team.fieldMapper";

	@Override
	public void insertFeild(FieldDTO fieldDTO) {
		sqlSession.insert(namespace + ".insertField", fieldDTO);
	}

	@Override
	public List<FieldDTO> getFieldList() {
		return sqlSession.selectList(namespace + ".getFieldList");
	}

	
}
