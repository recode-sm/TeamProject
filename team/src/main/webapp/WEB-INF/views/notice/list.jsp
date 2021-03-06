<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BS RESERVATION</title>
	<link href="<%=request.getContextPath() %>/resources/img/logo_1m.png" rel="shortcut icon" type="image/x-icon">
	<!-- 공통css 코드 변경 후 적용이 안바뀌면 확장자 뒤에 ?after붙여주세요 --> 
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/common.css?after3">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/content.css?after8">
	
	<!-- //공통css -->
	<!-- 공통js -->
	<script type="text/javascript" src="/team/resources/js/libs/jquery.min.js"></script>
	<script type="text/javascript" src="/team/resources/js/libs/jquery-ui.min.js"></script>
	<script type="text/javascript" src="/team/resources/js/datepicker.js"></script>
	<script type="text/javascript" src="/team/resources/js/common/common.js"></script>
	<script type="text/javascript" src="/team/resources/js/common/form_check.js"></script>
	<!-- //공통js -->
 
	<link rel="stylesheet" href="/team/resources/themes/classic.css">
	<link rel="stylesheet" href="/team/resources/themes/classic.date.css">
	<link rel="stylesheet" href="/team/resources/themes/classic.time.css">
	<link rel="stylesheet" type="text/css" href="/team/resources/css/content.css">
	
	<script src="/admincms/js/pickadate.js-3.5.6/lib/picker.js"></script>
	<script src="/admincms/js/pickadate.js-3.5.6/lib/picker.date.js"></script>
	<script src="/admincms/js/pickadate.js-3.5.6/lib/picker.time.js"></script>
	<script src="/admincms/js/pickadate.js-3.5.6/lib/legacy.js"></script>
	
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-116234591-1"></script>
	
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
	
	
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

</head>
<body>
<!-- model.addAttribute("boardList", boardList); -->
<!-- model.addAttribute("pageDTO", pageDTO); -->

<div id="wrapper">

<!-- Header -->
	<jsp:include page="../include/header.jsp"></jsp:include>
<!-- //Header 끝-->

	<section id="container">
		<div class="content">
			<div class="sub_top">
				<h2>게시판</h2>
				<video id="video01" autoplay="" playsinline="" muted="" loop="" height="460" width="100%" title="video element"> 
				<source src="<%=request.getContextPath() %>/resources/files/banner/community.mp4" type="video/mp4"> 
				</video>
			</div>

			<div class="tab_wrap">
				<ul class="t02">
				<li class="on"><a href="<%=request.getContextPath() %>/notice/list">게시판</a></li>
				<li><a href="<%=request.getContextPath() %>/qna/list">Q&A</a></li>
				
				</ul>
			</div>

		<div class="notice_wrap list">
			<h3 class="h_tit">글목록</h3>

			<div class="table_wrap list" style="cursor:pointer;">
				<table>
					<tr><th scope="col">번호</th><th scope="col">글쓴이</th><th scope="col">제목</th><th scope="col">등록일</th><th scope="col">조회</th></tr>
					<c:forEach var="boardDTO" items="${boardList}">
					<tr onclick="location.href='<%=request.getContextPath() %>/notice/listPro?b_num=${boardDTO.b_num }'">
						<td >${boardDTO.b_num}</td>
						<td>${boardDTO.id}</td>
						<td><input type="hidden" value=${boardDTO.b_num }>${boardDTO.subject}</td>
   						<td><fmt:formatDate pattern="yyyy-MM-dd" value="${boardDTO.b_date }"/></td> 
   						<td>${boardDTO.readcount}</td>
   					</tr>
					</c:forEach>
				</table>
			</div>

		</div>
	
		

		<!-- 글쓰기 로그인제어 -->
		<div class = "pager_wrap">
		<div class="btn_wrap right">
			<c:if test="${ !empty sessionScope.id }">
				<input type="button" value="글쓰기" class="btn_middle" onclick="location.href='<%=request.getContextPath() %>/notice/write'" style="font-family:'Noto Sans KR' sans-serif; text-align:center;">
			</c:if>
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
		</div> <!-- //Contents 끝-->
	</section>

	<!-- Footer -->
		<jsp:include page="../include/footer.jsp"></jsp:include>
	<!-- //Footer 끝-->
</div> <!-- //wrapper 끝 -->

<iframe name="HiddenFrame" style="display:none;"></iframe>
</body>
</html>