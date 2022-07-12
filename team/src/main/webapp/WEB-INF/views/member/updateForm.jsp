<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member/updateForm</title>
	<!-- 공통css 코드 변경 후 적용이 안바뀌면 확장자 뒤에 ?after붙여주세요 --> 
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/reservResult.css?after3">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/content.css?v=201811160138">
	<!-- //공통css -->
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
									<tr><th>우편번호</th>		<td><input type="text" name="postcode" value="${ memberDTO.postcode }"></td></tr>
									<tr><th>주소</th>			<td><input type="text" name="address" value="${ memberDTO.address }"></td></tr>
									<tr><th>상세주소</th>		<td><input type="text" name="address2" value="${ memberDTO.address2 }"></td></tr>
								</tbody>	
								</table>
									<div class="btn_wrap">
									<input type="submit" class="btn_middle" value="수정완료">
									<input type="button" class="btn_middle" onclick="location.href='<%=request.getContextPath() %>/member/updatePass'" value="비밀번호 변경">
									<input type="button" class="btn_middle" onclick="location.href='<%=request.getContextPath() %>/member/main'" value="메인이동">
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