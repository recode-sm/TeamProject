<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>qna/writeForm.jsp</title>
</head>
<body>
<!-- 로그인한 사용자만 글 쓸 수 있게 제어 -->
	<c:if test="${ empty sessionScope.id }">
		<c:redirect url="/member/login"/>
	</c:if>
	
	<article>
		<h1>질문하기</h1>
				
		<form action="${pageContext.request.contextPath}/qna/writePro" method="post">
			<table id="notice">
				<tr><td>작성자</td><td><input type="text" name="id" value="${ id }"></td></tr>
				<tr><td>제목</td>
					<td><select>
<!-- 							<option value="">질문 유형</option> -->
<!-- 							<option value="1">예약 관련</option> -->
<!-- 							<option value="2">결제 관련</option> -->
<!-- 							<option value="3">기타</option> -->
						</select>
						<input type="text" name="subject"></td></tr>
				<tr><td>내용</td>
					<td><textarea name="content" rows="10" cols="20"></textarea></td></tr>
			</table>
			
			<div><input type="submit" value="글쓰기" class="btn"></div>
		</form>	
		
		
	</article>
</body>
</html>