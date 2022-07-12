package com.team.controller;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.team.domain.FieldDTO;
import com.team.domain.MemberDTO;
import com.team.domain.ReservDTO;
import com.team.domain.payDTO;
import com.team.service.ReservationService;

@Controller //주소맵핑
public class ReservationController {

	@Inject
	private ReservationService reservationService;

	@RequestMapping(value = "/reservation/reservation", method = RequestMethod.GET)
	public String reservation(HttpServletRequest request,HttpSession session, Model model) {
		// 로그인한 사용자 정보 가져오기
			// id 세션값 가져오기
			int select03 = Integer.parseInt(request.getParameter("select03"));
			String id = (String)session.getAttribute("id");
		if(select03 == 0) {
				return "reservation/sel_msg";
			}else {

				FieldDTO fieldDTO = reservationService.getFiled(select03);
				// phone 값 가져오기
				MemberDTO memberDTO = reservationService.getPhone(id);
				System.out.println(fieldDTO.getF_name());
				System.out.println(fieldDTO.getF_num());
				System.out.println(fieldDTO.getPrice());
				model.addAttribute("fieldDTO",fieldDTO);
				model.addAttribute("memberDTO", memberDTO);
				return "reservation/reservation";
			}
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
//		reservDTO.setF_name(request.getParameter("f_name"));
		reservDTO.setId(request.getParameter("id"));
		reservDTO.setR_date(request.getParameter("r_date"));
		reservDTO.setTime(request.getParameter("time"));
		reservDTO.setTotal_price(request.getParameter("price"));
		
		reservationService.insertReserv(reservDTO);
		
		return "redirect:/reservation/reservResult";
	}
	
	@RequestMapping(value = "/reservation/reservResult", method = RequestMethod.GET)
	public String reserResult(HttpServletRequest request,HttpSession session,Model model) throws Exception{
		
		String s_id = (String)session.getAttribute("id");
		ReservDTO reservDTO = reservationService.getReservation(s_id);
		model.addAttribute("reservDTO", reservDTO);
		
		System.out.println(reservDTO.getTime());
		System.out.println(reservDTO.getTotal_price());
		
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
	
	public static List<NameValuePair> convertParameter(Map<String,String> paramMap){
        List<NameValuePair> paramList = new ArrayList<NameValuePair>();
        Set<Map.Entry<String,String>> entries = paramMap.entrySet();
        for(Map.Entry<String,String> entry : entries) {
            paramList.add(new BasicNameValuePair(entry.getKey(), entry.getValue()));
        } return paramList;
    }
	
	@RequestMapping(value = "/reservation/token", method = RequestMethod.GET)
	public String reservList(HttpServletRequest request) throws Exception{
		String IMPORT_TOKEN_URL = "https://api.iamport.kr/users/getToken";
		String IMPORT_CANCEL_URL = "https://api.iamport.kr/payments/cancel";
		String KEY = "3277120266459676";
		String SECRET = "1DrQxlMwGqNfi2Efjf53cfPy17T4SIyUm0KTlxp2YdhhgWwzcBDpRsXTzRXszwnVw8PSFeUEscVI9ril";
		  
		String r_num = request.getParameter("r_num");
		
		payDTO payDTO = reservationService.reservationGet(r_num);
		
		System.out.println(payDTO.getImp_uid());
		
		String result = "";
		
		HttpClient client = HttpClientBuilder.create().build();
		HttpPost post = new HttpPost(IMPORT_TOKEN_URL);
		Map<String,String> m =new HashMap<String,String>();
		m.put("imp_key", KEY);
		m.put("imp_secret", SECRET);
		
		try {
			post.setEntity(new UrlEncodedFormEntity(convertParameter(m)));
			HttpResponse res = client.execute(post);
			ObjectMapper mapper = new ObjectMapper();
			String body = EntityUtils.toString(res.getEntity());
			JsonNode rootNode = mapper.readTree(body);
			JsonNode resNode = rootNode.get("response");
			result = resNode.get("access_token").asText();
						
			System.out.println(result);
			
		} catch (Exception e){
			   e.printStackTrace();
		}
			
		post = new HttpPost(IMPORT_CANCEL_URL);
		Map<String, String> map = new HashMap<String, String>();
		post.setHeader("Authorization", result);
	        map.put("imp_uid", payDTO.getImp_uid());
	        map.put("merchant_uid", payDTO.getMerchant_uid());
	        map.put("amount", payDTO.getAmount());
	        
			String asd = "";
			
			try { post.setEntity(new UrlEncodedFormEntity(convertParameter(map)));
			    HttpResponse res = client.execute(post);
			    ObjectMapper mapper = new ObjectMapper();
			    String enty = EntityUtils.toString(res.getEntity());
			    JsonNode rootNode = mapper.readTree(enty);
			    asd = rootNode.get("response").asText();
			    
			} catch (Exception e) {
				System.out.println(e.getMessage());
			}
			
			if (asd.equals("null")) {
				System.out.println("환불실패");
				
			} else {
				System.out.println("환불성공");
				reservationService.reservationUpdate(r_num);
			}
		    
		return "redirect:/reservation/select";
	}
	
	@RequestMapping(value = "/reservation/cancel", method = RequestMethod.GET)
	public String reserSelect(HttpServletRequest request){
//		
		String r_num = request.getParameter("r_num");
		
		reservationService.reservationCancel(r_num);
		
		return "redirect:/reservation/select";
	}
}

