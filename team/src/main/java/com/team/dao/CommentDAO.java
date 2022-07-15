package com.team.dao;

import com.team.domain.CommentDTO;

public interface CommentDAO {
	
	public void insertComment(CommentDTO commentDTO);
	
	// commentDAO.getMaxNum()
	public Integer getMaxNum();
	
	//	특정 댓글 조회
	public CommentDTO getComment(int c_num);
	
	public void updateComment(CommentDTO commentDTO);
	
	public void deleteComment(int c_num);
}
