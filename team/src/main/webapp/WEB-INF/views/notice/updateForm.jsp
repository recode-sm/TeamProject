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
<form action="${pageContext.request.contextPath}/notice/updatePro" method="post">
<input type="hidden" name="b_num" value="${boardDTO.b_num}">
<input type="hidden" name="pass" value="1111">
<table id="notice">
<tr><td>작성자</td><td><input type="text" name="id" value="${boardDTO.id}" readonly></td></tr>
<tr><td>제목</td><td><input type="text" name="subject" value="${boardDTO.subject}"></td></tr>
<tr><td>내용</td>
	<td><textarea name ="content" rows ="10" cols ="20">${boardDTO.content}</textarea></td></tr>
</table>

<div id="table_search">
<input type="submit" value="글수정" class="btn" />
</div>
</form>

</body>
</html>