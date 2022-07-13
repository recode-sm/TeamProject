<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	
<script language="Javascript">
	$(document).ready(function() {
		$('.loca_view .btn_wrap a').on('click', function() {
			$(this).closest('.loca_view').toggleClass('on');
			event.preventDefault(event);
		});
		$('.loca_list .btn_closed').on('click', function() {
			$(this).closest('.loca_view').removeClass('on');
			event.preventDefault(event);
		});
	});
</script>
	<section id="container">
		<!-- Contents -->
		<div class="content">
			
<div class="sub_top">
	<h2>지점현황</h2>
	
		<video id="video01" autoplay="" playsinline="" muted="" loop="" height="460" width="100%" title="video element"> 
			<source src="/files/banner/6202205075528114.mp4" type="video/mp4"> 
		</video>
	
</div>

			<div class="locate_wrap">
				
				<!-- 전체지점 보기 -->
				<div class="loca_view">
					<div class="btn_wrap">
						<a href="#" class="open"><span>전체지점보기</span></a>
						<a href="#" class="closed"><span>전체지점닫기</span></a>

					</div>
						
					<div class="loca_list">
						<a href="#" class="btn_closed">전체지점닫기</a>
							<ul>
								<li><a href="${pageContext.request.contextPath}/locate/field">구장등록</a>							
							</ul>
						</div>
				</div>
				<!-- //전체지점 보기 -->

				<div class="list_wrap">
					
					<c:forEach var="fieldDTO" items="${fieldList }">
						<div class="cont">
								<div class="info">
									<span class="thumb">
										<img src="${pageContext.request.contextPath}/resources/files/images/${fieldDTO.f_img}" alt="" />
<!-- 										<div class="ov"> -->
<!-- 											<ul> -->
<!-- 											<li>#인조잔디</li><li>#국제규격</li><li>#탈의실</li><li>#주차장(무료)</li><li>#풋살화 대여</li><li>#Ex) A구장 6:6/ 7:7 구장  /  B구장 5:5 / 6:6 구장 /  C구장 3:3구장</li> -->
<!-- 											</ul> -->
<!-- 										</div> -->
									</span>
									<div class="t_wrap">
										<p class="tit">${fieldDTO.f_name }</p>
										<p class="t01">${fieldDTO.f_address }</p>
										<p class="t02">${fieldDTO.price }원</p>
										<div class="btn_wrap">
											<a href="${pageContext.request.contextPath}/reservation/reservation?select02=${fieldDTO.district }&select03=${fieldDTO.f_num }" class="btn_rese"><span>예약하기</span></a>
										</div>
									</div>
								</div>
							</div>				
					</c:forEach>										

				</div>
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