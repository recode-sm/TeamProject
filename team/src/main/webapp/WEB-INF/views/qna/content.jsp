<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>content</title>
</head>
<body>
<article>
<h1>질문</h1>
<form action="${pageContext.request.contextPath}/qna/writeReply?group_order='${questionDTO.group_order}'">
<table border="1">
	<input type="hidden" name="group_order" value="${ questionDTO.group_order }">
	<tr><td>글번호</td><td>${questionDTO.q_num}</td>
	    <td>등록일</td><td>${questionDTO.q_date}</td></tr>
	<tr><td>글쓴이</td><td>${questionDTO.id}</td>
	    <td>조회수</td><td>${questionDTO.readcount}</td></tr>
	<tr><td>글제목</td><td colspan="3">${questionDTO.subject}</td></tr>
	<tr><td>글내용</td><td colspan="3">${questionDTO.content}</td></tr>
	<tr><td colspan="4">
  
	<input type="button" value="글수정" 
	onclick="location.href='${pageContext.request.contextPath}/qna/update?q_num=${questionDTO.q_num}'">
	<input type="button" value="글삭제" 
	onclick="location.href='${pageContext.request.contextPath}/qna/delete?q_num=${questionDTO.q_num}'">
	<input type="button" value="글목록" 
	onclick="location.href='${pageContext.request.contextPath}/qna/list'">

	<c:if test="${ sessionScope.id eq 'admin' }">
<!-- 		<input type="button" value="답변 작성"  -->
<%-- 		onclick="location.href='${pageContext.request.contextPath}/qna/writeReply?group_order='${questionDTO.group_order}'">		 --%>
			<input type="submit" value="답변 작성">
	</c:if>
	</td></tr>	
</table>
</form>
</article>
</body>
</html>