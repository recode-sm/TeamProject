package com.team.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller //주소맵핑
public class BoardController {

	@RequestMapping(value = "/notice/notice", method = RequestMethod.GET)
	public String reservation() {
		// /WEB-INF/views/notice/notice.jsp
		return "/notice/notice";
	}
}