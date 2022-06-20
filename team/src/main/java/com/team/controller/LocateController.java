package com.team.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LocateController {

	@RequestMapping(value = "/locate/locate", method = RequestMethod.GET)
	public String locate() {
		// /WEB-INF/views/notice/notice.jsp
		return "/locate/locateForm";
	}
}
