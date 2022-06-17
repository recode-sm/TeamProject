<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
//로그아웃 => session 내장객체 삭제
session.invalidate();
%>
<script type="text/javascript">
	alert("로그아웃")
	location.href="main.jsp";
	//null님 로그인 하셨습니다. 라고 뜬다. main.jsp로 다시 돌아가기 떄문에
	//로그인창이 그대로 뜨지만 세션값이 삭제되었기 때문에 null님으로 나온다.
</script>
</body>
</html>