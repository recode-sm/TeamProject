<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>write.jsp</title>

</head>
<body>
<article>
<h1>Notice Write</h1>
<%-- "<%=request.getContextPath() %>/member/insertPro" --%>

<form action="${pageContext.request.contextPath}/notice/writePro" method="post">
<input type="hidden" name="pass" value="1111">
<table id="notice">
<tr><td>작성자</td><td><input type="text" name="id" value="${memberDTO.id}" readonly></td></tr>
<tr><td>제목</td><td><input type="text" name="subject"></td></tr>
<tr><td>내용</td>
	<td><textarea name ="content" rows ="10" cols ="20"></textarea></td></tr>
</table>

<div id="table_search">
<input type="submit" value="글쓰기" class="btn" />
</div>
</form>

</article>
<!--merge pull 확인 -->

</body>
</html>
