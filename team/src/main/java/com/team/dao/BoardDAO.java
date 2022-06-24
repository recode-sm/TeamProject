package com.team.dao;

import java.util.List;

import com.team.domain.BoardDTO;
import com.team.domain.PageDTO;

public interface BoardDAO {
	
	public void insertBoard(BoardDTO boardDTO);
	
	// boardDAO.getMaxNum()
	public Integer getMaxNum();
	
//	List<BoardDTO> boardList = boardService.getBoardList(pageDTO)
	public List<BoardDTO> getBoardList(PageDTO pageDTO);
	
//	int count=boardService.getBoardCount();
	public int getBoardCount();
	
	public BoardDTO getBoard(int b_num);
	
	public void deleteBoard(int b_num);
	
	// 리턴할형없음 updateBoard(BoardDTO boardDTO) 메서드 정의 
	public void updateBoard(BoardDTO boardDTO);
	
	
}
