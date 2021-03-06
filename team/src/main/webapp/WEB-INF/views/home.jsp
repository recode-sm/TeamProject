<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html >
<head>
<title>BS RESERVATION</title>
   <link href="<%=request.getContextPath() %>/resources/img/logo_1m.png" rel="shortcut icon" type="image/x-icon">
<meta charset="UTF-8">
<title>HM FUTSAL PARK</title>
	<!-- 공통css -->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/common.css">
	<!-- //공통css -->

	<!-- 공통js -->
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/libs/jquery.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/common/common.js"></script>
	<!-- //공통js -->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/main.css">
	<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-116234591-1"></script>

<!-- Global site tag (gtag.js) - Google Analytics -->
</head>
<script src="/js/libs/jquery.bxslider.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('.bg_wrap .menu').addClass('on');
	});
</script>
<body>
<div id="wrapper">

	<!-- Header -->
	<section id="header">
		<div class="header">
			<nav>
				<div class="util">
					<ul>
						<li class="login">
						<c:if test="${ empty sessionScope.id }">
							<a href="<%=request.getContextPath() %>/member/login" style="font-size: 20px; font-weight : 900;">LOGIN</a>
						</c:if> 
						<c:if test="${!empty sessionScope.id}">
							<a href="#" style="font-size: 20px; font-weight : 900;" >${id}님</a>
							<a href="<%=request.getContextPath() %>/member/logout" style="font-size: 20px; font-weight : 900;">LOGOUT</a>
							<a href="<%=request.getContextPath() %>/member/info" style="font-size: 20px; font-weight : 900;">MEMBER INFO</a>
						</c:if>
						</li>
						
					</ul>
				</div>
			</nav>
		</div>
	</section>
	<!-- //Header -->
	<section id="container">
		<!-- Contents -->
		<div class="content">
			<div class="bg_wrap">

				<div class="menu">
					<ul>
						<li><a href="<%=request.getContextPath() %>/locate/locate"><span>BRANCH</span><span class="ov">지점</span></a></li>
						<li><a href="<%=request.getContextPath() %>/reservation/select"><span>RESERVATION</span><span class="ov">대관</span></a></li>
							<li><a href="<%=request.getContextPath() %>/reservation/Check_C"><span>CONFIRM</span><span class="ov">예약확인</span></a></li>
						<li><a href="<%=request.getContextPath() %>/notice/list"><span>COMMUNITY</span><span class="ov">커뮤니티</span></a></li>
						<li><a href="<%=request.getContextPath() %>/qna/list"><span>Q&A</span><span class="ov">문의하기</span></a></li>
<!-- 						<li><a href="/league/league.asp"><span>H-LEAGUE</span><span class="ov">H-리그</span></a></li> -->
<%-- 						<li><a href="<%=request.getContextPath() %>/notice/notice"><span>NOTICE</span><span class="ov">공지사항</span></a></li> --%>
<!-- 						<li><a href="/about/company.asp"><span>HNS</span><span class="ov">에이치엔에스</span></a></li> -->
					</ul>
				</div>

				<!-- 영상 배경 -->
				<div class="mv">
					
						<video id="video01" class="pblock" autoplay="" playsinline="" muted="" loop="" title=""> 
							<source src="<%=request.getContextPath() %>/resources/files/banner/main.mp4" type="video/mp4"> 
						</video>
					
						<video id="video02" class="mblock" autoplay="" playsinline="" muted="" loop="" title=""> 
							<source src="<%=request.getContextPath() %>/resources/files/banner/202205075319212.mp4" type="video/mp4"> 
						</video>
					
				</div>
				<!-- //영상 배경 -->
			</div>
		</div>
	</section>
<script type="text/javascript">
$(function(){
	 cookiedata = document.cookie;
	 if (cookiedata.indexOf("popLayer1=done") < 0) { 
	 	
		 $("#noticePop1").show();
		$('.layer_dim').show();
		$('html').addClass('hidden');
	 }
});

$(".layer_dim").on("click",function(e){
		$('html').removeClass('hidden');
		$('.layer_dim').hide();
	  document.getElementById('noticePop1').style.visibility = "hidden";
});

 function setCookie(name, value, expiredays) {
	  var todayDate = new Date();
	  todayDate.setDate(todayDate.getDate() + expiredays);
	  document.cookie = name + "=" + escape(value) + "; path=/; expires=" + todayDate.toGMTString() + ";"
 }

</script>

		
		<!-- //Contents -->

	<!-- Footer -->
		<jsp:include page="./include/footer.jsp"></jsp:include>
	<!-- //Footer -->
</div>

<iframe name="HiddenFrame" style="display:none;"></iframe>
</body>
</html>