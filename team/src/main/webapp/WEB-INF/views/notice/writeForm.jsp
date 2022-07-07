<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<<<<<<< HEAD
<<<<<<< HEAD
<title>writeForm</title>
<!-- 공통css -->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/common.css">
	<!-- //공통css -->
	
	<!-- 공통js -->
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/libs/jquery.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/libs/jquery-ui.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/datepicker.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/common/common.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/common/form_check.js"></script>
	<!-- //공통js -->
 
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/themes/classic.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/themes/classic.date.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/themes/classic.time.css">
	<script src="/admincms/js/pickadate.js-3.5.6/lib/picker.js"></script>
	<script src="/admincms/js/pickadate.js-3.5.6/lib/picker.date.js"></script>
	<script src="/admincms/js/pickadate.js-3.5.6/lib/picker.time.js"></script>
	<script src="/admincms/js/pickadate.js-3.5.6/lib/legacy.js"></script>
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-116234591-1"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());
=======
<title>write.jsp</title>
>>>>>>> parent of 65fa9d6 (결제 구현)

</head>
<body>
<article>
<h1>Notice Write</h1>
<%-- "<%=request.getContextPath() %>/member/insertPro" --%>

<form action="${pageContext.request.contextPath}/notice/writePro" method="post">
<table id="notice">
<tr><td>작성자</td><td><input type="text" name="id" ></td></tr>
<tr><td>제목</td><td><input type="text" name="subject"></td></tr>
<tr><td>내용</td>
	<td><textarea name ="content" rows ="10" cols ="20"></textarea></td></tr>
</table>

<div id="table_search">
<input type="submit" value="글쓰기" class="btn" />
</div>
</form>

<<<<<<< HEAD
<iframe name="HiddenFrame" style="display:none;"></iframe>

=======
<title>write.jsp</title>

</head>
<body>
<article>
<h1>Notice Write</h1>
<%-- "<%=request.getContextPath() %>/member/insertPro" --%>

<form action="${pageContext.request.contextPath}/notice/writePro" method="post">
<table id="notice">
<tr><td>작성자</td><td><input type="text" name="id" ></td></tr>
<tr><td>제목</td><td><input type="text" name="subject"></td></tr>
<tr><td>내용</td>
	<td><textarea name ="content" rows ="10" cols ="20"></textarea></td></tr>
</table>

<div id="table_search">
<input type="submit" value="글쓰기" class="btn" />
</div>
</form>

</article>
<!--merge pull 확인 -->
>>>>>>> Base
=======
</article>
<!--merge pull 확인 -->
>>>>>>> parent of 65fa9d6 (결제 구현)

</body>
</html>
