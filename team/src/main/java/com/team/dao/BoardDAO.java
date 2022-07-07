package com.team.dao;

import java.util.List;
import com.team.domain.BoardDTO;
<<<<<<< HEAD
<<<<<<< HEAD
import com.team.domain.CommentDTO;
=======
>>>>>>> Base
=======
>>>>>>> parent of 65fa9d6 (결제 구현)
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

	// 리턴할형없음 updateBoard(BoardDTO boardDTO) 메서드 정의
	public void updateBoard(BoardDTO boardDTO);

	public void deleteBoard(int b_num);

	public void updateReadcount(int b_num);
<<<<<<< HEAD
<<<<<<< HEAD
	
	public BoardDTO userCheck(BoardDTO boardDTO2);
	public List<CommentDTO> getCommentList(int b_num);
=======

>>>>>>> Base
=======

>>>>>>> parent of 65fa9d6 (결제 구현)
}
