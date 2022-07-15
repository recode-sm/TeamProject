package com.team.service;

import com.team.domain.CommentDTO;

public interface CommentService {
	public void insertComment(CommentDTO commentDTO);
	
	public CommentDTO getComment(int c_num);
	
	public void updateComment(CommentDTO commentDTO);
	
	public void deleteComment(int c_num);

}
