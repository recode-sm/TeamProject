package com.team.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.team.domain.CommentDTO;

@Repository
public class CommentDAOImpl implements CommentDAO{
	// 마이바티스 객체생성
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "com.team.comment.CommentMapper";
	
	@Override
	public void insertComment(CommentDTO commentDTO) {
		sqlSession.insert(namespace + ".insertComment", commentDTO);
	}
	
	@Override
	public Integer getMaxNum() {
		return sqlSession.selectOne(namespace + ".getMaxNum");
	}
	
	@Override
	public CommentDTO getBoard(int b_num) {
		return sqlSession.selectOne(namespace + ".getBoard", b_num);
	}
		
}
