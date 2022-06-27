<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member/updateForm.jsp</title>
</head>
<body>

<form action="<%=request.getContextPath() %>/member/updatePro" method="post">
	아이디		:	<input type="text" name="id" value="${ memberDTO.id }" readonly><br>
	비밀번호		:	<input type="password" name="pass"><br>
	이름			:	<input type="text" name="name" value="${ memberDTO.name }"><br>
	전화번호		:	<input type="text" name="phone" value="${ memberDTO.phone }"><br>
	팀			:	<input type="text" name="team" value="${ memberDTO.team }"><br>
	이메일		: 	<input type="email" name="email" value="${ memberDTO.email }"><br>
	우편번호		:	<input type="text" name="postcode" value="${ memberDTO.postcode }"><br>
	주소			:	<input type="text" name="address" value="${ memberDTO.address }"><br>
	<input type="submit" value="회원정보수정">
</form>	
	
<a href="<%=request.getContextPath() %>/member/main">메인으로</a>
</body>
</html>