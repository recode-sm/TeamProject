package com.team.dao;

import com.team.domain.CommentDTO;

public interface CommentDAO {
	
	public void insertComment(CommentDTO commentDTO);
	
	// commentDAO.getMaxNum()
	public Integer getMaxNum();
	
	public CommentDTO getBoard(int b_num);
}
