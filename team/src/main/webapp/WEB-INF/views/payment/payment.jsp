<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<meta charset="UTF-8">
<title>payment</title>
</head>
<body>

<script>
    var merchant_uid = merchant_uid;
    var itemName = ${fieldDTO.f_name};
    var amount = ${fieldDTO.price};

    IMP.init('imp50478053');
    function iamport(){
        // IMP.request_pay(param, callback) 결제창 호출
        IMP.request_pay({ // param
        // KG이니시스
        pg : 'pg',
        // 결제수단
        pay_method : 'card',
        // 상품에서 관리하는 주문번호를 전달 - 바뀌어야됨
        merchant_uid : merchant_uid,
        // 결제창에 삽입할 상품명 - 바뀌어야됨
        name : ${fieldDTO.f_name },
        // 금액 - 바뀌어야됨
        amount : ${fieldDTO.price},
        // 구매자 이메일
        buyer_email : 'iamport@siot.do',
        // 구매자 번호
        buyer_tel : '010-1234-5678',
        // 구매자 주소
        buyer_addr : '서울특별시 강남구 삼성동',
        // 구매자 우편번호
        buyer_postcode : '12345',
    }, function(rsp){ // callback
            // 결제 성공시 처리할 내역
             let msg;
            if(rsp.success){
            	 $.ajax({
                     type: 'post',
                     url: '/reservation',	// 주소
                     headers: {
                         "Content-Type":"application/json",
                         "X-HTTP-Method-Override":"POST"
                     },
                     dataType: "text",
                     // 비동기 요청으로 주문번호, 상품명, 가격을 DB에 넣도록 요청
                     data: JSON.stringify({
                         merchant_uid: merchant_uid,
                         itemName: ${fieldDTO.f_name },
                         amount: ${fieldDTO.price}
                     }),
                     success: function(){
                         alert(name + " 결제가 완료되었습니다.");
                         console.log("결제완료됨")
                     }
                 });
             }else{
                 msg = "결제에 실패했습니다. ";
                 msg += "실패 사유: " + rsp.error_msg;
                 alert(msg);
             }
         });
</script>
</html>