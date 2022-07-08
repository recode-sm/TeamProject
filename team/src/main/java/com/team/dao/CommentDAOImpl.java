package com.team.dao;

import java.util.List;

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
	public CommentDTO getComment(int c_num) {
		return sqlSession.selectOne(namespace + ".getComment", c_num);
	}
	
	@Override
	public void updateComment(CommentDTO commentDTO) {
		sqlSession.update(namespace + ".updateComment", commentDTO);
	}
	
	@Override
	public void deleteComment(int c_num) {
		sqlSession.delete(namespace + ".deleteComment", c_num);
	}
	
	
		
}
