<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>BS RESERVATION</title>
   <link href="<%=request.getContextPath() %>/resources/img/logo_1m.png" rel="shortcut icon" type="image/x-icon">
	<meta charset="UTF-8">
	<!-- 공통css 코드 변경 후 적용이 안바뀌면 확장자 뒤에 ?after붙여주세요 --> 
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/reservResult.css?after3">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/content.css?v=201811160138">
	<!-- //공통css -->
	<style>
.but {
	display: inline-block;
	width: 125px;
	height: 40px;
	line-height: 40px;
	text-align: center;
	border-radius: 5px;
	background: #8ba6d5;
	color: #fff;
	font-size: 16px;
	line-height: 40px;
	border: 0px;
	cursor: pointer;
}


</style>
</head>
<body>

<c:if test="${ empty sessionScope.id }">
	<c:redirect url="/member/login"/>
</c:if>

<c:if test="${ !empty sessionScope.id }">
	<c:if test="${ !(sessionScope.id eq 'admin') }">
		<c:redirect url="/member/main"/>
	</c:if>
</c:if>

<div id="wrapper">
	<section id="container">
		<!-- Contents -->
		<div class="content">
			<div class="rese_wrap cal">
				<div class="fl_wrap">
					<div class="fl_auto">
						<div class="int_wrap">
							<p class="tit">회원 목록</p>
							
							<div class="table_wrap">
								<table class="table_tbody">
									<tbody >
										<tr><th>아이디</th><th>비밀번호</th>
											<th>이름</th><th>전화번호</th>
											<th>우편번호</th><th>주소</th>
											<th>가입날짜</th>
											<th>회원삭제</th>
										</tr>
		
										<c:forEach var="memberDTO" items="${ memberList }">
											<tr><td style="width: 100px;"><input type="text" class="inputId" name="id" value="${ memberDTO.id }" readonly="readonly" style="border:0px; text-align:center"></td>
												<td>${ memberDTO.pass }</td>
												<td>${ memberDTO.name }</td>
												<td>${ memberDTO.phone }</td>
												<td>${ memberDTO.postcode }</td>
												<td>${ memberDTO.address }</td>
												<td><fmt:formatDate pattern="yyyy-MM-dd" value="${ memberDTO.date }"/></td>
												<td><input type="button" class="but" onclick="location.href='${pageContext.request.contextPath}/member/deleteAdmin?id=${ memberDTO.id }'" value="회원정보삭제"></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
								<div class="btn_wrap">
									<input type="button" class="btn_middle" onclick="location.href='<%=request.getContextPath() %>/member/info'" value="회원정보">
									<input type="button" class="btn_middle" onclick="location.href='<%=request.getContextPath() %>/member/main'" value="메인이동">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>
</body>
</html>