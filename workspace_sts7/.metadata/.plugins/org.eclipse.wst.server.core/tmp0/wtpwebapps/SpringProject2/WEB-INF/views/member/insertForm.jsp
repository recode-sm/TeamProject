<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--  http://localhost:8080/myweb/member/insert -> 가상 주소-->

<!-- <form action="member/insertPro" method="post"> -->
<!-- 위를 실행하면 http://localhost:8080/myweb/member/member/insertPro 가 된다. -->
<!-- 즉 member폴더도 가상폴더이지만 폴더로서 작용하기 때문에  -->

<!-- <form action="/member/insertPro" method="post"> -->
<!-- http://localhost:8080/member/insertPro -->
<!-- /가 루트를 의미하므로 myweb인 프로젝트경로도 사라진다. -->

<!-- 프로젝트 경로를 입력해줘야 한다. -->
<form action="<%=request.getContextPath() %>/member/insertPro" method="post">
<!-- http://localhost:8080/myweb/member/insertPro -->
아이디 : <input type="text" name="id"><br>
비밀번호 : <input type="text" name="pass"><br>
이름 : <input type="text" name="name"><br>
<input type="submit" value="회원가입">
</form>
</body>
</html>