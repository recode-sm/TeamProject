<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>BS RESERVATION</title>
   <link href="<%=request.getContextPath() %>/resources/img/logo_1m.png" rel="shortcut icon" type="image/x-icon">
<meta charset="UTF-8">
<title>member/updateForm</title>
	<!-- 공통css 코드 변경 후 적용이 안바뀌면 확장자 뒤에 ?after붙여주세요 --> 
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/reservResult.css?after3">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/content.css?v=201811160138">
	<!-- //공통css -->
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                
       
                var guideTextBox = document.getElementById("guide");
              
            }
        }).open();
    }
    
  </script>
</head>
<body>

<div id="wrapper">
	<section id="container">
		<!-- Contents -->
		<div class="content">
			<div class="rese_wrap cal">
				<div class="fl_wrap">
					<div class="fl_right">
						<div class="int_wrap">
						<p class="tit">회원 정보 수정</p>
							<form action="<%=request.getContextPath()%>/member/updatePro" method="post">
								<div class="table_wrap">
								<table class="table_tbody">
								<tbody>
									<tr><th>아이디</th>		<td><input type="text" name="id" value="${ memberDTO.id }" readonly></td></tr>
									<tr><th>비밀번호</th>		<td><input type="password" name="pass"></td></tr>
									<tr><th>이름</th>			<td><input type="text" name="name" value="${ memberDTO.name }"></td></tr>
									<tr><th>전화번호</th>		<td><input type="text" name="phone" value="${ memberDTO.phone }"></td></tr>
									<tr><th>우편번호</th>		<td><input type="text" id="sample4_postcode" name="postcode" value="${ memberDTO.postcode }">
																<input type="button"  class="btn_middle_2" value="주소검색" onclick="sample4_execDaumPostcode()"></td></tr>
									<tr><th>주소</th>			<td><input type="text" id="sample4_roadAddress" name="address" value="${ memberDTO.address }"></td></tr>
									<tr><th>상세주소</th>		<td><input type="text" name="address2" value="${ memberDTO.address2 }"></td></tr>
								</tbody>	
								</table>
									<div class="btn_wrap">
									<input type="submit" class="btn_middle" value="수정완료">
									<input type="button" class="btn_middle" onclick="location.href='<%=request.getContextPath() %>/member/info'" value="수정 취소">
									<input type="button" class="btn_middle" onclick="location.href='<%=request.getContextPath() %>/member/updatePass'" value="비밀번호 변경">
										<div class="btn_wrap">
											<input type="button" class="btn_middle" onclick="location.href='<%=request.getContextPath() %>/member/main'" value="메인이동">
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>

</body>
</html>