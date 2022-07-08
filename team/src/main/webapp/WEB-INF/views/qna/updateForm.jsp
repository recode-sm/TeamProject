<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<title>update</title>

<h1>Update</h1>
<form action="${pageContext.request.contextPath}/qna/updatePro" method="post">
	<input type="hidden" name="q_num" value="${questionDTO.q_num}">

	<table id="notice">
		<tr><td>작성자</td>
			<td><input type="text" name="id" value="${questionDTO.id}" readonly></td></tr>
		<tr><td>제목</td>
			<td><input type="text" name="subject" value="${questionDTO.subject}"></td></tr>
		<tr><td>내용</td>
			<td><textarea name ="content" rows ="10" cols ="20">${questionDTO.content}</textarea></td></tr>
	</table>
	
	<div id="table_search">
		<input type="submit" value="글수정" class="btn" />
	</div>
</form>

</body>
</html>