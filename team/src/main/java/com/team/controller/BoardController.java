package com.team.controller;

<<<<<<< HEAD
<<<<<<< HEAD
import java.text.SimpleDateFormat;
=======
>>>>>>> Base
=======
>>>>>>> parent of 65fa9d6 (결제 구현)
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
<<<<<<< HEAD
<<<<<<< HEAD
import javax.servlet.http.HttpSession;

=======
>>>>>>> Base
=======
>>>>>>> parent of 65fa9d6 (결제 구현)
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.team.domain.PageDTO;
import com.team.domain.BoardDTO;
<<<<<<< HEAD
<<<<<<< HEAD
import com.team.domain.CommentDTO;
import com.team.domain.MemberDTO;
=======
>>>>>>> Base
=======
>>>>>>> parent of 65fa9d6 (결제 구현)
import com.team.service.BoardService;

@Controller // 주소맵핑
public class BoardController {

	@Inject
	private BoardService boardService;

	@RequestMapping(value = "/notice/notice", method = RequestMethod.GET)
	public String reservation() {
		// /WEB-INF/views/notice/list.jsp
		return "/notice/notice";
	}

	@RequestMapping(value = "/notice/write", method = RequestMethod.GET)
<<<<<<< HEAD
<<<<<<< HEAD
	public String insert(HttpSession session) {
		// /WEB-INF/views/notice/writeForm.jsp
		String id=(String)session.getAttribute("id");
=======
	public String insert() {
		// /WEB-INF/views/notice/writeForm.jsp
>>>>>>> Base
=======
	public String insert() {
		// /WEB-INF/views/notice/writeForm.jsp
>>>>>>> parent of 65fa9d6 (결제 구현)
		return "/notice/writeForm";
	}

	@RequestMapping(value = "/notice/writePro", method = RequestMethod.POST)
	public String writePro(BoardDTO boardDTO) {
		boardService.insertBoard(boardDTO);
		return "redirect:/notice/list";
	}

	// http://localhost:8080/myweb2/board/list?pageNum=2
	// http://localhost:8080/myweb2/board/list
	@RequestMapping(value = "/notice/list", method = RequestMethod.GET)
<<<<<<< HEAD
<<<<<<< HEAD
	public String list(HttpServletRequest request, Model model, HttpSession session) {
=======
	public String list(HttpServletRequest request, Model model) {
>>>>>>> Base
=======
	public String list(HttpServletRequest request, Model model) {
>>>>>>> parent of 65fa9d6 (결제 구현)
		int pageSize = 10;
		String pageNum = request.getParameter("pageNum");
		if (pageNum == null) {
			pageNum = "1";
		}
		PageDTO pageDTO = new PageDTO();
		pageDTO.setPageSize(pageSize);
		pageDTO.setPageNum(pageNum);

		List<BoardDTO> boardList = boardService.getBoardList(pageDTO);

		int currentPage = Integer.parseInt(pageDTO.getPageNum());
		int count = boardService.getBoardCount();
		int pageBlock = 10;
		int startPage = (currentPage - 1) / pageBlock * pageBlock + 1;
		int endPage = startPage + pageBlock - 1;
		int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);
		if (endPage > pageCount) {
			endPage = pageCount;
		}
		pageDTO.setCount(count);
		pageDTO.setPageBlock(pageBlock);
		pageDTO.setStartPage(startPage);
		pageDTO.setEndPage(endPage);
		pageDTO.setPageCount(pageCount);

		model.addAttribute("boardList", boardList);
		model.addAttribute("pageDTO", pageDTO);
<<<<<<< HEAD
<<<<<<< HEAD
		
		String id=(String)session.getAttribute("id");
		
=======
>>>>>>> Base
=======
>>>>>>> parent of 65fa9d6 (결제 구현)

		// /WEB-INF/views/board/list.jsp
		return "/notice/list";
	}

	@RequestMapping(value = "/notice/listPro", method = RequestMethod.GET)
	public String listPro(HttpServletRequest request, Model model) {
		int b_num = Integer.parseInt(request.getParameter("b_num"));
		model.addAttribute("b_num", b_num);
		boardService.updateReadcount(b_num);
<<<<<<< HEAD
<<<<<<< HEAD
		
=======
>>>>>>> Base
=======
>>>>>>> parent of 65fa9d6 (결제 구현)
		return "redirect:/notice/content";
	}

	// http://localhost:8080/myweb2/board/content?Num=2
	@RequestMapping(value = "/notice/content", method = RequestMethod.GET)
<<<<<<< HEAD
<<<<<<< HEAD
	public String content(HttpServletRequest request, Model model, HttpSession session) {
=======
	public String content(HttpServletRequest request, Model model) {
>>>>>>> parent of 65fa9d6 (결제 구현)
		int b_num = Integer.parseInt(request.getParameter("b_num"));

		BoardDTO boardDTO = boardService.getBoard(b_num);

		model.addAttribute("boardDTO", boardDTO);
<<<<<<< HEAD
		List<CommentDTO> commentList = boardService.getCommentList(b_num);
		BoardDTO boardDTO2 = new BoardDTO();
		
		boardService.userCheck(boardDTO2);
		model.addAttribute("commentList", commentList);
		// /WEB-INF/views/notice/content.jsp
=======
	public String content(HttpServletRequest request, Model model) {
		int b_num = Integer.parseInt(request.getParameter("b_num"));

		BoardDTO boardDTO = boardService.getBoard(b_num);

		model.addAttribute("boardDTO", boardDTO);

		// /WEB-INF/views/board/content.jsp
>>>>>>> Base
=======

		// /WEB-INF/views/board/content.jsp
>>>>>>> parent of 65fa9d6 (결제 구현)
		return "notice/content";
	}

	@RequestMapping(value = "/notice/update", method = RequestMethod.GET)
<<<<<<< HEAD
<<<<<<< HEAD
	public String update(HttpServletRequest request, Model model, HttpSession session) {
=======
	public String update(HttpServletRequest request, Model model) {
>>>>>>> Base
=======
	public String update(HttpServletRequest request, Model model) {
>>>>>>> parent of 65fa9d6 (결제 구현)
		int b_num = Integer.parseInt(request.getParameter("b_num"));

		BoardDTO boardDTO = boardService.getBoard(b_num);
		model.addAttribute("boardDTO", boardDTO);
<<<<<<< HEAD
<<<<<<< HEAD
		String id=(String)session.getAttribute("id");
=======
>>>>>>> Base
=======
>>>>>>> parent of 65fa9d6 (결제 구현)

		// /WEB-INF/views/notice/writeForm.jsp
		return "/notice/updateForm";
	}

	@RequestMapping(value = "/notice/updatePro", method = RequestMethod.POST)
	public String updatePro(BoardDTO boardDTO) {

		boardService.updateBoard(boardDTO);
		return "redirect:/notice/list";
	}

	@RequestMapping(value = "/notice/delete", method = RequestMethod.GET)
	public String delete(HttpServletRequest request, Model model) {
		int b_num = Integer.parseInt(request.getParameter("b_num"));
		boardService.deleteBoard(b_num);
<<<<<<< HEAD
<<<<<<< HEAD
		return "redirect:/notice/list";
=======
		return "/notice/list";
>>>>>>> Base
=======
		return "/notice/list";
>>>>>>> parent of 65fa9d6 (결제 구현)
	}

}