<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/reservResult.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/content.css?v=201811160138">
<meta charset="UTF-8">
<title>Insert title here</title>

	<!-- jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<script>   
    function requestPay() {
    	IMP.init('imp50478053');
        // IMP.request_pay(param, callback) 결제창 호출
        IMP.request_pay({ // param
            pg: "html5_inicis",
            pay_method: "card",
            merchant_uid: 'merchant_' + new Date().getTime(),
            name: $("#f_name").val(),
            amount: $("#price").val(),
			buyer_email: $("#id").val(),
            buyer_name: $("#id").val(),
//             buyer_tel: $("#phone").val(),
//              buyer_addr: "서울특별시 강남구 신사동",
//              buyer_postcode: "01181"
        }, function (rsp) { // callback
            	if (rsp.success) { // 결제 성공 시: 결제 승인 또는 가상계좌 발급에 성공한 경우
                    // jQuery로 HTTP 요청
                    jQuery.ajax({
                        url: "reservation/reservComplete", // 예: https://www.myservice.com/payments/complete
                        method: "POST",
                        headers: { "Content-Type": "application/json" },
                        data: {
                            imp_uid: rsp.imp_uid,
                            merchant_uid: rsp.merchant_uid
                        }
                    }).done(function (data) {
                      // 가맹점 서버 결제 API 성공시 로직
                    })
                  } else {
                    alert("결제에 실패하였습니다. 에러 내용: " +  rsp.error_msg);
                  }
        });
      }
</script>
</head>
<body>
<FORM>
	<section id="container">
		<!-- Contents -->
		<div class="content">
			<div class="rese_wrap cal">
				<div class="fl_wrap">
					<div class="fl_right">
						<div class="int_wrap">
							<p class="tit">예약 정보 확인</p>
							<div class="table_wrap">
								<table>
								<caption>대관 예약자 정보 입력 테이블</caption>
<!-- 								<colgroup> -->
<!-- 									<col style="width:25%" /> -->
<!-- 									<col style="" /> --> 
<!-- 								</colgroup> -->
								<tbody>
									<tr>
										<th>신청자</th>
										<td id = "memberName">
<!-- 										<input type="text"  name="cm_name" placeholder="이름을 입력하세요" style="width:100%"> -->
											<input type="text" name="id" readonly value="${id }" style="width:100%; border:0 solid black;">
										</td>
									</tr>
									<tr>
										<th>연락처</th>
										<td id = "memberPhone" >
<!-- 											<div class="phone"> -->
<!-- 											<input type="text"  name="htel1" maxlength=3 value="" class="numberOnly" /><span>-</span> -->
<!-- 											<input type="text"  name="htel2" maxlength=4 value="" class="numberOnly" /><span>-</span> -->
<!-- 											<input type="text"  name="htel3" maxlength=4 value="" class="numberOnly" /> -->
<!-- 											</div> -->
											<input type="text" name="phone" readonly value="${reservDTO.phone }"  style="width:100%; border:0 solid black;">
										</td>
									</tr>
									<tr>
										<th>예약일자</th>
										<td>
										<input name="r_date" type="text" id="selectedDate2" value="${reservDTO.r_date }" readonly  style="width:100%; border:0 solid black;">
										
										</td>
										
									</tr>
									<tr>
										<th>선택구장</th>
										<td id="stadiumBottom">
										<input type="text" id="f_name" name="f_name" readonly value="${reservDTO.f_name }"  style="width:100%; border:0 solid black;">
										</td>
									</tr>
									<tr>
										<th>예약시간</th>
										<td><input type="text" id="selectedTime" name="start_time" value="${reservDTO.time }"  style="width:100%; border:0 solid black;"></td>
										
									</tr>
									<tr>
										<th>총 결제금액</th>
										<td>
										<input type="text" name="price" id="price" readonly value="${reservDTO.total_price}" style="width:100%; border:0 solid black;"></td>
										
									</tr>
								</tbody>
								</table>
							</div>

							<span class="chk">
								<input type="checkbox" id="chk01" title="" name="agree" value="Y">
								<label for="chk01">예약자 정보 및 결제금액 모두 확인 했습니다.</label>
							</span>

							<div class="btn_wrap">
								<button type="button" class="btn_big gray" onclick="requestPay()">결제하기</button>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
			<!-- //Contents -->
	</section>
</FORM>
</body>
</html>