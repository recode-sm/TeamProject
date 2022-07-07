<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<<<<<<< HEAD
<<<<<<< HEAD
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
=======
>>>>>>> Base
=======
>>>>>>> parent of 65fa9d6 (결제 구현)
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>content</title>
<<<<<<< HEAD
<<<<<<< HEAD
	<!-- 공통css -->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/common.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/content.css?after7">
	<!-- //공통css -->
	
	<!-- 공통js -->
<%-- 	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/libs/jquery.min.js"></script> --%>
<%-- 	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/libs/jquery-ui.min.js"></script> --%>
<%-- 	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/datepicker.js"></script> --%>
<%-- 	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/common/common.js"></script> --%>
<%-- 	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/common/form_check.js"></script> --%>
<!-- 	<!-- //공통js --> 
 
<%-- 	<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/themes/classic.css"> --%>
<%-- 	<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/themes/classic.date.css"> --%>
<%-- 	<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/themes/classic.time.css"> --%>
<!-- 	<script src="/admincms/js/pickadate.js-3.5.6/lib/picker.js"></script> -->
<!-- 	<script src="/admincms/js/pickadate.js-3.5.6/lib/picker.date.js"></script> -->
<!-- 	<script src="/admincms/js/pickadate.js-3.5.6/lib/picker.time.js"></script> -->
<!-- 	<script src="/admincms/js/pickadate.js-3.5.6/lib/legacy.js"></script> -->
<!-- 	<!-- Global site tag (gtag.js) - Google Analytics --> 
<!-- 	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-116234591-1"></script> -->
<!-- 	<script> -->
<!-- 	  window.dataLayer = window.dataLayer || []; -->
<!-- 	  function gtag(){dataLayer.push(arguments);} -->
<!-- 	  gtag('js', new Date()); -->

<!-- 	  gtag('config', 'UA-116234591-1'); -->
<!-- 	</script> -->
=======
>>>>>>> parent of 65fa9d6 (결제 구현)
</head>
<body>
<article>
<h1>게시판 글 가져오기</h1>
<table border="1">
<tr><td>글번호</td><td>${boardDTO.b_num}</td>
    <td>등록일</td><td>${boardDTO.b_date}</td></tr>
<tr><td>글쓴이</td><td>${boardDTO.id}</td>
    <td>조회수</td><td>${boardDTO.readcount}</td></tr>
<tr><td>글제목</td><td colspan="3">${boardDTO.subject}</td></tr>
<tr><td>글내용</td><td colspan="3">${boardDTO.content}</td></tr>
<tr><td colspan="4">
  
<input type="button" value="글수정" 
onclick="location.href='${pageContext.request.contextPath}/notice/update?b_num=${boardDTO.b_num}'">
<input type="button" value="글삭제" 
onclick="location.href='${pageContext.request.contextPath}/notice/delete?b_num=${boardDTO.b_num}'">
<input type="button" value="글목록" 
onclick="location.href='${pageContext.request.contextPath}/notice/list'"></td></tr>
</table>

<<<<<<< HEAD
=======
</head>
<body>
<article>
<h1>게시판 글 가져오기</h1>
<table border="1">
<tr><td>글번호</td><td>${boardDTO.b_num}</td>
    <td>등록일</td><td>${boardDTO.b_date}</td></tr>
<tr><td>글쓴이</td><td>${boardDTO.id}</td>
    <td>조회수</td><td>${boardDTO.readcount}</td></tr>
<tr><td>글제목</td><td colspan="3">${boardDTO.subject}</td></tr>
<tr><td>글내용</td><td colspan="3">${boardDTO.content}</td></tr>
<tr><td colspan="4">
  
<input type="button" value="글수정" 
onclick="location.href='${pageContext.request.contextPath}/notice/update?b_num=${boardDTO.b_num}'">
<input type="button" value="글삭제" 
onclick="location.href='${pageContext.request.contextPath}/notice/delete?b_num=${boardDTO.b_num}'">
<input type="button" value="글목록" 
onclick="location.href='${pageContext.request.contextPath}/notice/list'"></td></tr>
</table>

</article>
>>>>>>> Base
=======
</article>
>>>>>>> parent of 65fa9d6 (결제 구현)
</body>
</html>