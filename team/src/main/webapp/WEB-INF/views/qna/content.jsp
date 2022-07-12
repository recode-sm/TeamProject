<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>content</title>
	<!-- 공통css -->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/common.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/content.css?after7">
	<!-- 공통css -->

	<!-- 시멘틱ui 사용 -->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/semantic/semantic.css">
	<script
  		src="https://code.jquery.com/jquery-3.1.1.min.js"
  		integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
  		crossorigin="anonymous"></script>
	<script src="<%=request.getContextPath() %>/resources/semantic/dist/semantic.min.js"></script>
	<!-- 시멘틱ui 사용 -->
	
</head>
<body>
	<div id="wrapper">
	
	<!-- Header -->
	<jsp:include page="../include/header.jsp"></jsp:include>
	<!-- Header 끝-->
	
		<section id="container">
		<!-- Contents -->
			<div class="content">
				<div class="sub_top">
					<h2>Q&A</h2>
					
					<video id="video01" autoplay="" playsinline="" muted="" loop="" height="460" width="100%" title="video element"> 
						<source src="<%=request.getContextPath() %>/resources/files/banner/13202205134697811.mp4" type="video/mp4"> 
					</video>
				</div>
				<div class="tab_wrap">
					<ul class="t03">
						<li><a href="<%=request.getContextPath() %>/notice/notice">공지사항</a></li>
						<li class="on"><a href="<%=request.getContextPath() %>/qna/list">Q&A</a></li>
						<li><a href="<%=request.getContextPath() %>/notice/list">커뮤니티</a></li>
					</ul>
				</div>
				
				<div class="notice_wrap_view">
					<h3 class="h_tit">Q&A</h3>
					<div class="view_wrap">
						<form action="${pageContext.request.contextPath}/qna/writeReply?group_order='${questionDTO.group_order}'">
							<div class="top">
								<p class="tit">${questionDTO.subject}</p>
								<input type="hidden" name="group_order" value="${ questionDTO.group_order }">
								<dl>
									<dt>글번호</dt>	<dd>${questionDTO.q_num}</dd>
								    <dt>등록일</dt>	<dd><fmt:formatDate pattern="yyyy-MM-dd" value="${questionDTO.q_date}"/></dd>
									<dt>글쓴이</dt>	<dd>${questionDTO.id}</dd>
								    <dt>조회수</dt>	<dd>${questionDTO.readcount}</dd>
								</dl>
							</div>
							<div class="info_text" style="word-break: break-all;">${questionDTO.content}</div>
							<div class="btn_wrap right">	
								<c:if test="${ !empty sessionScope.id }">
									<c:if test="${ sessionScope.id eq questionDTO.id }">	
										<input type="button" class="btn_middle" value="글수정" 
										onclick="location.href='${pageContext.request.contextPath}/qna/update?q_num=${questionDTO.q_num}'">
										<input type="button" class="btn_middle" value="글삭제" 
										onclick="location.href='${pageContext.request.contextPath}/qna/delete?q_num=${questionDTO.q_num}'">										
									</c:if>
								</c:if>
								<input type="button" class="btn_middle" value="글목록" 
								onclick="location.href='${pageContext.request.contextPath}/qna/list'">
								<c:if test="${ sessionScope.id eq 'admin' }">
									<input type="submit" class="btn_middle" value="답변 작성">
								</c:if>
							</div>
						</form>
					</div>
				</div>
			</div>
		</section>
		
	<!-- Footer d-->
	<jsp:include page="../include/footer.jsp"></jsp:include>
	<!-- //Footer 끝-->
		
	</div>
	
	<iframe name="HiddenFrame" style="display:none;"></iframe>
	
</body>
</html>