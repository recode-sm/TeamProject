<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>BS RESERVATION</title>
   <link href="<%=request.getContextPath() %>/resources/img/logo_1m.png" rel="shortcut icon" type="image/x-icon">
<meta charset="UTF-8">
<title>member/updatePass</title>
	<!-- 공통css 코드 변경 후 적용이 안바뀌면 확장자 뒤에 ?after붙여주세요 --> 
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/reservResult.css?after3">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/content.css?v=201811160138">
	<!-- //공통css -->
	
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/libs/jquery.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/common/common.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/common/form_check.js"></script>

<script type="text/javascript">
</script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/jquery-3.6.0.js"></script>
	<script type="text/javascript">
	$(document).ready (function () {

		var regExp = /^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{8,16}$/;
		$('#updatePass').keyup(function () {
			var updatePass = document.getElementById('updatePass').value;
			var updatePass2 = document.getElementById('updatePass2').value;
			if (regExp.test(updatePass) == true) {
				$('#passdiv').html("사용 가능한 비밀번호").css({"font-size":"13px", "color":"blue"});
				
			} else {
				$('#passdiv').html("비밀번호는 8~16자 사이로 숫자,영문자,특수문자를 포함해야 합니다").css({"font-size":"13px", "color":"red"});
				
			}
			
		});
		
		$('#updatePass2').keyup(function () {
			var updatePass = document.getElementById('updatePass').value;
			var updatePass2 = document.getElementById('updatePass2').value;
			if (updatePass == updatePass2) {
				$('#passdiv2').html("비밀번호 일치").css({"font-size":"13px", "color":"blue"});
				
			} else {			
				$('#passdiv2').html("비밀번호 불일치").css({"font-size":"13px", "color":"red"});
			
			}
			
		});
		

	});
	
	function checkForm() {
		var frm = document.updatePassForm;
		var regExp = /^(?=.*[a-zA-z])(?=.*[0-9])(?=.*[$`~!@$!%*#^?&\\(\\)\-_=+]).{8,16}$/;
		var updatePass = document.getElementById('updatePass').value;
		var updatePass2 = document.getElementById('updatePass2').value;
		
		if (regExp.test(updatePass) == false) {
			alert("[비밀번호]는 8~16자 사이 숫자,영문자,특수문자를 포함하여 주십시오");
			frm.updatePass.focus();
			return false;
		}
		
		if (updatePass != updatePass2) {
			alert("[비밀번호]가 일치하지 않습니다.");
			frm.updatePass2.focus();
			return false;
		}
		
		frm.submit();
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
						<p class="tit">비밀번호 변경</p>
							<form name="updatePassForm" action="<%=request.getContextPath()%>/member/updatePassPro" method="post">
								<div class="table_wrap">
								<table class="table_tbody">
								<tbody>
									<tr><th>기존 비밀번호</th>		<td><input type="password" id="pass" name="pass" onkeypress="if(event.keyCode == 13){ checkForm(); return;}"></td></tr>
									<tr><th>새 비밀번호</th>		<td><input type="password" id="updatePass" name="updatePass" onkeypress="if(event.keyCode == 13){ checkForm(); return;}">
																	<div id="passdiv"></div></td></tr>
									<tr><th>비밀번호 확인</th>		<td><input type="password" id="updatePass2" name="updatePass2" onkeypress="if(event.keyCode == 13){ checkForm(); return;}">
																	<div id="passdiv2"></div></td></tr>
								</tbody>	
								</table>
									<div class="btn_wrap">
									<input type="button" class="btn_middle" onclick="checkForm()" value="확인">
									<input type="button" class="btn_middle" onclick="location.href='<%=request.getContextPath() %>/member/update'" value="취소">
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