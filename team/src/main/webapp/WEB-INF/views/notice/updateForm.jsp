<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update</title>


<!-- //세션값 가져오기 -->
<!-- String id=(String)session.getAttribute("id"); -->
<!-- // 세션값이 없으면 (id null 이면 ) login.jsp 이동 -->
<!-- if(id==null){ -->
<!-- 	response.sendRedirect("../member/login.jsp"); -->
<!-- } -->

<!-- // BoardDAO 객체생성 -->
<!-- BoardDAO boardDAO=new BoardDAO(); -->
<!-- // BoardDTO boardDTO = getBoard(num) 메서드 호출 -->
<!-- BoardDTO boardDTO=boardDAO.getBoard(num); -->


<h1>Update</h1>
<form action="${pageContext.request.contextPath}/notice/updatePro" method="post">
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