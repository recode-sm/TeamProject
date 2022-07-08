package com.team.service;

import java.sql.Timestamp;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.team.dao.QuestionDAO;
import com.team.domain.PageDTO;
import com.team.domain.QuestionDTO;

@Service
public class QuestionServiceImpl implements QuestionService {

	@Inject
	private QuestionDAO questionDAO;
	
	@Override
	public void insertBoard(QuestionDTO questionDTO) {
		questionDTO.setReadcount(0);
		questionDTO.setQ_date(new Timestamp(System.currentTimeMillis()));
		
		if (questionDAO.getMaxNum() == null) {
			questionDTO.setGroup_order(1);
		} else {
			questionDTO.setGroup_order(questionDAO.getMaxNum() + 1);
		}

		questionDAO.insertBoard(questionDTO);
	}

	
	@Override
	public List<QuestionDTO> getBoardList(PageDTO pageDTO) {
		// pageSize, pageNum
		int currentPage = Integer.parseInt(pageDTO.getPageNum());
		int startRow = (currentPage - 1) * pageDTO.getPageSize() + 1;
		int endRow = startRow + pageDTO.getPageSize() - 1;

		pageDTO.setCurrentPage(currentPage);
//		pageDTO.setStartRow(startRow);
		pageDTO.setEndRow(endRow);

		// 디비 조회 limit startRow-1, pageSize
		pageDTO.setStartRow(startRow - 1);

		return questionDAO.getBoardList(pageDTO);
	}

	@Override
	public int getBoardCount() {
		return questionDAO.getBoardCount();
	}

	@Override
	public QuestionDTO getBoard(int q_num) {
		return questionDAO.getBoard(q_num);
	}

	@Override
	public void updateBoard(QuestionDTO questionDTO) {
		questionDTO.setQ_date(new Timestamp(System.currentTimeMillis()));
		
		questionDAO.updateBoard(questionDTO);
	}

	@Override
	public void updateReadcount(int q_num) {
		questionDAO.updateReadcount(q_num);
	}

	@Override
	public void deleteBoard(int q_num) {
		questionDAO.deleteBoard(q_num);
	}

	@Override
	public void insertReply(QuestionDTO questionDTO) {
		questionDTO.setReadcount(0);
		questionDTO.setQ_date(new Timestamp(System.currentTimeMillis()));
		
		questionDAO.insertReply(questionDTO);
	}

	
	
}
