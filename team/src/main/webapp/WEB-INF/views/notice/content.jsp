<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>content</title>
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

	  gtag('config', 'UA-116234591-1');
	</script>
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

<div class = "view_wrap">
<h1>게시판 글 가져오기</h1>

<table border="1">
<tr><td>글번호</td><td>${boardDTO.b_num}</td>
    <td>등록일</td><td><fmt:formatDate pattern="yyyy-MM-dd" value="${boardDTO.b_date }"/></td></tr>
<tr><td>글쓴이</td><td>${boardDTO.id}</td>
    <td>조회수</td><td>${boardDTO.readcount}</td></tr>
<tr><td class="tit">글제목</td><td colspan="3">${boardDTO.subject}</td></tr>
<tr><td class="info_text">글내용</td><td colspan="3">${boardDTO.content}</td></tr>
<tr><td colspan="4">
  
<input type="button" value="글수정" 
onclick="location.href='${pageContext.request.contextPath}/notice/update?b_num=${boardDTO.b_num}'">
<input type="button" value="글삭제" 
onclick="location.href='${pageContext.request.contextPath}/notice/delete?b_num=${boardDTO.b_num}'">
<input type="button" value="글목록" 
onclick="'${pageContext.request.contextPath}/notice/list'"></td></tr>
</table>
</div>
</div> <!-- Contents 끝-->
</section>

<!-- Footer -->
	<jsp:include page="../include/footer.jsp"></jsp:include>
<!-- //Footer 끝-->

</div> <!-- .wrapper 끝 -->

<iframe name="HiddenFrame" style="display:none;"></iframe>

</body>
</html>