<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member/deleteForm.jsp</title>
</head>
<body>
<%
//session "id" 가져오기
String id=(String)session.getAttribute("id");
%>
<form action="<%=request.getContextPath() %>/member/deletePro" method="post">
	아이디		:	<input type="text" name="id" value="<%=id %>" readonly><br>
	비밀번호		:	<input type="password" name="pass"><br>
	이름			:	<input type="text" name="name"><br>
	전화번호		:	<input type="text" name="phone"><br>
	팀			:	<input type="text" name="team"><br>
	이메일		: 	<input type="email" name="email"><br>
	우편번호		:	<input type="text" name="postcode"><br>
	주소			:	<input type="text" name="address"><br>
	<input type="submit" value="회원정보삭제">
</form>	


<a href="<%=request.getContextPath() %>/member/main">메인으로</a>
</body>
</html>

