package com.team.domain;

import lombok.Data;

@Data
public class PayDTO {
		
	 private String merchant_uid;
	    private String itemName;
	    private Long amount;
	}
