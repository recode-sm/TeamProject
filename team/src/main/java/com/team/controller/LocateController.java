package com.team.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.team.service.FieldService;

@Controller
public class LocateController {
	
	@Inject
	private FieldService fieldService;
	
	@RequestMapping(value = "/locate/locate", method = RequestMethod.GET)
	public String locate() {
		// /WEB-INF/views/notice/notice.jsp
		return "/locate/locateForm";
	}
	
	@RequestMapping(value = "/locate/fieldPro", method = RequestMethod.POST)
	public String fieldPro() {
		
		// /WEB-INF/views/notice/notice.jsp
		return "redirect:/";
	}
}
