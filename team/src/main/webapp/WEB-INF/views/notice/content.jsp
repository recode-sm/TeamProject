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
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/content.css?after7">
	<!-- //공통css -->
	<!-- 시멘틱ui 사용 -->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/semantic/semantic.css">
	<script
  	src="https://code.jquery.com/jquery-3.1.1.min.js"
  	integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
  	crossorigin="anonymous"></script>
	<script src="<%=request.getContextPath() %>/resources/semantic/dist/semantic.min.js"></script>
	<!-- //시멘틱ui 사용 -->
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
				<li><a href="<%=request.getContextPath() %>/notice/notice">공지사항</a></li>
				<li><a href="<%=request.getContextPath() %>/qna/list">Q&A</a></li>
				<li class="on"><a href="<%=request.getContextPath() %>/notice/list">커뮤니티</a></li>
			</ul>
		</div>

<div class = "notice_wrap view">
<h3 class="h_tit">커뮤니티</h3>
<div class="view_wrap">
<div class="top">
	<p class="tit">${boardDTO.subject}</p>
	<dl>
	<dt>글번호</dt> <dd>${boardDTO.b_num}</dd>
    <dt>등록일</dt> <dd><fmt:formatDate pattern="yyyy-MM-dd" value="${boardDTO.b_date }"/></dd>
	<dt>작성자</dt><dd>${boardDTO.id}</dd>
    <dt>조회수</dt> <dd>${boardDTO.readcount}</dd>
    </dl>
</div>
<div class="info_text" style="word-break: break-all;">${boardDTO.content}</div>


<div class="btn_wrap right">
	<c:if test="${ !empty sessionScope.id }">
		<c:if test="${ (sessionScope.id eq boardDTO.id)}">
		<a href="${pageContext.request.contextPath}/notice/update?b_num=${boardDTO.b_num}" class="btn_middle">수정</a>
		<a href="${pageContext.request.contextPath}/notice/delete?b_num=${boardDTO.b_num}" class="btn_middle">삭제</a>
		</c:if>
	</c:if>
	<a href="${pageContext.request.contextPath}/notice/list" class="btn_middle">목록</a>
</div>
</div>

<!-- 댓글목록 -->
<div class="ui small comments">
<h2 class="ui dividing header">댓글</h2>
<div class="comments">
<div class="content">
<c:if test="${!empty commentList }">
<c:forEach var="commentDTO" items="${commentList }" >
	<div class="author"><span>${commentDTO.id}</span></div>
	<div class="text"><input type="text" value="${commentDTO.content}" readonly></div>
	<div class="date">${commentDTO.c_date}</div>
<!-- 	댓글 수정, 삭제 로그인 제어 -->
	<c:if test="${ (sessionScope.id eq commentDTO.id)}">
		<input type="button" id="cmtUp" onclick="update()" class="ui secondary button" value="수정">
		<input type="button" id="cmtDe" onclick="location.href='<%=request.getContextPath() %>/notice/commentDelete?c_num=${commentDTO.c_num}&b_num=${commentDTO.b_num}'" class="ui secondary button" value="삭제">
	</c:if>
	<div class="ui dividing header"></div>
	
</c:forEach>
</c:if>
</div>
</div>
</div>
<!-- 댓글쓰기창, 로그인 제어 -->
<c:if test="${ !empty sessionScope.id }">
	<div class="ui reply form">
		<form action="${pageContext.request.contextPath}/notice/cmtPro" method="post">
		<table class="icon edit">
			<tr><td><input type="text" name="id" value="${id}" readonly></td></tr>
			<tr><td><textarea id="content" name="content" placeholder="댓글을 입력해주세요" style="width:100%;"></textarea></td></tr>
		</table>
<!-- board.b_num 받아옴 -->
		<input type="hidden" name="b_num" value="${boardDTO.b_num}">
		<div class="btn_wrap right">
			<input type="submit" value="댓글작성" class="btn_middle">
		</div>
		</form>
	</div>
</c:if>
</div><!-- //notice wrap view 끝 -->
</div><!-- // Contents 끝-->
</section>



<!-- Footer d-->
	<jsp:include page="../include/footer.jsp"></jsp:include>
<!-- //Footer 끝-->

</div> <!-- .wrapper 끝 -->

<iframe name="HiddenFrame" style="display:none;"></iframe>

</body>
</html>