package com.team.controller;

import java.sql.Timestamp;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.team.domain.BoardDTO;
import com.team.domain.CommentDTO;
import com.team.service.CommentService;

 
@Controller	// 주소맵핑
public class CommentController {
	
	@Inject
	private CommentService commentService;
	
	
	@RequestMapping(value = "/notice/cmtPro", method = RequestMethod.POST)
	public String cmtPro(CommentDTO commentDTO,HttpServletRequest request,Model model) {
		int b_num = Integer.parseInt(request.getParameter("b_num"));
		commentService.insertComment(commentDTO);
		
		model.addAttribute("b_num", b_num);
		
		return "redirect:/notice/content";
	}
	
	@RequestMapping(value = "/notice/commentDelete", method = RequestMethod.GET)
	public String update(HttpServletRequest request, HttpSession session) {
		int c_num = Integer.parseInt(request.getParameter("c_num"));
		
		String b_num = request.getParameter("b_num");
		
		commentService.deleteComment(c_num);
		
		String id=(String)session.getAttribute("id");

		// /WEB-INF/views/notice/writeForm.jsp
		return "redirect:/notice/content?b_num="+b_num;
	}
//	
//	@RequestMapping(value = "/notice/cmtUpdatePro", method = RequestMethod.POST)
//	public String updateCommetPro(CommentDTO commentDTO, HttpServletRequest request,Model model) {
//		int b_num = Integer.parseInt(request.getParameter("b_num"));
//		commentService.updateComment(commentDTO);
//		model.addAttribute("b_num", b_num);
//		
//		return "redirect:/notice/content";
//	}
	
	
}
