package com.team.dao;

import java.util.List;

import com.team.domain.PageDTO;
import com.team.domain.QuestionDTO;

public interface QuestionDAO {

	public void insertBoard(QuestionDTO questionDTO);
	
	public Integer getMaxNum();
	
	public Integer getMaxOrder();

	public List<QuestionDTO> getBoardList(PageDTO pageDTO);

	public int getBoardCount();

	public QuestionDTO getBoard(int q_num);

	public void updateBoard(QuestionDTO questionDTO);

	public void deleteBoard(int q_num);

	public void updateReadcount(int q_num);
	
	public void insertReply(QuestionDTO questionDTO);
}
