package com.team.service;

import javax.inject.Inject;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import com.team.dao.CommentDAO;
import com.team.domain.CommentDTO;

@Service
public class CommentServiceImpl implements CommentService {
	@Inject
	private CommentDAO commentDAO;
	
	@Override
	public void insertComment(CommentDTO commentDTO) {
		commentDTO.setC_date(new Timestamp(System.currentTimeMillis()));
		
		// max(num)+1
		if(commentDAO.getMaxNum() == null) {
			commentDTO.setC_num(1);
		} else {
			commentDTO.setC_num(commentDAO.getMaxNum() + 1);
		}
		
		commentDAO.insertComment(commentDTO);
	}
	
	@Override
	public CommentDTO getBoard(int b_num) {
		return commentDAO.getBoard(b_num);
	}
}
