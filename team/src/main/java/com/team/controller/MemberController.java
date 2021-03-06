package com.team.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
		// insertForm으로 페이지 이동
		return "member/insertForm";
	}
	
	@RequestMapping(value = "/member/insertPro", method = RequestMethod.POST)
	public String insertPro (MemberDTO memberDTO) {
		// DB에 회원정보 insert
		MemberDTO memberDTO2 = memberService.userCheck(memberDTO);
		if (memberDTO2 != null) {
			// 일치
			return "member/insertMsg";	
		} else {
			memberService.insertMember(memberDTO);
			return "redirect:/member/login";
		}
		// 로그인 페이지로 이동
	}
	
	@RequestMapping(value = "/member/login", method = RequestMethod.GET)
	public String login () {
		// 로그인 폼 페이지로 이동
		return "member/loginForm";
	}

	@RequestMapping(value = "/member/loginPro", method = RequestMethod.POST)
	public String loginPro (MemberDTO memberDTO, HttpSession session, HttpServletRequest request) {
		// 로그인 하려는 계정과 가입되어 있는 계정 비교(userCheck)
		MemberDTO memberDTO2 = memberService.userCheck(memberDTO);
				
		if (memberDTO2 != null) {
			// 일치
			session.setAttribute("id", memberDTO.getId());
			return "redirect:/member/main";
		} else {
			// 불일치
			// alert 메시지 출력 페이지로 이동
			return "member/msg";
		}	
	}
	
	@RequestMapping(value = "/member/main", method = RequestMethod.GET)
	public String main (HttpSession session, Model model) {
		String id = (String)session.getAttribute("id");
		
		MemberDTO memberDTO = memberService.getMember(id);
		
		model.addAttribute("memberDTO", memberDTO);
		
		// 메인 페이지(home.jsp)로 이동
		return "home";
	}
	
	@RequestMapping(value = "/member/logout", method = RequestMethod.GET)
	public String logout (HttpSession session) {
		// 로그아웃(세션 초기화)
		session.invalidate();
				
		// 메인 페이지(home.jsp)로 이동
		return "home";

	}
	
	@RequestMapping(value = "/member/info", method = RequestMethod.GET)
	public String info(HttpSession session, Model model) {
		// 세션값 가져오기
		String id = (String)session.getAttribute("id");
		
		// DB 작업
		MemberDTO memberDTO = memberService.getMember(id);
		
		// memberDTO 담아서 info.jsp 이동
		model.addAttribute("memberDTO", memberDTO);
		
		// 회원 정보 페이지(info.jsp)로 이동
		return "member/info";
	}
	
	@RequestMapping(value = "/member/update", method = RequestMethod.GET)
	public String update(HttpSession session, Model model) {
		// 세션값 가져오기
		String id = (String)session.getAttribute("id");
		
		// DB 작업
		MemberDTO memberDTO = memberService.getMember(id);
		
		// memberDTO 담아서 info.jsp 이동
		model.addAttribute("memberDTO", memberDTO);
		
		// updateForm으로 이동
		return "member/updateForm";
	}
	
	@RequestMapping(value = "/member/updatePro", method = RequestMethod.POST)
	public String updatePro(MemberDTO memberDTO) {
		// 로그인 메서드 호출
		MemberDTO memberDTO2=memberService.userCheck(memberDTO);
		if(memberDTO2!=null) {
			// 일치
			// 수정 작업
			memberService.updateMember(memberDTO);
			return "redirect:/member/main";
		}else {
			// 불일치
			return "member/msg";
		}
	}
		
	@RequestMapping(value = "/member/delete", method = RequestMethod.GET)
	public String delete(HttpSession session, Model model) {
		
		// deleteForm으로 페이지 이동
		return "member/deleteForm";
	}
	
	@RequestMapping(value = "/member/deletePro", method = RequestMethod.POST)
	public String delete(MemberDTO memberDTO, HttpSession session) {
		// 로그인 메서드 호출
		MemberDTO memberDTO2=memberService.userCheck(memberDTO);
		if(memberDTO2!=null) {
			// 일치
			// 수정 작업
			memberService.deleteMember(memberDTO);
			
			// 세션값 초기화
			session.invalidate();
			
			return "redirect:/member/main";
		}else {
			// 불일치
			return "member/msg";
		}
	}
	
	@RequestMapping(value = "/member/deleteAdmin", method = RequestMethod.GET)
	public String deleteAdmin (HttpServletRequest request) {

		String id = request.getParameter("id");
			
		memberService.adminDeleteMember(id);
		
		return "redirect:/member/list";
	}

	@RequestMapping(value = "/member/list", method = RequestMethod.GET)
	public String list(HttpSession session, Model model) {
		
		// DB 작업
		List<MemberDTO> memberList = memberService.getMemberList();
		
		// memberDTO 담아서 회원정보 페이지(info.jsp) 이동
		model.addAttribute("memberList", memberList);
		
		// 회원 리스트 페이지(list.jsp)로 이동
		return "member/list";
	}
	
	@RequestMapping(value = "/reservation/Check_C", method = RequestMethod.GET)
	public String reserCheck_C(HttpSession session,HttpServletRequest request,Model model) throws Exception{
		// DB 작업
		String id=(String)session.getAttribute("id");
		
		if(id!=null) {
			return "/reservation/reservCheck_C";
		}else {
			return "/reservation/login_msg";
		}
			
	}

	@RequestMapping(value = "/reservation/CheckPro", method = RequestMethod.POST)
	public String reservCheckPro(HttpServletRequest request,MemberDTO memberDTO) throws Exception{
		request.getParameter("id");
		MemberDTO memberDTO2 = memberService.userCheck(memberDTO);
		
		if(memberDTO2!=null) {
			//아이디 비밀번호 일치
			//수정작업
			return "redirect:/reservation/list";
		}else {
			//아이디 비밀번호 틀림
			return "member/pass_msg";
		}
	}
	
	@RequestMapping(value = "/member/updatePass", method = RequestMethod.GET)
	public String updatePass () {

		return "/member/updatePass";
	}
	
	@RequestMapping(value = "/member/updatePassPro", method = RequestMethod.POST)
	public String updatePassPro (HttpSession session, HttpServletRequest request, MemberDTO memberDTO) {
		
		String id = (String)session.getAttribute("id");
		String pass = request.getParameter("pass");
		String updatePass = request.getParameter("updatePass");
		
		MemberDTO memberDTO2 = memberService.getMember(id);
		String checkPass = memberDTO2.getPass();
		
		if (checkPass.equals(pass)) {

			memberDTO.setId(id);
			memberDTO.setPass(updatePass);
			memberService.updatePass(memberDTO);
			
			return "redirect:/member/update";
			
		} else { 
			
			return "member/pass_msg";
		}
	}


}
