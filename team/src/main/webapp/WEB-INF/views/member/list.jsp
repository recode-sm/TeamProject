<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp4/list.jsp</title>
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

<table border="1">
	<tr><td>아이디</td><td>비밀번호</td>
		<td>이름</td><td>전화번호</td>
		<td>소속팀</td><td>이메일</td>
		<td>우편번호</td><td>주소</td>
		<td>가입날짜</td>
	</tr>

	<c:forEach var="memberDTO" items="${ memberList }">
		<tr><td>${ memberDTO.id }</td><td>${ memberDTO.pass }</td>
			<td>${ memberDTO.name }</td><td>${ memberDTO.phone }</td>
			<td>${ memberDTO.team }</td><td>${ memberDTO.email }</td>
			<td>${ memberDTO.postcode }</td><td>${ memberDTO.address }</td>
			<td>${ memberDTO.date }</td>
		</tr>
	</c:forEach>
</table>
</body>
</html>