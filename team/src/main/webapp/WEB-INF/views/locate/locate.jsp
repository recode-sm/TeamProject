<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
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
								<li><a href="#">서울, 경기 지역</a>
									<ul>
										<li><a href="locate_info.asp?code=HM0048">더피치 인하점</a></li>
										<li><a href="locate_info.asp?code=HM0001">동대문점</a></li>
										<li><a href="locate_info.asp?code=HM0003">서수원점</a></li>
										<li><a href="locate_info.asp?code=HM0034">시흥점</a></li>
										<li><a href="locate_info.asp?code=HM0002">안산 고잔점</a></li>
										<li><a href="locate_info.asp?code=HM0045">인천 청라점</a></li>
										<li><a href="locate_info.asp?code=HM0004">일산점</a></li>
									</ul></li>
								<li><a href="#">대전, 충청 지역</a>
								<ul>
										<li><a href="locate_info.asp?code=HM0049">더피치 천안신방점</a></li>
									</ul></li>
								<li><a href="#">부산, 경상 지역</a>
								<ul>
										<li><a href="locate_info.asp?code=HM0031">부산 북구점</a></li>
										<li><a href="locate_info.asp?code=HM0008">울산 남구점</a></li>
										<li><a href="locate_info.asp?code=HM0024">울산 북구점</a></li>
										<li><a href="locate_info.asp?code=HM0009">창원점</a></li>
									</ul></li>
								<li><a href="#">광주, 전라 지역</a>
								<ul>
										<li><a href="locate_info.asp?code=HM0010">전주 완산점</a></li>
									</ul></li>
								<li><a href="#">제주 지역</a>
								<ul>
										<li><a href="locate_info.asp?code=HM0033">가천대학교 운동장</a></li>
										<li><a href="locate_info.asp?code=HM0028">GLOBAL
												ARENA (Japan)</a></li>
										<li><a href="locate_info.asp?code=HM0032">Seogwipo,
												JEJU</a></li>
									</ul></li>
							</ul>
						</div>
				</div>
				<!-- //전체지점 보기 -->

				<div class="list_wrap">
					

							<div class="cont">
								<div class="info">
									<span class="thumb">
										<img src="/files/branch/branch_48_202202155136119.gif" alt="" />
										<div class="ov">
											<ul>
											<li>#인조잔디</li><li>#국제규격</li><li>#주차장(무료)</li><li>#음료수 판매</li><li>#조끼 대여</li><li>#풋살화 대여</li>
											</ul>
										</div>
									</span>
									<div class="t_wrap">
										<p class="tit">더피치 인하점</p>
										<p class="t01">인천광역시 미추홀구 소성로 6 22201</p>
										<p class="t02"><a href="tel:010-4045-8124" class="tel">010-4045-8124</a> (14:00 ~ 18:00)</p>
										<div class="btn_wrap">
											<a href="/rese/rese_form.asp?branch_code=HM0048" class="btn_rese"><span>예약하기</span></a>
											<a href="/locate/locate_info.asp?code=HM0048" class="btn_info"><span>지점소개</span></a>
										</div>
									</div>
								</div>
							</div>
					

							<div class="cont">
								<div class="info">
									<span class="thumb">
										<img src="/files/branch/branch_thumb_1.jpg" alt="" />
										<div class="ov">
											<ul>
											<li>#인조잔디</li><li>#국제규격</li><li>#탈의실</li><li>#주차장(무료)</li><li>#풋살화 대여</li><li>#Ex) A구장 6:6/ 7:7 구장  /  B구장 5:5 / 6:6 구장 /  C구장 3:3구장</li>
											</ul>
										</div>
									</span>
									<div class="t_wrap">
										<p class="tit">동대문점</p>
										<p class="t01">동대문구 천호대로 133 홈플러스 동대문점  옥상층(7F) HM풋살파크</p>
										<p class="t02"><a href="tel:010-6252-1007" class="tel">010-6252-1007</a> / <a href="tel:010-9505-6646" class="tel">010-9505-6646</a></p>
										<div class="btn_wrap">
											<a href="/rese/rese_form.asp?branch_code=HM0001" class="btn_rese"><span>예약하기</span></a>
											<a href="/locate/locate_info.asp?code=HM0001" class="btn_info"><span>지점소개</span></a>
										</div>
									</div>
								</div>
							</div>
					

							<div class="cont">
								<div class="info">
									<span class="thumb">
										<img src="/files/branch/branch_thumb_3.jpg" alt="" />
										<div class="ov">
											<ul>
											<li>#인조잔디</li><li>#국제규격</li><li>#실내구장</li><li>#주차장(무료)</li>
											</ul>
										</div>
									</span>
									<div class="t_wrap">
										<p class="tit">서수원점</p>
										<p class="t01">수원시 권선구 금곡로 236 홈플러스 서수원점 옥상층 HM풋살파크</p>
										<p class="t02"><a href="tel:010-3770-7907" class="tel">010-3770-7907</a> / <a href="tel:031-223-5554" class="tel">031-223-5554</a></p>
										<div class="btn_wrap">
											<a href="/rese/rese_form.asp?branch_code=HM0003" class="btn_rese"><span>예약하기</span></a>
											<a href="/locate/locate_info.asp?code=HM0003" class="btn_info"><span>지점소개</span></a>
										</div>
									</div>
								</div>
							</div>
					

							<div class="cont">
								<div class="info">
									<span class="thumb">
										<img src="/files/branch/branch_34_20210517363844.jpg" alt="" />
										<div class="ov">
											<ul>
											<li>#인조잔디</li><li>#국제규격</li><li>#실내구장</li><li>#탈의실</li><li>#주차장(무료)</li>
											</ul>
										</div>
									</span>
									<div class="t_wrap">
										<p class="tit">시흥점</p>
										<p class="t01">시흥시 정왕동 1799-4</p>
										<p class="t02"><a href="tel:070-4940-8881" class="tel">070-4940-8881</a> / <a href="tel:070-4940-8881" class="tel">070-4940-8881</a></p>
										<div class="btn_wrap">
											<a href="/rese/rese_form.asp?branch_code=HM0034" class="btn_rese"><span>예약하기</span></a>
											<a href="/locate/locate_info.asp?code=HM0034" class="btn_info"><span>지점소개</span></a>
										</div>
									</div>
								</div>
							</div>
					

							<div class="cont">
								<div class="info">
									<span class="thumb">
										<img src="/files/branch/branch_thumb_2.jpg" alt="" />
										<div class="ov">
											<ul>
											<li>#인조잔디</li><li>#국제규격</li><li>#실내구장</li><li>#주차장(무료)</li><li>#음료수 판매</li>
											</ul>
										</div>
									</span>
									<div class="t_wrap">
										<p class="tit">안산 고잔점</p>
										<p class="t01">안산시 단원구 광덕대로 175 홈플러스 옥상층 HM풋살파크</p>
										<p class="t02"><a href="tel:010-6665-2879" class="tel">010-6665-2879</a> / <a href="tel:010-3316-9584" class="tel">010-3316-9584</a> (10:00 ~ 22:00)</p>
										<div class="btn_wrap">
											<a href="/rese/rese_form.asp?branch_code=HM0002" class="btn_rese"><span>예약하기</span></a>
											<a href="/locate/locate_info.asp?code=HM0002" class="btn_info"><span>지점소개</span></a>
										</div>
									</div>
								</div>
							</div>
					

							<div class="cont">
								<div class="info">
									<span class="thumb">
										<img src="/files/branch/branch_45_202007225544656.jpg" alt="" />
										<div class="ov">
											<ul>
											<li>#인조잔디</li><li>#국제규격</li><li>#탈의실</li><li>#주차장(무료)</li><li>#음료수 판매</li>
											</ul>
										</div>
									</span>
									<div class="t_wrap">
										<p class="tit">인천 청라점</p>
										<p class="t01">서구 중봉대로 587 홈플러스 청라점 옥상층 HM풋살파크</p>
										<p class="t02"><a href="tel:010-6665-2879" class="tel">010-6665-2879</a> / <a href="tel:010-8726-1949" class="tel">010-8726-1949</a></p>
										<div class="btn_wrap">
											<a href="/rese/rese_form.asp?branch_code=HM0045" class="btn_rese"><span>예약하기</span></a>
											<a href="/locate/locate_info.asp?code=HM0045" class="btn_info"><span>지점소개</span></a>
										</div>
									</div>
								</div>
							</div>
					

							<div class="cont">
								<div class="info">
									<span class="thumb">
										<img src="/files/branch/branch_thumb_4.jpg" alt="" />
										<div class="ov">
											<ul>
											<li>#인조잔디</li><li>#국제규격</li><li>#탈의실</li><li>#주차장(무료)</li><li>#조끼 대여</li>
											</ul>
										</div>
									</span>
									<div class="t_wrap">
										<p class="tit">일산점</p>
										<p class="t01">일산동구 중앙로1275번길 64 홈플러스 일산점 옥상층 HM풋살파크</p>
										<p class="t02"><a href="tel:010-6352-3692" class="tel">010-6352-3692</a> (10:00 ~ 24:00)</p>
										<div class="btn_wrap">
											<a href="/rese/rese_form.asp?branch_code=HM0004" class="btn_rese"><span>예약하기</span></a>
											<a href="/locate/locate_info.asp?code=HM0004" class="btn_info"><span>지점소개</span></a>
										</div>
									</div>
								</div>
							</div>
					

							<div class="cont">
								<div class="info">
									<span class="thumb">
										<img src="/files/branch/branch_49_202205273435227.jpg" alt="" />
										<div class="ov">
											<ul>
											<li>#인조잔디</li><li>#국제규격</li><li>#주차장(무료)</li><li>#조끼 대여</li><li>#풋살화 대여</li>
											</ul>
										</div>
									</span>
									<div class="t_wrap">
										<p class="tit">더피치 천안신방점</p>
										<p class="t01">천안시 동남구 신촌1길 23 </p>
										<p class="t02"><a href="tel:070-7490-7959" class="tel">070-7490-7959</a></p>
										<div class="btn_wrap">
											<a href="/rese/rese_form.asp?branch_code=HM0049" class="btn_rese"><span>예약하기</span></a>
											<a href="/locate/locate_info.asp?code=HM0049" class="btn_info"><span>지점소개</span></a>
										</div>
									</div>
								</div>
							</div>
					

							<div class="cont">
								<div class="info">
									<span class="thumb">
										<img src="/files/branch/branch_31_20190326374927.jpg" alt="" />
										<div class="ov">
											<ul>
											<li>#인조잔디</li><li>#국제규격</li><li>#탈의실</li><li>#주차장(무료)</li><li>#음료수 판매</li>
											</ul>
										</div>
									</span>
									<div class="t_wrap">
										<p class="tit">부산 북구점</p>
										<p class="t01">북구 금곡대로 469 농협하나로클럽 5층(옥상층) HM풋살파크 부산북구점</p>
										<p class="t02"><a href="tel:010-5617-6205" class="tel">010-5617-6205</a> / <a href="tel:010-4192-4771" class="tel">010-4192-4771</a></p>
										<div class="btn_wrap">
											<a href="/rese/rese_form.asp?branch_code=HM0031" class="btn_rese"><span>예약하기</span></a>
											<a href="/locate/locate_info.asp?code=HM0031" class="btn_info"><span>지점소개</span></a>
										</div>
									</div>
								</div>
							</div>
					

							<div class="cont">
								<div class="info">
									<span class="thumb">
										<img src="/files/branch/branch_thumb_8.jpg" alt="" />
										<div class="ov">
											<ul>
											<li>#인조잔디</li><li>#국제규격</li><li>#주차장(무료)</li><li>#조끼 대여</li>
											</ul>
										</div>
									</span>
									<div class="t_wrap">
										<p class="tit">울산 남구점</p>
										<p class="t01">남구 수암로 148 홈플러스 울산남구점 옥상층(5층) HM풋살파크</p>
										<p class="t02"><a href="tel:052-227-1380" class="tel">052-227-1380</a> / <a href="tel:010-2477-1380" class="tel">010-2477-1380</a> (10:00 ~ 23:00)</p>
										<div class="btn_wrap">
											<a href="/rese/rese_form.asp?branch_code=HM0008" class="btn_rese"><span>예약하기</span></a>
											<a href="/locate/locate_info.asp?code=HM0008" class="btn_info"><span>지점소개</span></a>
										</div>
									</div>
								</div>
							</div>
					

							<div class="cont">
								<div class="info">
									<span class="thumb">
										<img src="/files/branch/branch_24_201903263821845.JPG" alt="" />
										<div class="ov">
											<ul>
											<li>#인조잔디</li><li>#국제규격</li><li>#탈의실</li><li>#주차장(무료)</li>
											</ul>
										</div>
									</span>
									<div class="t_wrap">
										<p class="tit">울산 북구점</p>
										<p class="t01">북구 신답로 26 홈플러스 울산북구점 옥상층 HM풋살파크</p>
										<p class="t02"><a href="tel:010-8554-5077" class="tel">010-8554-5077</a> (10:00 ~ 24:00)</p>
										<div class="btn_wrap">
											<a href="/rese/rese_form.asp?branch_code=HM0024" class="btn_rese"><span>예약하기</span></a>
											<a href="/locate/locate_info.asp?code=HM0024" class="btn_info"><span>지점소개</span></a>
										</div>
									</div>
								</div>
							</div>
					

							<div class="cont">
								<div class="info">
									<span class="thumb">
										<img src="/files/branch/branch_thumb_9.png" alt="" />
										<div class="ov">
											<ul>
											<li>#인조잔디</li><li>#국제규격</li><li>#탈의실</li><li>#주차장(무료)</li><li>#음료수 판매</li>
											</ul>
										</div>
									</span>
									<div class="t_wrap">
										<p class="tit">창원점</p>
										<p class="t01">창원시 의창구 창원대로 415 홈플러스 옥상층 HM풋살파크</p>
										<p class="t02"><a href="tel:055-267-0800" class="tel">055-267-0800</a> / <a href="tel:010-9423-0885" class="tel">010-9423-0885</a> (10:00 ~ 24:00)</p>
										<div class="btn_wrap">
											<a href="/rese/rese_form.asp?branch_code=HM0009" class="btn_rese"><span>예약하기</span></a>
											<a href="/locate/locate_info.asp?code=HM0009" class="btn_info"><span>지점소개</span></a>
										</div>
									</div>
								</div>
							</div>
					

							<div class="cont">
								<div class="info">
									<span class="thumb">
										<img src="/files/branch/branch_thumb_10.png" alt="" />
										<div class="ov">
											<ul>
											<li>#인조잔디</li><li>#국제규격</li><li>#탈의실</li><li>#주차장(무료)</li><li>#음료수 판매</li><li>#풋살화 대여</li>
											</ul>
										</div>
									</span>
									<div class="t_wrap">
										<p class="tit">전주 완산점</p>
										<p class="t01">전주시 완산구 기린대로 170 홈플러스 전주완산점 옥상층 HM풋살파크</p>
										<p class="t02"><a href="tel:010-9486-5549" class="tel">010-9486-5549</a> (10:00 ~ 24:00)</p>
										<div class="btn_wrap">
											<a href="/rese/rese_form.asp?branch_code=HM0010" class="btn_rese"><span>예약하기</span></a>
											<a href="/locate/locate_info.asp?code=HM0010" class="btn_info"><span>지점소개</span></a>
										</div>
									</div>
								</div>
							</div>
					

							<div class="cont">
								<div class="info">
									<span class="thumb">
										<img src="/files/branch/branch_33_201911066123094.jpg" alt="" />
										<div class="ov">
											<ul>
											
											</ul>
										</div>
									</span>
									<div class="t_wrap">
										<p class="tit">가천대학교 운동장</p>
										<p class="t01">인천광역시 연수동  가천대학교 운동장</p>
										<p class="t02"></p>
										<div class="btn_wrap">
											<a href="/rese/rese_form.asp?branch_code=HM0033" class="btn_rese"><span>예약하기</span></a>
											<a href="/locate/locate_info.asp?code=HM0033" class="btn_info"><span>지점소개</span></a>
										</div>
									</div>
								</div>
							</div>
					

							<div class="cont">
								<div class="info">
									<span class="thumb">
										<img src="/files/branch/branch_28_201812273976811.jpg" alt="" />
										<div class="ov">
											<ul>
											
											</ul>
										</div>
									</span>
									<div class="t_wrap">
										<p class="tit">GLOBAL ARENA (Japan)</p>
										<p class="t01">46-1 Yoshidome, Munakata, Fukuoka Prefecture 811-4153, Japan</p>
										<p class="t02"><a href="tel:0940-33-8400" class="tel">0940-33-8400</a></p>
										<div class="btn_wrap">
											<a href="/rese/rese_form.asp?branch_code=HM0028" class="btn_rese"><span>예약하기</span></a>
											<a href="/locate/locate_info.asp?code=HM0028" class="btn_info"><span>지점소개</span></a>
										</div>
									</div>
								</div>
							</div>
					

							<div class="cont">
								<div class="info">
									<span class="thumb">
										<img src="/files/branch/branch_32_201908025659701.JPG" alt="" />
										<div class="ov">
											<ul>
											
											</ul>
										</div>
									</span>
									<div class="t_wrap">
										<p class="tit">Seogwipo, JEJU</p>
										<p class="t01">95, Jungsanganseo-ro, Seogwipo-si, Jeju Island, South Korea</p>
										<p class="t02"><a href="tel:010-5068-8376" class="tel">010-5068-8376</a></p>
										<div class="btn_wrap">
											<a href="/rese/rese_form.asp?branch_code=HM0032" class="btn_rese"><span>예약하기</span></a>
											<a href="/locate/locate_info.asp?code=HM0032" class="btn_info"><span>지점소개</span></a>
										</div>
									</div>
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