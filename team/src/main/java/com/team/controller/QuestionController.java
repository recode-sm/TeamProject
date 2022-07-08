package com.team.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.team.domain.PageDTO;
import com.team.domain.QuestionDTO;
import com.team.service.QuestionService;

@Controller
public class QuestionController {

	@Inject
	private QuestionService questionService;
	
	@RequestMapping(value = "/qna/write", method = RequestMethod.GET)
	public String insert(HttpSession session) {
		
		String id = (String)session.getAttribute("id");
		
		// /WEB-INF/views/qna/writeForm.jsp
		return "/qna/writeForm";
	}
	
	@RequestMapping(value = "/qna/writePro", method = RequestMethod.POST)
	public String writePro(QuestionDTO questionDTO, HttpServletRequest request) {
		
		questionService.insertBoard(questionDTO);
			
		return "redirect:/qna/list";
	}

	@RequestMapping(value = "/qna/writeReply", method = RequestMethod.GET)
	public String insertReply(HttpSession session, HttpServletRequest request, Model model) {
		
		String id = (String)session.getAttribute("id");
		
		String group_order = request.getParameter("group_order");
		
		model.addAttribute("group_order", group_order);
		
		
		// /WEB-INF/views/qna/writeForm2.jsp
		return "/qna/writeForm2";
	}
	
	@RequestMapping(value = "/qna/writeReplyPro", method = RequestMethod.POST)
	public String writeReplyPro(QuestionDTO questionDTO) {
		questionService.insertReply(questionDTO);
		return "redirect:/qna/list";
	}
	
	@RequestMapping(value = "/qna/list", method = RequestMethod.GET)
	public String list(HttpServletRequest request, Model model) {
		int pageSize = 10;
		String pageNum = request.getParameter("pageNum");
		if (pageNum == null) {
			pageNum = "1";
		}
		PageDTO pageDTO = new PageDTO();
		pageDTO.setPageSize(pageSize);
		pageDTO.setPageNum(pageNum);

		List<QuestionDTO> boardList = questionService.getBoardList(pageDTO);

		int currentPage = Integer.parseInt(pageDTO.getPageNum());
		int count = questionService.getBoardCount();
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

		return "/qna/list";
	}

	@RequestMapping(value = "/qna/listPro", method = RequestMethod.GET)
	public String listPro(HttpServletRequest request, Model model) {
		int q_num = Integer.parseInt(request.getParameter("q_num"));
		model.addAttribute("q_num", q_num);
		questionService.updateReadcount(q_num);
		return "redirect:/qna/content";
	}

	@RequestMapping(value = "/qna/content", method = RequestMethod.GET)
	public String content(HttpServletRequest request, Model model) {
		int q_num = Integer.parseInt(request.getParameter("q_num"));

		QuestionDTO questionDTO = questionService.getBoard(q_num);

		model.addAttribute("questionDTO", questionDTO);

		return "qna/content";
	}

	@RequestMapping(value = "/qna/update", method = RequestMethod.GET)
	public String update(HttpServletRequest request, Model model) {
		int q_num = Integer.parseInt(request.getParameter("q_num"));

		QuestionDTO questionDTO = questionService.getBoard(q_num);
		model.addAttribute("questionDTO", questionDTO);

		return "/qna/updateForm";
	}

	@RequestMapping(value = "/qna/updatePro", method = RequestMethod.POST)
	public String updatePro(QuestionDTO questionDTO) {

		questionService.updateBoard(questionDTO);
		return "redirect:/qna/list";
	}

	@RequestMapping(value = "/qna/delete", method = RequestMethod.GET)
	public String delete(HttpServletRequest request, Model model) {
		int q_num = Integer.parseInt(request.getParameter("q_num"));
		questionService.deleteBoard(q_num);
		return "/qna/list";
	}
}
