package com.team.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.team.domain.MemberDTO;
import com.team.service.MemberService;

@Controller
public class MemberController {
	
	@Inject
	private MemberService memberService;
	
	@RequestMapping(value = "/member/insert", method = RequestMethod.GET)
	public String insert (MemberDTO memberDTO) {
		return "member/insertForm";
	}
	
	@RequestMapping(value = "/member/insertPro", method = RequestMethod.POST)
	public String insertPro (MemberDTO memberDTO) {
		memberService.insertMember(memberDTO);
		
		return "redirect:/member/login";
	}
	
	@RequestMapping(value = "/member/login", method = RequestMethod.GET)
	public String login () {
		return "redirect:/member/loginForm";
	}

	@RequestMapping(value = "/member/loginPro", method = RequestMethod.POST)
	public String loginPro (MemberDTO memberDTO, HttpSession session) {
		MemberDTO memberDTO2 = memberService.userCheck(memberDTO);
		
		memberService.insertMember(memberDTO);
		
		return "redirect:/member/login";
	}
}