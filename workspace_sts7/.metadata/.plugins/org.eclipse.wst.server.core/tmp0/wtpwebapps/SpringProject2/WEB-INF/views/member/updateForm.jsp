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
//이름이 id인 session값 가져오기
// String id = (String)session.getAttribute("id");

//반복되는 1,2,3,4,5단계가 MemberDAO에 들어가 있으므로 코드가 많이 줄었다.
//MemberDAO 객체생성 => 기억장소 할당
// MemberDAO memberDAO = new MemberDAO();
//MemberDTO memberDTO = 주소.getMember(id) 메서드 호출
//세션값 id를 getMember 매개변수에 넣고, 메개변수가 들어온 getMember 메서드의 실행 결과 값의 주소를 memberDTO에 넣는다
// MemberDTO memberDTO = memberDAO.getMember(id);

%>
<form action="<%=request.getContextPath() %>/member/updatePro" method="post">
아이디 : <input type="text" name="id" value="<%//=memberDTO.getId() %>" readonly><br>
비밀번호 : <input type="text" name="pass"><br>
이름 : <input type="text" name="name" value="<%//=memberDTO.getName() %>"><br>
<input type="submit" value="회원정보수정">
</form>	

<a href="<%=request.getContextPath() %>/member/main">메인으로</a>
</body>
</html>