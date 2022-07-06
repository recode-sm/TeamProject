package com.team.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.team.domain.FieldDTO;
import com.team.domain.MemberDTO;
import com.team.domain.ReservDTO;

import com.team.service.ReservationService;

@Controller //주소맵핑
public class ReservationController {

	@Inject
	private ReservationService reservationService;
	
	// 예약 메인페이지 
	@RequestMapping(value = "/reservation/reservation", method = RequestMethod.GET)
	public String reservation(HttpServletRequest request,HttpSession session, Model model) {
			// 로그인한 사용자 정보 가져오기
			// select 옵션 파라미터값 가져오기
			int select03 = Integer.parseInt(request.getParameter("select03"));
			// id 세션값 가져오기
			String id = (String)session.getAttribute("id");
			
			FieldDTO fieldDTO = reservationService.getFiled(select03);
			// phone 값 가져오기
			MemberDTO memberDTO = reservationService.getPhone(id);
			model.addAttribute("fieldDTO",fieldDTO);
			model.addAttribute("memberDTO", memberDTO);
			if(fieldDTO == null) {
				return "reservation/sel_msg";
			}else {
				return "reservation/reservation";
			}
			
			
			
			
		// 예약 페이지
		// /WEB-INF/views/reservation/reservation.jsp	
	
	}
	
	@RequestMapping(value = "/reservation/select", method = RequestMethod.GET)
	public String reserSelect(HttpServletRequest request,Model model) throws Exception{
		model.addAttribute("getFieldList_sel",reservationService.getFieldList_sel());
		
		return "/reservation/reservSelect";
	}
	
	@RequestMapping(value = "/reservation/reservationPro", method = RequestMethod.POST)
	public String reservationPro(HttpServletRequest request,Model model) throws Exception{
		ReservDTO reservDTO = new ReservDTO();
		reservDTO.setF_num(Integer.parseInt(request.getParameter("f_num")));
		reservDTO.setF_name(request.getParameter("f_name"));
		reservDTO.setId(request.getParameter("id"));
		reservDTO.setR_date(request.getParameter("r_date"));
		reservDTO.setStart_time(request.getParameter("start_time"));
		reservDTO.setTotal_price(Integer.parseInt(request.getParameter("price")));
		
		reservationService.insertReserv(reservDTO);
		
		return "redirect:/reservation/Result";
	}
	@RequestMapping(value = "/reservation/Result", method = RequestMethod.GET)
	public String reserResult(HttpSession session,HttpServletRequest request,Model model) throws Exception{
		String s_id = (String)session.getAttribute("id");
		ReservDTO reservDTO = reservationService.getResult(s_id);
		model.addAttribute("reservDTO",reservDTO);
		
		
		return "/reservation/reservResult";
	}
	@RequestMapping(value = "/reservation/list", method = RequestMethod.GET)
	public String reservList(HttpSession session,HttpServletRequest request,Model model) throws Exception{
		String id = (String)session.getAttribute("id");
		System.out.println(id);
		List<ReservDTO> reservList = reservationService.getReservList(id);
		model.addAttribute("reservList",reservList);
		return "/reservation/reservList";
	}
	
}

