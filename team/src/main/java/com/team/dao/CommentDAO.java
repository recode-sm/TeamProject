package com.team.dao;

import java.util.List;

import com.team.domain.CommentDTO;

public interface CommentDAO {
	
	public void insertComment(CommentDTO commentDTO);
	
	// commentDAO.getMaxNum()
	public Integer getMaxNum();
	
	
	
}
