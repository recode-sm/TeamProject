package com.team.service;

import java.sql.Timestamp;
import java.util.List;
import javax.inject.Inject;
import org.springframework.stereotype.Service;
import com.team.domain.BoardDTO;
<<<<<<< HEAD
<<<<<<< HEAD
import com.team.domain.CommentDTO;
=======
>>>>>>> Base
=======
>>>>>>> parent of 65fa9d6 (결제 구현)
import com.team.domain.PageDTO;
import com.team.dao.BoardDAO;

@Service
public class BoardServiceImpl implements BoardService {
	// 객체생성
	@Inject
	private BoardDAO boardDAO;

	@Override
	public void insertBoard(BoardDTO boardDTO) {
		// name pass subject content => 폼에서 가져옴
		// num readcount date => 값 설정
		boardDTO.setReadcount(0);
		boardDTO.setB_date(new Timestamp(System.currentTimeMillis()));

		// max(num)+1
		if (boardDAO.getMaxNum() == null) {
			boardDTO.setB_num(1);
		} else {
			boardDTO.setB_num(boardDAO.getMaxNum() + 1);
		}

		// 메서드 호출
		boardDAO.insertBoard(boardDTO);
	}

	@Override
	public List<BoardDTO> getBoardList(PageDTO pageDTO) {
		// pageSize, pageNum
		int currentPage = Integer.parseInt(pageDTO.getPageNum());
		int startRow = (currentPage - 1) * pageDTO.getPageSize() + 1;
		int endRow = startRow + pageDTO.getPageSize() - 1;

		pageDTO.setCurrentPage(currentPage);
//		pageDTO.setStartRow(startRow);
		pageDTO.setEndRow(endRow);

		// 디비 조회 limit startRow-1, pageSize
		pageDTO.setStartRow(startRow - 1);

		return boardDAO.getBoardList(pageDTO);
	}

	@Override
	public int getBoardCount() {
		return boardDAO.getBoardCount();
	}

	@Override
	public BoardDTO getBoard(int b_num) {
		return boardDAO.getBoard(b_num);
	}

	@Override
	public void deleteBoard(int b_num) {
		boardDAO.deleteBoard(b_num);
	}

	@Override
	public void updateBoard(BoardDTO boardDTO) {
		System.out.println("ServiceUpdate");
		// 날짜
		boardDTO.setB_date(new Timestamp(System.currentTimeMillis()));
		// 메서드 호출
		boardDAO.updateBoard(boardDTO);
	}

	@Override
	public void updateReadcount(int b_num) {
		boardDAO.updateReadcount(b_num);
	}
<<<<<<< HEAD
<<<<<<< HEAD
	
	@Override
	public BoardDTO userCheck(BoardDTO boardDTO2) {
		return boardDAO.userCheck(boardDTO2);
	}

	@Override
	public List<CommentDTO> getCommentList(int b_num){
		return boardDAO.getCommentList(b_num);
	}
=======

>>>>>>> Base
=======

>>>>>>> parent of 65fa9d6 (결제 구현)
}
