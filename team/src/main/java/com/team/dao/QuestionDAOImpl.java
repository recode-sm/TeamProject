package com.team.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.team.domain.PageDTO;
import com.team.domain.QuestionDTO;

@Repository
public class QuestionDAOImpl implements QuestionDAO{

	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "com.team.question.QuestionMapper";
	
	@Override
	public void insertBoard(QuestionDTO questionDTO) {
		sqlSession.insert(namespace + ".insertBoard", questionDTO);
	}	

	@Override
	public Integer getMaxNum() {
		return sqlSession.selectOne(namespace + ".getMaxNum");
	}
	
	@Override
	public Integer getMaxOrder() {
		return sqlSession.selectOne(namespace + ".getMaxOrder");
	}

	@Override
	public List<QuestionDTO> getBoardList(PageDTO pageDTO) {
		return sqlSession.selectList(namespace + ".getBoardList", pageDTO);
	}

	@Override
	public int getBoardCount() {
		return sqlSession.selectOne(namespace + ".getBoardCount");
	}

	@Override
	public QuestionDTO getBoard(int q_num) {
		return sqlSession.selectOne(namespace + ".getBoard", q_num);
	}

	@Override
	public void updateBoard(QuestionDTO questionDTO) {
		sqlSession.update(namespace + ".updateBoard", questionDTO);
	}

	@Override
	public void deleteBoard(int q_num) {
		sqlSession.delete(namespace + ".deleteBoard", q_num);
	}

	@Override
	public void updateReadcount(int q_num) {
		sqlSession.update(namespace + ".updateReadcount", q_num);
	}

	@Override
	public void insertReply(QuestionDTO questionDTO) {
		sqlSession.insert(namespace + ".insertReply", questionDTO);
	}

	
}
