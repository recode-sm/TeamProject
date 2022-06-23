package com.team.dao;

import com.team.domain.BoardDTO;

public interface BoardDAO {
	//추상메서드
	public void insertBoard(BoardDTO boardDTO);
	
//	boardDAO.getMaxNum()
	public Integer getMaxNum();
}
