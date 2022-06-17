<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
//session "id"가져오기 
//list.jsp 주소(http://localhost:8080/jspProject/jsp4/list.jsp)를 알게 되면 
//아무나 주소입력으로 아이디 비밀번호 등 정보를 알 수 있다. 그래서 보안상 session 값을 부여
// String id = (String)session.getAttribute("id");
// //세션값이 없으면 => loginForm.jsp 이동
// if(id==null){ //세션값이 없을 때
// 	response.sendRedirect("loginForm.jsp");
// }else{ //세션값이 있을 때
// 	//id가 admin이 아니면 => main.jsp 이동
// 	if(!(id.equals("admin"))){
// 		response.sendRedirect("main.jsp");
// 	}
// }

//1단계  JDBC 프로그램 드라이버 로더 
// Class.forName("com.mysql.cj.jdbc.Driver");

//2단계  디비연결  DriverManager 디비주소, 디비접속아이디, 디비접속비밀번호 
// String dbUrl="jdbc:mysql://localhost:3306/jspdb7?serverTimezone=Asia/Seoul";
// String dbUser="root";
// String dbPass="1234";
//연결정보 저장 => Connection
// Connection con =DriverManager.getConnection(dbUrl, dbUser, dbPass);

//3단계 연결정보를 이용해서 sql구문 만들기
//member 전제 조회
// String sql="SELECT * FROM member";
// PreparedStatement  pstmt=con.prepareStatement(sql);

//4단계   PrepardStatement sql구문 실행 
// ResultSet rs=pstmt.executeQuery();

//5단계 ResultSet 저장된 내용을 출력, 저장
//결과값 행접근 다음행 next() 다음행 => 데이터 있으면 true / 없으면 false
//sql 구문을 보고 if를 쓸지 while을 쓸지 선택, select 구문에서 데이터 값이
//여러개가 나오면 while, 하나만 나오면 if(즉, 데이터값이 있는지 없는지 확인필요할 때)
%>
<table border='1'>
<tr><td>아이디</td><td>비밀번호</td><td>이름</td><td>가입날짜</td><tr>
<%
//next() 다음행에 데이터 있으면 true로 열접근해서 출력
// while(rs.next()){
	%>
	<tr><td><%//=rs.getString("id") %></td><td><%//=rs.getString("pass") %></td>
	<td><%//=rs.getString("name") %></td><td><%//=rs.getString("date") %></td></tr>
<!-- 	날짜는 getString으로 해도 문제없다 -->
	<%
// }
%>
</body>
</html>