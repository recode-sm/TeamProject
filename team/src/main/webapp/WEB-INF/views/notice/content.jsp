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

<!-- 댓글쓰기창, 로그인 제어 -->
<c:if test="${ !empty sessionScope.id }">
	<div class="cmt_wrap">
	<form action="${pageContext.request.contextPath}/notice/cmtPro" method="post">
	<table class="cmt_table">
	<tr><td><input type="text" name="id" value="${id}" readonly></td></tr>
	<tr><td><textarea name="content" placeholder="댓글을 입력해주세요" style="width:100%;"></textarea></td></tr>
	</table>
<!-- board.b_num 받아옴 -->
	<tr><td><input type="hidden" name="b_num" value="${boardDTO.b_num}"></td></tr>
	<div class="btn_wrap right">
	<input type="submit" value="댓글작성" class="btn_middle">
	</div>
	</form>
	</div>
</c:if>

<!-- 댓글목록 -->
<div class="list_pn">
<table border="1">
<c:if test="${!empty commentList }">
<c:forEach var="commentDTO" items="${commentList }" >
	<colgroup>
		<col style="width:178px" class="w01"/>
		<col style="" />
	</colgroup>
	<tbody>
	<tr>
	<th><span>${commentDTO.id}</span></th>
	<td>${commentDTO.content}</td>
	<td>${commentDTO.c_date}</td>
	</tr>
	</tbody>
</c:forEach>
</c:if>
</table>
</div>
</div><!-- view wrap 끝 -->
</div><!-- Contents 끝-->
</section>



<!-- Footer d-->
	<jsp:include page="../include/footer.jsp"></jsp:include>
<!-- //Footer 끝-->

</div> <!-- .wrapper 끝 -->

<iframe name="HiddenFrame" style="display:none;"></iframe>

</body>
</html>