<<<<<<< HEAD
<<<<<<< HEAD
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
>>>>>>> Base
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
>>>>>>> parent of 65fa9d6 (결제 구현)
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<<<<<<< HEAD
<<<<<<< HEAD
<title>list</title>
	<!-- 공통css 코드 변경 후 적용이 안바뀌면 확장자 뒤에 ?after붙여주세요 --> 
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/common.css?after3">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/content.css?after8">
	<!-- //공통css -->

=======
<title>jsp5/list.jsp</title>
>>>>>>> Base
=======
<title>jsp5/list.jsp</title>
>>>>>>> parent of 65fa9d6 (결제 구현)
</head>
<body>
<!-- model.addAttribute("boardList", boardList); -->
<!-- model.addAttribute("pageDTO", pageDTO); -->
<<<<<<< HEAD
<<<<<<< HEAD
=======
<h1>글목록</h1>
>>>>>>> parent of 65fa9d6 (결제 구현)

<table border="1">
<tr><td>번호</td><td>글쓴이</td><td>제목</td><td>등록일</td><td>조회</td></tr>
<c:forEach var="boardDTO" items="${boardList}">
<tr><td>${boardDTO.b_num}</td><td>${boardDTO.id}</td>
<%-- <td><a href="${pageContext.request.contextPath}/notice/content?b_num=${boardDTO.b_num}"> --%>
<%--      ${boardDTO.subject}</a></td> --%>
<td><a href="${pageContext.request.contextPath}/notice/listPro?b_num=${boardDTO.b_num}">
     ${boardDTO.subject}</a></td>
    <td>${boardDTO.b_date}</td>
    <td>${boardDTO.readcount}</td></tr>
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
	<a href="${pageContext.request.contextPath}/notice/list?pageNum=${pageDTO.startPage-pageDTO.pageBlock}"></a>
</c:if>

<c:forEach var="i" begin="${pageDTO.startPage}" end="${pageDTO.endPage}" step="1">
	<a href="${pageContext.request.contextPath}/notice/list?pageNum=${i}">${i}</a>
</c:forEach>

<<<<<<< HEAD
<iframe name="HiddenFrame" style="display:none;"></iframe>
=======
<h1>글목록</h1>

<table border="1">
<tr><td>번호</td><td>글쓴이</td><td>제목</td><td>등록일</td><td>조회</td></tr>
<c:forEach var="boardDTO" items="${boardList}">
<tr><td>${boardDTO.b_num}</td><td>${boardDTO.id}</td>
<%-- <td><a href="${pageContext.request.contextPath}/notice/content?b_num=${boardDTO.b_num}"> --%>
<%--      ${boardDTO.subject}</a></td> --%>
<td><a href="${pageContext.request.contextPath}/notice/listPro?b_num=${boardDTO.b_num}">
     ${boardDTO.subject}</a></td>
    <td>${boardDTO.b_date}</td>
    <td>${boardDTO.readcount}</td></tr>
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
	<a href="${pageContext.request.contextPath}/notice/list?pageNum=${pageDTO.startPage-pageDTO.pageBlock}"></a>
</c:if>

<c:forEach var="i" begin="${pageDTO.startPage}" end="${pageDTO.endPage}" step="1">
	<a href="${pageContext.request.contextPath}/notice/list?pageNum=${i}">${i}</a>
</c:forEach>

=======
>>>>>>> parent of 65fa9d6 (결제 구현)
<c:if test="${pageDTO.endPage < pageDTO.pageCount} ">
	<a href="${pageContext.request.contextPath}/notice/list?pageNum=${pageDTO.startPage-pageDTO.pageBlock}"></a>
</c:if>
	<a href="<%=request.getContextPath() %>/notice/write">글쓰기</a>
<<<<<<< HEAD
>>>>>>> Base
=======
>>>>>>> parent of 65fa9d6 (결제 구현)
</body>
</html>