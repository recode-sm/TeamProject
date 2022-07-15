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
	<title>memberInfo</title>	
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/reservResult.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/content.css?v=201811160138">

<script type="text/javascript">
	$(document).ready(function() {
		$('html').addClass('memb');
	});
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
								<p class="tit">회원정보 확인</p>
								<div class="table_wrap">
									<table>
									<caption>회원정보</caption>
										<tbody class="tbody">
											<tr><th>아이디</th>	<td><input type="text"  name="id" style="width:100%; border:0 solid black;" value="${memberDTO.id}" readonly="readonly"></td>
											<tr><th>비밀번호</th>	<td><input type="text"  name="pass" style="width:100%; border:0 solid black;" value="" readonly="readonly"></td>
											<tr><th>이름</th>		<td><input type="text"  name="name" style="width:100%; border:0 solid black;" value="${memberDTO.name}" readonly="readonly"></td>
											<tr><th>전화번호</th>	<td><input type="text"  name="phone" style="width:100%; border:0 solid black;" value="${memberDTO.phone}" readonly="readonly"></td>
											<tr><th>우편번호</th>	<td><input type="text"  name="postcode" style="width:100%; border:0 solid black;" value="${memberDTO.postcode}" readonly="readonly"></td>
											<tr><th>주소</th>		<td><input type="text"  name="address" style="width:100%; border:0 solid black;" value="${memberDTO.address}" readonly="readonly"></td>	
											<tr><th>가입날짜</th>	<td><input type="text"  name="date" style="width:100%; border:0 solid black;" 
																	value="<fmt:formatDate pattern="yyyy-MM-dd" value="${memberDTO.date}"/>" readonly="readonly"></td>
										</tbody>
									</table>
									<div class="btn_wrap">
										<!-- 로그인 제어 -->
										<c:if test="${ empty sessionScope.id }">
											<c:redirect url="/member/login"/>
										</c:if>
									
										<input type="button" class="btn_middle" onclick="location.href='<%=request.getContextPath() %>/member/update'" value="회원정보수정">
										<input type="button" class="btn_middle" onclick="location.href='<%=request.getContextPath() %>/member/delete'" value="회원정보삭제">
										
												
										<input type="button" class="btn_middle" onclick="location.href='<%=request.getContextPath() %>/member/main'" value="메인으로">
									</div>
									<div class="btn_wrap">
										<c:if test="${ !empty sessionScope.id }">
											<c:if test="${ sessionScope.id == 'admin' }">
												<input type="button" class="btn_middle" onclick="location.href='<%=request.getContextPath() %>/member/list'" value="회원목록">
											</c:if>
										</c:if>
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