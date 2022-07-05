package com.team.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.team.domain.PayDTO;
import com.team.service.PayService;

@Controller
public class PayController {
	@Autowired
	private PayService payService;

	@GetMapping("/pay")
	public void pay() {
		
		
	}
	
	@ResponseBody
	@PostMapping(value="/order", consumes="application/json", 
                 produces={MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> orderInsert(@RequestBody PayDTO payDTO){
		payService.insertPay(payDTO);
		return new ResponseEntity<String>("success", HttpStatus.OK);
	}
	
	@RequestMapping(value = "/payment/payment", method = RequestMethod.GET)
	public String payment(PayDTO payDTO) {
		
		payService.insertPay(payDTO);
		return "/home";
	}
	
	
}