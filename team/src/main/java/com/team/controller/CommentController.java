package com.team.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.team.domain.CommentDTO;
import com.team.service.CommentService;

 
@Controller	// 주소맵핑
public class CommentController {
	
	@Inject
	private CommentService commentService;
	
	@RequestMapping(value = "/notice/content", method = RequestMethod.POST)
	public String insert(HttpSession session, HttpServletRequest request, Model model) {
		// /WEB-INF/views/notice/writeForm.jsp
		String id=(String)session.getAttribute("id");
		int c_num = Integer.parseInt(request.getParameter("c_num"));
		model.addAttribute("c_num", c_num);
		return "/notice/content";
	}
	
	@RequestMapping(value = "/notice/cmtPro", method = RequestMethod.POST)
	public String cmtPro(CommentDTO commentDTO) {
		commentService.insertComment(commentDTO);
		return "redirect:/notice/content";
	}
	
	
}
