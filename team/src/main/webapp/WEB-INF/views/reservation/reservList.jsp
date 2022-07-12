<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	<title>HM FUTSAL PARK</title>
	<meta name="keywords" content="HM FUTSAL PARK">
	<meta name="description" content="프리미엄 풋살장 HM풋살파크, 전국 11개 지점, 대관 예약, 전국 규모 컵 대회 및 리그 대회 주최">
	<meta property="og:type" content="website">
	<meta property="og:image" content="https://hmfutsalpark.com/images/common/link_profile.png">
	<meta property="og:title" content="HM FUTSAL PARK">
	<meta property="og:description" content="프리미엄 풋살장 HM풋살파크">
	<meta property="og:url" content="https://hmfutsalpark.com">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!-- 공통css -->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/common.css">
	<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700" rel="stylesheet">

	<link rel="apple-touch-icon" sizes="57x57" href="/favicon/apple-icon-57x57.png">
	<link rel="apple-touch-icon"  sizes="60x60" href="/favicon/apple-icon-60x60.png">
	<link rel="apple-touch-icon" sizes="72x72" href="/favicon/apple-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="76x76" href="/favicon/apple-icon-76x76.png">
	<link rel="apple-touch-icon" sizes="114x114" href="/favicon/apple-icon-114x114.png">
	<link rel="apple-touch-icon" sizes="120x120" href="/favicon/apple-icon-120x120.png">
	<link rel="apple-touch-icon" sizes="144x144" href="/favicon/apple-icon-144x144.png">
	<link rel="apple-touch-icon" sizes="152x152" href="/favicon/apple-icon-152x152.png">
	<link rel="apple-touch-icon" sizes="180x180" href="/favicon/apple-icon-180x180.png">
	<link rel="icon" type="image/png" sizes="192x192"  href="/favicon/android-icon-192x192.png">
	<link rel="icon" type="image/png" sizes="32x32" href="/favicon/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="96x96" href="/favicon/favicon-96x96.png">
	<link rel="icon" type="image/png" sizes="16x16" href="/favicon/favicon-16x16.png">
	<link rel="manifest" href="/favicon/manifest.json">
	<meta name="msapplication-TileColor" content="#2c3c57">
	<meta name="msapplication-TileImage" content="/favicon/ms-icon-144x144.png">
	<meta name="theme-color" content="#2c3c57">
	<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
	<!--[if lt IE 9]><script type="text/javascript" src="/js/libs/html5.js"></script><![endif]-->
	<!--[if lt IE 9]><script type="text/javascript" src="/js/libs/respond.min.js"></script><![endif]-->
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
	
	
	
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>

	
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
				<h2>예약확인</h2>
				
					<video id="video01" autoplay="" playsinline="" muted="" loop="" height="460" width="100%" title="video element"> 
						<source src="<%=request.getContextPath() %>/resources/files/banner/reservation.mp4" type="video/mp4"> 
<!-- 						574 134 -->
					</video>
				
			</div>
			<div class="tab_wrap">
				<ul>
				
					<li><a href="<%=request.getContextPath() %>/reservation/select">대관예약</a></li>
					
					<li class="on"><a href="<%=request.getContextPath() %>/reservation/Check_C">예약확인</a></li>
						
				</ul>
			</div>

						<div class="int_wrap">
							<div class="table_wrap">
								<table>
								<colgroup>
									<col style="width:25%" />
									<col style="" />
								</colgroup>
								<tbody>
								<tr><th>아이디</th><th>구장명</th><th>예약날짜</th><th>예약시간</th><th>결제가격</th><th>결제정보</th><th></th></tr>
								<c:forEach var="reservList" items="${reservList}">
									<tr>
										
										<td id = "memberName">${reservList.id }</td>
										<td id = "fieldName">${reservList.f_name }</td>
										<td id = "date">${reservList.r_date }</td>
										<td id = "time">${reservList.time }</td>
										<td id = "price">${reservList.total_price }원</td>
											<c:if test="${reservList.status eq null }">
											<td id = "status">결제중</td>
											<td><input type="button" value="결제/예약취소" onclick="location.href='<%=request.getContextPath() %>/reservation/reservResult?r_num='" + ${reservList.r_num }></td>
											</c:if>
											<c:if test="${reservList.status eq 'paid' }">
											<td id = "status">결제완료</td>
											<td><input type="button" value="결제취소"></td>
											</c:if>
											<c:if test="${reservList.status eq 'cancel' }">
											<td id = "status">결제취소</td>
											<td></td>
											</c:if>
									</tr>
								</c:forEach>
								</tbody>
								</table>
							</div>
						</div>
					</div>
			</section>
			
		
			<!-- //Contents -->

	<!-- Footer -->
		<jsp:include page="../include/footer.jsp"></jsp:include>
	<!-- //Footer -->
</div>

<iframe name="HiddenFrame" style="display:none;"></iframe>
</body>
</html>