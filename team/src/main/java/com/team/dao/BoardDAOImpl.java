package com.team.dao;

import java.util.List;
import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import com.team.domain.PageDTO;
import com.team.domain.BoardDTO;
import com.team.domain.CommentDTO;

@Repository
public class BoardDAOImpl implements BoardDAO {
	// 마이바티스 객체생성
	@Inject
	private SqlSession sqlSession;

	private static final String namespace = "com.team.board.BoardMapper";

	@Override
	public void insertBoard(BoardDTO boardDTO) {
		sqlSession.insert(namespace + ".insertBoard", boardDTO);
	}

	@Override
	public Integer getMaxNum() {
		return sqlSession.selectOne(namespace + ".getMaxNum");
	}

	@Override
	public List<BoardDTO> getBoardList(PageDTO pageDTO) {
		return sqlSession.selectList(namespace + ".getBoardList", pageDTO);
	}

	@Override
	public int getBoardCount() {
		return sqlSession.selectOne(namespace + ".getBoardCount");
	}

	@Override
	public BoardDTO getBoard(int b_num) {
		return sqlSession.selectOne(namespace + ".getBoard", b_num);
	}

	@Override
	public void updateBoard(BoardDTO boardDTO) {
		sqlSession.update(namespace + ".updateBoard", boardDTO);
	}

	@Override
	public void deleteBoard(int b_num) {
		sqlSession.delete(namespace + ".deleteBoard", b_num);
	}

	@Override
	public void updateReadcount(int b_num) {
		sqlSession.update(namespace + ".updateReadcount", b_num);
	}

	@Override
	public BoardDTO userCheck(BoardDTO boardDTO2) {
		return sqlSession.selectOne(namespace + ".userCheck", boardDTO2);
	}
	@Override
	public List<CommentDTO> getCommentList(int b_num) {
		return sqlSession.selectList(namespace + ".getCommentList", b_num);
	}
	
	
}
