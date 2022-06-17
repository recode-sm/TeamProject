<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- <%=세션값 가져오기 %>님 로그인 하셨습니다. --%>
<%
//session "id" 가져오기
String id = (String)session.getAttribute("id");
//세션값이 없으면 loginForm.jsp 이동
// if(id == null){
// 	response.sendRedirect("loginForm.jsp"); //해당 부분 때문에 main 페이지도 가지 않고
	//Form으로 이동한다. 주석처리
// }
%>

<%-- <%=session.getAttribute("id") %>님 로그인 하셨습니다. --%>
<%=id %>님 로그인 하셨습니다.<br>
<a href="<%=request.getContextPath() %>/member/logout">로그아웃</a><br>
<a href="<%=request.getContextPath() %>/member/info">회원정보조회</a><br>
<a href="<%=request.getContextPath() %>/member/update">회원정보수정</a><br>
<a href="<%=request.getContextPath() %>/member/delete">회원정보삭제</a><br>
<%
//세션값이 있을 때(세션값이 null이 아니면) 그 세션값이 "admin"(관리자) 이면 회원목록을 볼 수 있도록
// if(id != null){
// 	if(id.equals("admin")){
		%>
<!-- 		회원목록 링크가 admin 계정으로 접속했을 시만 보인다. -->
		<a href="list.jsp">회원목록</a>
		<%
// 	}
// }
%>
</body>
</html>