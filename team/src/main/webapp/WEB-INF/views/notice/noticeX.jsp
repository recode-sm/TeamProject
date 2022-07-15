<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<title>BS RESERVATION</title>
   <link href="<%=request.getContextPath() %>/resources/img/logo_1m.png" rel="shortcut icon" type="image/x-icon">
<meta charset="UTF-8">
<title>HM FUTSAL PARK</title>
	
	<!-- 공통css -->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/common.css">
	<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700" rel="stylesheet">
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
<!-- Global site tag (gtag.js) - Google Analytics -->

	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/content.css?v=201811160138">
</head> 


<body>

<div id="wrapper">

	<!-- Header -->
		<jsp:include page="../include/header.jsp"></jsp:include>
	<!-- //Header -->
	<section id="container">
		<!-- Contents -->
		<div class="content">
			<div class="sub_top">
				<h2>공지사항</h2>
				
	<video id="video01" autoplay="" playsinline="" muted="" loop="" height="460" width="100%" title="video element"> 
		<source src="<%=request.getContextPath() %>/resources/files/banner/community.mp4" type="video/mp4">  
	</video>

			</div>

			<div class="tab_wrap">
				<ul class="t03">
					<li class="on"><a href="<%=request.getContextPath() %>/notice/notice">공지사항</a></li>
					<li><a href="<%=request.getContextPath() %>/qna/list">Q&A</a></li>
					<li><a href="<%=request.getContextPath() %>/notice/list">커뮤니티</a></li>
				</ul>
			</div>

			<div class="notice_wrap list">
				<h3 class="h_tit">공지사항</h3>
				
				<div class="table_wrap list">
					<table>
						<caption>공지사항 리스트</caption>
						<colgroup>
							<col style="width:90px" class="w01" />
							<col style="" />
							<col style="width:155px" class="w02" />
							<col style="width:85px"  class="tb" />
						</colgroup>
						<thead>
							<tr>
								<th scope="col">번호</th>
								<th scope="col">제목</th>
								<th scope="col">작성일</th>
								<th scope="col" class="tb">조회</th>
							</tr>
						</thead>
						<tbody>
					
							<tr>
								<td><span class="state">공지</span></td>
								<td class="al_left"><a href="comm_notice_view.asp?cno=25&noti=y&page=" class="tit">안녕하세요</a></td>
								<td>2022.05.19</td>
								<td class="tb">320</td>
							</tr>
					
						</tbody>
					</table>
				</div>

				<!-- Page -->
				<div class="pager_wrap">
					<div class="search">
						<FORM NAME="frm_search" METHOD="get" ACTION="?" onsubmit="Fn_Search(); return false;">
						<span class="select" style="width:100px">
							<label for="select01">제목</label>
							<select id="select01" name="s_kinds" class="select_box">
								<option value="title" >제목</option>
							</select>
						</span>
						<input type="text" id="searchstr" title="" name="searchstr" value="" style="width:200px" />
						<button type="input" class="btn_search" onclick="Fn_Search(); return false;"></button>
						</FORM>
					</div>
					<a href="comm_notice.asp?page=1" class="btn_page prev"><span class='hide'>이전 페이지</span></a><span class='page'><a href="comm_notice.asp?page=1" class="on">1</a><a href="comm_notice.asp?page=2">2</a></span><a href="comm_notice.asp?page=2" class="btn_page next"><span class='hide'>다음 페이지</span></a>
				</div>
				<!-- //Page -->
			</div>

		</div>
		<!-- //Contents -->
	</section>
	<!-- Footer -->
		<jsp:include page="../include/footer.jsp"></jsp:include>
	<!-- //Footer -->
</div>

<iframe name="HiddenFrame" style="display:none;"></iframe>
</body>
</html>