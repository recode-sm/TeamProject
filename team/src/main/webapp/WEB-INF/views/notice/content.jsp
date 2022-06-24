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
<h1>게시판 글 가져오기</h1>
<table border="1">
<tr><td>글번호</td><td>${boardDTO.b_num}</td>
    <td>등록일</td><td>${boardDTO.date}</td></tr>
<tr><td>글쓴이</td><td>${boardDTO.id}</td>
    <td>조회수</td><td>${boardDTO.readcount}</td></tr>
<tr><td>글제목</td><td colspan="3">${boardDTO.subject}</td></tr>
<tr><td>글내용</td><td colspan="3">${boardDTO.content}</td></tr>
<tr><td colspan="4">

<input type="button" value="글수정" 
onclick="location.href='${pageContext.request.contextPath}/notice/update?b_num=${boardDTO.b_num}'">
<input type="button" value="글삭제" 
onclick="location.href=='${pageContext.request.contextPath}/notice/delete?b_num=${boardDTO.b_num}'">
<input type="button" value="글목록" 
onclick="'${pageContext.request.contextPath}/notice/list'"></td></tr>
</table>

</article>
</body>
</html>