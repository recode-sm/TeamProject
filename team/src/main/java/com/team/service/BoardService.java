package com.team.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.team.domain.PageDTO;
import com.team.domain.BoardDTO;
import com.team.domain.CommentDTO;
import com.team.domain.MemberDTO;

@Service
public interface BoardService {
	//추상메서드 정의
	public void insertBoard(BoardDTO boardDTO);
	
//	List<BoardDTO> boardList = boardService.getBoardList(pageDTO)
	public List<BoardDTO> getBoardList(PageDTO pageDTO);

//	int count=boardService.getBoardCount();
	public int getBoardCount();
	
//	BoardDTO boardDTO = boardService.getBoard(num);	
	public BoardDTO getBoard(int b_num);
	
	public void updateBoard(BoardDTO boardDTO);
	
	public void updateReadcount(int b_num);
	
	public void deleteBoard(int b_num);
	
	public BoardDTO userCheck(BoardDTO boardDTO2);
	
	public List<CommentDTO> getCommentList(int b_num);
}
