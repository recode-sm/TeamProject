<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>write</title>
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
						<form action="${pageContext.request.contextPath}/qna/writeReplyPro" method="post">
						    <input type="hidden" name="group_order" value="${ group_order }">
							<div class="top">
								<dl>
									<dt>제목</dt>		<p class="tit"><input type="text" name="subject"></p>
									<dt>글쓴이</dt>	<dd><input type="text" name="id" value="${ id }"></dd>
								</dl>
							</div>
							<div class="info_text" style="word-break: break-all;">
								<textarea name ="content" rows ="10" style="width:100%;"></textarea></div>
							<div class="btn_wrap right">	
								<input type="submit" value="글쓰기" class="btn_middle" />
								<input type="button" class="btn_middle" value="작성 취소" 
								onclick="location.href='${pageContext.request.contextPath}/qna/list'">										
								<input type="button" class="btn_middle" value="글목록" 
								onclick="location.href='${pageContext.request.contextPath}/qna/list'">
							</div>
						</form>
					</div>
				</div>
			</div>
		</section>
		
	<!-- Footer -->
	<jsp:include page="../include/footer.jsp"></jsp:include>
	<!-- //Footer 끝-->
		
	</div>
	
	<iframe name="HiddenFrame" style="display:none;"></iframe>
			
</body>
</html>