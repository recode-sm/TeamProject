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
	
	
	
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
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
						<source src="<%=request.getContextPath() %>/resources/files/banner/community.mp4" type="video/mp4">  
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
						<form action="${pageContext.request.contextPath}/qna/updatePro" method="post">
							<div class="top">
								<input type="hidden" name="q_num" value="${questionDTO.q_num}">
								<dl>
									<dt>제목</dt>		<p class="tit"><input type="text" name="subject" value="${questionDTO.subject}"></p>
									<dt>글번호</dt>	<dd>${questionDTO.q_num}</dd>
								    <dt>등록일</dt>	<dd><fmt:formatDate pattern="yyyy-MM-dd" value="${questionDTO.q_date}"/></dd>
									<dt>글쓴이</dt>	<dd><input type="text" name="id" value="${questionDTO.id}" readonly></dd>
								    <dt>조회수</dt>	<dd>${questionDTO.readcount}</dd>
								</dl>
							</div>
							<div class="info_text" style="word-break: break-all;">
								<textarea name ="content" rows ="10" style="width:100%;">${questionDTO.content}</textarea></div>
							<div class="btn_wrap right">	
								<input type="submit" value="글수정" class="btn_middle" />
								<input type="button" class="btn_middle" value="작성 취소" 
								onclick="location.href='${pageContext.request.contextPath}/qna/content?q_num=${questionDTO.q_num}'">										
								<input type="button" class="btn_middle" value="글목록" 
								onclick="location.href='${pageContext.request.contextPath}/qna/list'">
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