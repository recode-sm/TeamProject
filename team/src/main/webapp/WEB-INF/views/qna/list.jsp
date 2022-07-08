<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>qna/list.jsp</title>
	<!-- 공통css 코드 변경 후 적용이 안바뀌면 확장자 뒤에 ?after붙여주세요 --> 
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/common.css?after3">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/content.css?after8">
	<!-- //공통css -->
</head>

<body>
<h1>Q&A</h1>

<table border="1">
<tr><td>번호</td><td>글쓴이</td><td>제목</td><td>등록일</td><td>조회</td></tr>
<c:forEach var="questionDTO" items="${boardList}">
<tr><td>${questionDTO.q_num}</td><td>${questionDTO.id}</td>
	<td><a href="${pageContext.request.contextPath}/qna/listPro?q_num=${questionDTO.q_num}">
    	 ${questionDTO.subject}</a></td>
    <td>${questionDTO.q_date}</td>
    <td>${questionDTO.readcount}</td></tr>
</c:forEach>

<!-- 로그인 제어 -->
<c:if test ="{ ! empty sessionScope.id }">
	<div id="table_search">
	<input type="button" value="글쓰기" class="btn" 
    onclick="location.href='writeForm.jsp'">
	</div>
</c:if>
</table>


<c:if test="${startPage > pageBlock}">
	<a href="${pageContext.request.contextPath}/qna/list?pageNum=${pageDTO.startPage-pageDTO.pageBlock}"></a>
</c:if>

<c:forEach var="i" begin="${pageDTO.startPage}" end="${pageDTO.endPage}" step="1">
	<a href="${pageContext.request.contextPath}/qna/list?pageNum=${i}">${i}</a>
</c:forEach>

<c:if test="${pageDTO.endPage < pageDTO.pageCount} ">
	<a href="${pageContext.request.contextPath}/qna/list?pageNum=${pageDTO.startPage-pageDTO.pageBlock}"></a>
</c:if>
	<a href="<%=request.getContextPath() %>/qna/write">글쓰기</a>
</body>
</html>