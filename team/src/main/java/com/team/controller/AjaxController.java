package com.team.controller;

import java.sql.Timestamp;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.util.FileSystemUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.team.domain.DateDTO;
import com.team.domain.FieldDTO;
<<<<<<< Updated upstream
=======
import com.team.domain.payDTO;
import com.team.service.CommentService;
>>>>>>> Stashed changes
import com.team.service.ReservationService;

@RestController
public class AjaxController {
	
	@Inject
	private ReservationService reservationService;
	
	@RequestMapping(value = "/reservation/select_sel", method = RequestMethod.GET)
	public ResponseEntity<List<FieldDTO>> list_sel(HttpServletRequest request) throws Exception {
		ResponseEntity<List<FieldDTO>> entity = null;		
		
		String sel=request.getParameter("sel");
		
		List<FieldDTO> fieldList = reservationService.getFieldList_sel1(sel);
		
		entity = new ResponseEntity<List<FieldDTO>>(fieldList,HttpStatus.OK);
		return entity;
		
	}
	
	@RequestMapping(value = "/reservation/jsonDate", method = RequestMethod.GET)
	public ResponseEntity<List<DateDTO>> reservation(HttpServletRequest request) throws Exception {
		ResponseEntity<List<DateDTO>> entity = null;		

		System.out.println("jsonDate");
		
		int num=Integer.parseInt(request.getParameter("num"));

		String sel=request.getParameter("date");
		
		System.out.println(num);
		
		System.out.println(sel);
		
		DateDTO dateDTO = new DateDTO();
		dateDTO.setF_num(num);
		dateDTO.setDate(sel);
		
		List<DateDTO> dateList = reservationService.getDateList(dateDTO);
		
		entity = new ResponseEntity<List<DateDTO>>(dateList,HttpStatus.OK);
		return entity;			
	}
<<<<<<< Updated upstream
=======
	
//	@RequestMapping(value = "/notice/commentDelete", method = RequestMethod.POST)
//	public ResponseEntity<List<CommentDTO>> commentDelete(HttpServletRequest request) throws Exception {
//		ResponseEntity<List<CommentDTO>> entity = null;		
//		
//		int c_num =Integer.parseInt(request.getParameter("c_num"));
//		int b_num =Integer.parseInt(request.getParameter("b_num"));
//		
//		
//		
//		entity = new ResponseEntity<List<CommentDTO>>(commentList,HttpStatus.OK);
//		return entity;
//		
//	}
	
	@RequestMapping(value = "/reservation/reservComplete", method = RequestMethod.POST)
	public payDTO reservComplete(HttpServletRequest request, Model model) throws Exception {
				
		System.out.println("reservComplete");
		String status = request.getParameter("status");
		String imp_uid = request.getParameter("imp_uid");
		int paid_amount= Integer.parseInt(request.getParameter("paid_amount"));
//		int paid_at = Integer.parseInt(request.getParameter("paid_at"));
		String merchant_uid = request.getParameter("merchant_uid");
		int r_num=Integer.parseInt(request.getParameter("r_num"));
		
		System.out.println(r_num);
		System.out.println(status);
		System.out.println(imp_uid);
		System.out.println(paid_amount);
//		System.out.println(paid_at);
		System.out.println(merchant_uid);
		
		payDTO payDTO = new payDTO();
		
		payDTO.setMerchant_uid(merchant_uid);
		payDTO.setStatus(status);
		payDTO.setImp_uid(imp_uid);
		payDTO.setPaid_amount(paid_amount);
//		payDTO.setPaid_at(paid_at);
		payDTO.setR_num(r_num);
		payDTO.setP_date(new Timestamp(System.currentTimeMillis()));
		
		model.addAttribute("payDTO", payDTO);
		
		reservationService.payUpdate(payDTO);
		reservationService.payInsert(payDTO);
		
		return payDTO;
	}
>>>>>>> Stashed changes
}
