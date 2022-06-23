<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member/insertForm.jsp</title>
</head>
<body>
<form action="<%=request.getContextPath() %>/member/insertPro" method="post">
	아이디		:	<input type="text" name="id"><br>
	비밀번호		:	<input type="password" name="pass"><br>
	이름			:	<input type="text" name="name"><br>
	전화번호		:	<input type="text" name="phone"><br>
	소속팀		:	<input type="text" name="team"><br>
	이메일		: 	<input type="email" name="email"><br>
	우편번호		:	<input type="text" name="postcode"><br>
	주소			:	<input type="text" name="address"><br>
<input type="submit" value="회원가입">
</form>
</body>
</html>