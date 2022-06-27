package com.team.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.team.domain.PageDTO;
import com.team.domain.BoardDTO;
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
	public String insert() {
		// /WEB-INF/views/notice/writeForm.jsp
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
	public String list(HttpServletRequest request, Model model) {
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

		// /WEB-INF/views/board/list.jsp
		return "/notice/list";
	}

	@RequestMapping(value = "/notice/listPro", method = RequestMethod.GET)
	public String listPro(HttpServletRequest request, Model model) {
		int b_num = Integer.parseInt(request.getParameter("b_num"));
		model.addAttribute("b_num", b_num);
		boardService.updateReadcount(b_num);
		return "redirect:/notice/content";
	}

	// http://localhost:8080/myweb2/board/content?Num=2
	@RequestMapping(value = "/notice/content", method = RequestMethod.GET)
	public String content(HttpServletRequest request, Model model) {
		int b_num = Integer.parseInt(request.getParameter("b_num"));

		BoardDTO boardDTO = boardService.getBoard(b_num);

		model.addAttribute("boardDTO", boardDTO);

		// /WEB-INF/views/board/content.jsp
		return "notice/content";
	}

	@RequestMapping(value = "/notice/update", method = RequestMethod.GET)
	public String update(HttpServletRequest request, Model model) {
		int b_num = Integer.parseInt(request.getParameter("b_num"));

		BoardDTO boardDTO = boardService.getBoard(b_num);
		model.addAttribute("boardDTO", boardDTO);

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
		return "/notice/list";
	}

}