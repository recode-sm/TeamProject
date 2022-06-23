package com.team.service;

import java.sql.Timestamp;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.team.dao.BoardDAO;
import com.team.domain.BoardDTO;

@Service
public class BoardServiceImpl implements BoardService{

	//객체생성
	@Inject
	private BoardDAO boardDAO;
	
	@Override
	public void insertBoard(BoardDTO boardDTO) {
		// name pass subject content => 폼에서 가져옴
		// num readcount date => 값 설정
		boardDTO.setReadcount(0);
		boardDTO.setDate(new Timestamp(System.currentTimeMillis()));
		
		// max(num)+1
		if(boardDAO.getMaxNum()==null) {
			boardDTO.setNum(1);
		}else {
			boardDTO.setNum(boardDAO.getMaxNum()+1);
		}
		
		
		boardDAO.insertBoard(boardDTO);
	}

}
