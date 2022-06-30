<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list</title>
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
<!-- model.addAttribute("boardList", boardList); -->
<!-- model.addAttribute("pageDTO", pageDTO); -->

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

<div class="notice_wrap list">
	<h3 class="h_tit">글목록</h3>

	<div class="table_wrap list">
	<table border="1">
	<tr><td>번호</td><td>글쓴이</td><td>제목</td><td>등록일</td><td>조회</td></tr>
	
	<c:forEach var="boardDTO" items="${boardList}">
		<tr><td>${boardDTO.b_num}</td><td>${boardDTO.id}</td>
<%-- <td><a href="${pageContext.request.contextPath}/notice/content?b_num=${boardDTO.b_num}"> --%>
<%--      ${boardDTO.subject}</a></td> --%>
		<td><a href="${pageContext.request.contextPath}/notice/listPro?b_num=${boardDTO.b_num}">
     	${boardDTO.subject}</a></td>
   		<td><fmt:formatDate pattern="yyyy-MM-dd" value="${boardDTO.b_date }"/></td> 
   		<td>${boardDTO.readcount}</td></tr>
	</c:forEach>
	</table>
	</div>

</div>
	
	<div class = "pager_wrap">
	
	<div class="write">
		<a href="<%=request.getContextPath() %>/notice/write">글쓰기</a>
	</div>
	<span class = "page">
	<c:if test="${startPage > pageBlock}">
		<a  href="${pageContext.request.contextPath}/notice/list?pageNum=${pageDTO.startPage-pageDTO.pageBlock}"></a>
	</c:if>

	
	<c:forEach var="i" begin="${pageDTO.startPage}" end="${pageDTO.endPage}" step="1">
		<a class="on" href="${pageContext.request.contextPath}/notice/list?pageNum=${i}">${i}</a>
	</c:forEach>
	
	<c:if test="${pageDTO.endPage < pageDTO.pageCount} ">
		<a href="${pageContext.request.contextPath}/notice/list?pageNum=${pageDTO.startPage-pageDTO.pageBlock}"></a>
	</c:if>
	</span>
	</div>
	</div> <!-- Contents 끝-->


</section>

	<!-- Footer -->
		<jsp:include page="../include/footer.jsp"></jsp:include>
	<!-- //Footer 끝-->
</div>

<<<<<<< Updated upstream
<c:if test="${pageDTO.endPage < pageDTO.pageCount} ">
	<a href="${pageContext.request.contextPath}/notice/list?pageNum=${pageDTO.startPage-pageDTO.pageBlock}"></a>
</c:if>
=======
<iframe name="HiddenFrame" style="display:none;"></iframe>
>>>>>>> Stashed changes
</body>
</html>