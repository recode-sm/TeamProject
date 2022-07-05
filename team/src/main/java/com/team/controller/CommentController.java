package com.team.controller;

import java.util.List;

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
	
	
	@RequestMapping(value = "/notice/cmtPro", method = RequestMethod.POST)
	public String cmtPro(CommentDTO commentDTO,HttpServletRequest request,Model model) {
		int b_num = Integer.parseInt(request.getParameter("b_num"));
		commentService.insertComment(commentDTO);
		
		model.addAttribute("b_num", b_num);
		
//		"redirect:/board/view?bno=" + vo.getBno();
		return "redirect:/notice/content";
	}
	
	
}
