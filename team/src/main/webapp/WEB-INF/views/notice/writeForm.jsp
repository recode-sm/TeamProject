<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
		

	<div class = "table_wrap">
	<h1>글쓰기</h1>
	<form action="${pageContext.request.contextPath}/notice/writePro" method="post">
		<table id="notice">
		<tr><td>작성자</td><td><input type="text" name="id" value="${id}"></td></tr>
		<tr><td>제목</td><td><input type="text" name="subject"></td></tr>
		<tr><td>내용</td>
		<td><textarea name ="content" rows ="10" cols ="20"></textarea></td></tr>
		</table>

		<div id="table_search">
		<input type="submit" value="글쓰기" class="btn" />
		</div>
	</form>
	</div>

	</div> <!-- Contents 끝-->
</section>

	<!-- Footer -->
		<jsp:include page="../include/footer.jsp"></jsp:include>
	<!-- //Footer 끝-->
</div>

<iframe name="HiddenFrame" style="display:none;"></iframe>


</body>
</html>
