<%@page import="com.fasterxml.jackson.annotation.JsonTypeInfo.Id"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>memberInfo</title>	
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/reservResult.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/content.css?v=201811160138">
</head>

<body>
	<div id="wrapper">
		<section id="container">
			<!-- Contents -->
		<form action="<%=request.getContextPath() %>/member/deletePro" method="post">
			<div class="content">
				<div class="rese_wrap cal">
					<div class="fl_wrap">
						<div class="fl_right">
							<div class="int_wrap">
								<p class="tit">회원정보 확인</p>
								<div class="table_wrap">
									<table>
									<caption>회원정보</caption>
										<tbody>
											<tr><th>아이디</th><td><input type="text"  name="id" style="width:100%; border:0 solid black;" value="${id}"></td>
											<tr><th>비밀번호</th><td><input type="password"  name="pass" ></td>
										</tbody>
									</table>
									<div class="btn_wrap">
										<!-- 로그인 제어 -->
										<c:if test="${ empty sessionScope.id }">
											<c:redirect url="/member/login"/>
										</c:if>
									
										<input type="submit" class="btn_middle" value="회원정보삭제">
										<input type="button" class="btn_middle" onclick="location.href='<%=request.getContextPath() %>/member/main'" value="메인으로">
									</div>
									</div>
								</div>	
							</div>
						</div>
					</div>
				</div>
			</form>
		</section>		
	</div>
</body>
</html>