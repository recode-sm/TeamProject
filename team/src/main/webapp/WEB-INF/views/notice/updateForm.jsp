<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>update</title>
<!-- 공통css -->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/common.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/content.css?after7">
	<!-- //공통css -->
</head>

<body>
<div id="wrapper">

<!-- Header -->
	<jsp:include page="../include/header.jsp"></jsp:include>
<!-- //Header 끝-->

<section id="container">
<!-- Contents -->
	<div class="content">
		<div class="sub_top">
			<h2>커뮤니티</h2>
				
		<video id="video01" autoplay="" playsinline="" muted="" loop="" height="460" width="100%" title="video element"> 
		<source src="<%=request.getContextPath() %>/resources/files/banner/13202205134697811.mp4" type="video/mp4"> 
		</video>

		</div>

		<div class="tab_wrap">
			<ul class="t03">
				<li><a href="comm_notice.asp">공지사항</a></li>
				<li><a href="comm_faq.asp">FAQ</a></li>
				<li class="on"><a href="<%=request.getContextPath() %>/notice/list">커뮤니티</a></li>
			</ul>
		</div>

	<div class = "table_wrap">
	<div class="notice_wrap view">
	<h3 class="h_tit">글수정</h3>
	<form action="${pageContext.request.contextPath}/notice/updatePro" method="post">
		<input type="hidden" name="b_num" value="${boardDTO.b_num}">
		<table id="notice">
		<tr><td>작성자</td><td><input type="text" name="id" value="${boardDTO.id}" readonly></td></tr>
		<tr><td>제목</td><td><input type="text" name="subject" value="${boardDTO.subject}" style="width:80%;"></td></tr>
		<tr><td>내용</td>
		<td><textarea name ="content" rows ="40" cols ="80">${boardDTO.content}</textarea></td></tr>
		</table>

	<div id="table_search">
	<div class="btn_wrap right">
	<input type="submit" value="수정" class="btn_middle" />
	</div>
	</div>
	</form>
	</div>

	</div> <!-- Contents 끝-->
	</div>
</section>

<!-- Footer -->
	<jsp:include page="../include/footer.jsp"></jsp:include>
<!-- //Footer 끝-->

</div> <!-- .wrapper 끝 -->

<iframe name="HiddenFrame" style="display:none;"></iframe>

</body>
</html>