package com.team.service;

import org.springframework.stereotype.Service;

import com.team.domain.CommentDTO;

public interface CommentService {
	public void insertComment(CommentDTO commentDTO);
}
