<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
	<link rel="apple-touch-icon" sizes="60x60" href="/favicon/apple-icon-60x60.png">
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
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-116234591-1');
	  
	  function readURL(input) {
		  if (input.files && input.files[0]) {
		    var reader = new FileReader();
		    reader.onload = function(e) {
		      document.getElementById('preview').src = e.target.result;
		    };
		    reader.readAsDataURL(input.files[0]);
		  } else {
		    document.getElementById('preview').src = "";
		  }
		}
	</script>
	<style type="text/css">
	*{
	border: 1px solid black;
	}
	</style>
<!-- Global site tag (gtag.js) - Google Analytics -->

	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/content.css?v=201811160138">
</head> 


<body>

<div id="wrapper">

	<!-- Skip Navigation -->
	<nav class="skip_nav">
		<a href="#container">Skip to content</a>
	</nav>
	<!-- //Skip Navigation -->
	
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
	<h2>지점등록</h2>
	
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
							<li><a href="#">서울, 경기 지역</a><ul><li><a href="locate_info.asp?code=HM0048">더피치 인하점</a></li><li><a href="locate_info.asp?code=HM0001">동대문점</a></li><li><a href="locate_info.asp?code=HM0003">서수원점</a></li><li><a href="locate_info.asp?code=HM0034">시흥점</a></li><li><a href="locate_info.asp?code=HM0002">안산 고잔점</a></li><li><a href="locate_info.asp?code=HM0045">인천 청라점</a></li><li><a href="locate_info.asp?code=HM0004">일산점</a></li></ul></li><li><a href="#">대전, 충청 지역</a><ul><li><a href="locate_info.asp?code=HM0049">더피치 천안신방점</a></li></ul></li><li><a href="#">부산, 경상 지역</a><ul><li><a href="locate_info.asp?code=HM0031">부산 북구점</a></li><li><a href="locate_info.asp?code=HM0008">울산 남구점</a></li><li><a href="locate_info.asp?code=HM0024">울산 북구점</a></li><li><a href="locate_info.asp?code=HM0009">창원점</a></li></ul></li><li><a href="#">광주, 전라 지역</a><ul><li><a href="locate_info.asp?code=HM0010">전주 완산점</a></li></ul></li><li><a href="#">제주 지역</a><ul><li><a href="locate_info.asp?code=HM0033">가천대학교 운동장</a></li><li><a href="locate_info.asp?code=HM0028">GLOBAL ARENA (Japan)</a></li><li><a href="locate_info.asp?code=HM0032">Seogwipo, JEJU</a></li></ul></li>
						</ul>
					</div>
				</div>
				<!-- //전체지점 보기 -->

				<div class="list_wrap">
					

							<div class="cont">
								<div class="info">
									<span >
										<img  id="preview" style="width:430px; height:270px;"><br>
<!-- 										<div class="ov"> -->
<!-- 											<ul> -->
<!-- 											<li>#인조잔디</li><li>#국제규격</li><li>#주차장(무료)</li><li>#음료수 판매</li><li>#조끼 대여</li><li>#풋살화 대여</li> -->
<!-- 											</ul> -->
<!-- 										</div> -->
										<label for="input-file">
										  구장사진 등록
										</label>	
										
										<input type="file" id="input-file" onchange="readURL(this);" style="display: none;"> 										
									</span>
										<table style="width: 500px;" class="t_wrap" border="1">
											<tr><th>구장정보</th><th>내용</th></tr>
											<tr><td>구장정보</td><td><input type="text"></td></tr>
											<tr><td>구장정보</td><td><input type="text"></td></tr>
											<tr><td>구장정보</td><td><input type="text"></td></tr>
											<tr><td>구장정보</td><td><input type="text"></td></tr>
											<tr><td>구장정보</td><td><input type="text"></td></tr>
											<tr><td>구장정보</td><td><input type="text"></td></tr>
											<tr><td>구장정보</td><td><input type="text"></td></tr>
											<tr><td colspan="2" style="margin: 0px auto;"><div style="margin: 0px auto; display: inline-block;"><input type="submit" value="등록"></div></td></tr>
	
										</table>
<!-- 									<div class="t_wrap"> -->
<!-- 										<p class="tit">더피치 인하점</p> -->
<!-- 										<p class="t01">인천광역시 미추홀구 소성로 6 22201</p> -->
<!-- 										<p class="t02"><a href="tel:010-4045-8124" class="tel">010-4045-8124</a> (14:00 ~ 18:00)</p> -->
<!-- 										<div class="btn_wrap"> -->
<!-- 											<a href="/rese/rese_form.asp?branch_code=HM0048" class="btn_rese"><span>예약하기</span></a> -->
<!-- 											<a href="/locate/locate_info.asp?code=HM0048" class="btn_info"><span>지점소개</span></a> -->
<!-- 										</div> -->
<!-- 									</div> -->
								</div>
							</div>
					

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