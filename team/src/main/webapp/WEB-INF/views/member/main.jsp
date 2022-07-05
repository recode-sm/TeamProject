<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member/main.jsp</title>
</head>
<body>

<c:if test="${ empty sessionScope.id }">
	<c:redirect url="/member/login"/>
</c:if>

${ sessionScope.id }님 로그인 하셨습니다.<br>
<a href="<%=request.getContextPath() %>/member/logout">로그아웃</a><br>
<a href="<%=request.getContextPath() %>/member/info">회원정보조회</a><br>
<a href="<%=request.getContextPath() %>/member/update">회원정보수정</a><br>
<a href="<%=request.getContextPath() %>/member/delete">회원정보삭제</a><br>

<c:if test="${ !empty sessionScope.id }">
	<c:if test="${ sessionScope.id == 'admin' }">
		<a href="<%=request.getContextPath() %>/member/list">회원목록</a><br>
	</c:if>
</c:if>

<%-- <a href="<%=request.getContextPath() %>">메인페이지로 가기</a><br> --%>

</body>
</html>

