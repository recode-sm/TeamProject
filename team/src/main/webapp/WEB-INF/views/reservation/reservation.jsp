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
	</script>
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
	<section id="header">
		<div class="header">
			<h1><a href="<%=request.getContextPath() %>"><span class="hide">HM FUTSAL PARK</span></a></h1>
			<button type="button" class="btn_nav"><span class="hide">Nav button</span></button>
			<nav>
				<div class="nav_wrap">
					<ul>
						<li>
							<!--<a href="https://www.aia.co.kr/ko/index.html" class="aia" target="_blank"><span class="hide">AIA Vitaliity</span></a>-->
							<a href="https://www.facebook.com/HMfutsalpark/" class="face" target="_blank"><span class="hide">facebook</span> </a>
							<a href="https://www.instagram.com/hmfutsalpark/" class="insta" target="_blank"><span class="hide">instagram</span></a>
						</li>
						<li><a href="/locate/locate.asp">지점</a></li>
						<li><a href="<%=request.getContextPath() %>/reservation/reservation">대관</a></li>
						<li><a href="/comm/match/match_apply.asp">매치/용병</a></li>
						<li><a href="/hcup/eng/hcup.asp" class="f_hvn"><!--<a href="# "onClick="alert('준비중입니다.')" class="f_hvn">-->H-CUP</a></li>
						<li><a href="/league/league.asp" class="f_hvn">H-LEAGUE</a></li>
						<li><a href="<%=request.getContextPath() %>/notice/notice">고객센터</a></li>
						<li><a href="/about/company.asp" class="f_hvn">HNS</a></li>
					</ul>
				</div>
				<div class="util">
					<ul>
						<li class="face"><a href="https://www.facebook.com/HMfutsalpark/" target="_blank"><span class="hide">facebook</span></a></li>
						<li class="insta"><a href="https://www.instagram.com/hmfutsalpark/" target="_blank"><span class="hide">instagram</span></a></li>

						
						<li class="login"><a href="member/loginForm">로그인</a></li>
						
					</ul>
				</div>
			</nav>
		</div>
	</section>
	<!-- //Header -->
<FORM name="form" method="post">
<input type="hidden" name="branch_code" value="HM0009">
<input type="hidden" name="reg_date" value="2022-06-16">
<input type="hidden" name="total_price" value="0">
<script language="Javascript">
	$(document).ready(function() {
		// 모바일 slide up / down 버튼
		$('.btn_oc').on('click', function() {
			$(this).next().toggleClass("on");
		});

	});
</script>


			
	<section id="container">
		<!-- Contents -->
		<div class="content">
			<div class="sub_top">
				<h2>대관</h2>
				
					<video id="video01" autoplay="" playsinline="" muted="" loop="" height="460" width="100%" title="video element"> 
						<source src="<%=request.getContextPath() %>/resources/files/banner/920220513468113.mp4" type="video/mp4"> 
					</video>
				
			</div>

			<div class="tab_wrap">
				<ul>
				
					<li class="on"><a href="/rese/rese.asp">대관예약</a></li>
					
						<li><a href="/rese/rese_pwd.asp">예약확인</a></li>
						
				</ul>
			</div>

			<div class="rese_wrap cal">
				<h3 class="h_tit">대관예약</h3>

				<div class="fl_wrap">
					<div class="fl_left">
						<div class="thumb">
							<span class="img"><img src="/files/branch/branch_thumb_9.png" alt="" /></span>
							<div class="tag">
								
								<span>#인조잔디</span>
								
								<span>#국제규격</span>
								
								<span>#탈의실</span>
								
								<span>#주차장(무료)</span>
								
								<span>#음료수 판매</span>
								
								<span>#조끼 대여</span>
								
								<span>#풋살화 대여</span>
								 
							</div>
							<p class="name">창원점</p>
						</div>

						<div class="info">
							<p class="tit">유의사항</p>
							<ul>
								<li><p><font color="#ff0000"><span style="font-size: 11pt;"><b>★홈플러스 무료주차 4시간 가능, 차량 등록은 구장에 비치되어 있는 테블릿PC에 직접 입력하셔야 됩니다.(미입력으로 인한 주차비는 구장에서 책임지지 않음)★</b></span></font></p><p><b style="color: rgb(58, 50, 195); font-size: 12pt;">☆코로나19 여파로 대관에 신중을 기해주시기 바랍니다.(환불 규정에 따라 환불, 연기 불가)☆</b></p><p><span style="font-size: 11pt; color: rgb(255, 0, 0);"><b>1. 예약신청 후 2시간 내에 입금되지 않을 시 자동취소 됩니다.</b></span></p><p><span style="font-size: 11pt;">* 예약자와 입금자 이름이 다를 경우 반드시 전화주세요.</span></p><p><span style="font-size: 11pt;">- 입금 계좌 : 경남은행 010-9423-0885 [예금주: 임세혁(하이파이브)]</span></p><p><span style="font-size: 11pt;">2. 문의 전화 : 055-267-0800 / 010-9423-0885 (통화가능시간 : 14:00 ~ 22:00)</span></p><p><span style="font-size: 11pt; color: rgb(255, 0, 0);"><b>3. 전 구역 금연지역입니다.</b></span></p><p><span style="font-size: 11pt; color: rgb(255, 0, 0);"><b>(흡연은 흡연실을 이용해 주세요, 경기장내 흡연 적발 시 대관 취소 및 환불 불가)</b></span></p><p><span style="font-size: 11pt;">4. 경기장 내 음료 및 음식물 반입 금지(코로나19로 인해 물, 음료 이외 취식 불가)</span></p><p><span style="font-size: 11pt;">5. 주차는 경기장 앞 7층 주차장을 이용하시기 바랍니다.(4시간 무료 주차 직접 등록)</span></p><p><span style="font-size: 11pt;">6. 본 풋살파크는 CCTV 촬영되고 있습니다.</span></p><p><span style="font-size: 11pt;">7. 개인장비는 직접 지참하시기 바랍니다.(풋살화 등)</span></p><p><span style="font-size: 11pt;">8. 풋살화 미착용시 구장이용이 제한됩니다.(부상위험 및 잔디보호)</span></p><p><span style="font-size: 11pt;">9. 야간 대관 이용 시 소음 관련 민원이 자주 발생하오니 고성, 욕설 등 삼가해 주시기 바랍니다.</span></p><p><span style="font-size: 11pt; color: rgb(255, 0, 0);"><b>10. 경기장 이용시 발생하는 부상 및 상해, 개인 자산의 손괴 및 분실 등에 대한 책임은 본인에게 있습니다.(개인 및 팀은 의료 실비 보험 필수 가입)</b></span></p></li>
							</ul>
							<p class="tit">환불규정</p>
							<ul>
								<li><div>1. 단순 대관날짜 변경은 불가하며 예약 취소 및 환불 규정에 의거해 환불 후 신규 대관일을 신청하셔야 합니다.</div><div>2. 대관 당일에는 취소가 불가합니다.</div><div>3. 환불 및 취소는 일일단위로 가능합니다.</div><div>- 30일 ~ 21일 전 : 100% 환불 / 20일 ~ 16일 전 : 80% 환불</div><div>- 15일 ~ 11일 전 : 60% 환불 / 10일 ~ 7일 전 : 50% 환불</div><div>- 6일 ~ 4일 전 : 30% 환불 / 3일 전 ~ 당일 : 환불 불가</div><div><br></div><div>4. 당일 환불은 천<span style="font-size: 10pt;">재지변으로</span><span style="font-size: 10pt;">&nbsp;</span><span style="font-size: 10pt;">인한 경우에만 100% 환불됩니다.</span></div><div>(호우경보, 대설경보, 태풍주의보, 태풍경보만 적용)</div><div><br></div><div>5. 우천시 예약시간 1시간전 기준&nbsp;<span style="color: rgb(255, 0, 0);">시간당 5mm</span> 이상일시 연기 가능</div></li>
							</ul>
						</div> 
					</div>

					<div class="fl_right">
						<!-- 달력 -->
						<div class="calendar_wrap">
							
							<div id="calendarDiv"> 
							</div>

							<div class="bot">
								<!--<span class="pos">선택가능</span>
								<span class="imp">선택불가</span>-->
							</div>

						</div>
						<!-- //달력 -->

						<div class="info_wrap">
							<div class="t_wrap">
								<span class="tit">날짜 선택</span>
								<span class="date" id="regdate">2022.06.16</span>
							</div>

							<div class="t_wrap">
								<span class="tit">구장 선택</span><span class="t_help"><font color=red>* 구장을 선택해야 시간이 표출됩니다.</font></span>
								<span class="select">
									<label for="select01">구장을 선택해주세요</label>
									<select id="select01" name="stadium_code" onCHange="getTime();calc();showStadiumName(this);">
										<option value="">구장 선택</option>
										
											<option value="35">A구장 (크기:40X20)</option>
											
											<option value="36">B구장 (크기:40X20)</option>
											  
									</select>
								</span>
							</div>

							<div class="t_wrap" id="timeDiv"></div>
							
							
							<div class="t_wrap">
								<span class="tit">옵션 선택</span>
								<span class="t_help">* 풋살 경기에 필요한 물품을 함께 예약 하세요.</span>
								<button type="button" class="btn_oc"><span class="hide">열기/닫기</span></button>
								<div class="op_list">
									<ul>
			
										<li class="opt_list" data-id="0">
											<span class="select" style="width:162px">
												<label for="opt1" class="op01" alt="음료">음료 선택</label>
												<select id="opt1" name="opt" onChange="selOpt1(this)" class="select_box">
													<option value="||0" selected>음료 선택</option>
													
														<option value="22||1000||음료-생수2L">생수2L</option>
														
														<option value="39||4000||음료-파워에이드 1.5L">파워에이드 1.5L</option>
														
												</select>
											</span>
											<input type="text" name="cnt" class="opt_c" style="width:88px" onKeyUp="checkNumber(this);selOpt2(this);" value="0" maxlength=3>개
											<span class="price">
												금액 : <em class="priceView">0</em>원
												<span class="btn_pm">
													<input type="button" onCLick="cloneOpt(this, '1');" value=" + ">
													<input type="button" onCLick="removeOpt(this);" value=" - ">
												</span>
											</span>
											<input type="hidden" name="opt_idx" class="opt_idx" value="">
											<input type="hidden" name="opt_name" class="opt_name" value="">
											<input type="hidden" name="opt_price" class="opt_price" value="0">
											<input type="hidden" name="opt_cnt" class="opt_cnt" value="0">
											<input type="hidden" name="opt_total" class="opt_total" value="0">
										</li> 
			
										<li class="opt_list" data-id="0">
											<span class="select" style="width:162px">
												<label for="opt2" class="op01" alt="풋살화">풋살화 선택</label>
												<select id="opt2" name="opt" onChange="selOpt1(this)" class="select_box">
													<option value="||0" selected>풋살화 선택</option>
													
														<option value="35||2000||풋살화-풋살화대여(사이즈,수량 확인 요망)">풋살화대여(사이즈,수량 확인 요망)</option>
														
												</select>
											</span>
											<input type="text" name="cnt" class="opt_c" style="width:88px" onKeyUp="checkNumber(this);selOpt2(this);" value="0" maxlength=3>개
											<span class="price">
												금액 : <em class="priceView">0</em>원
												<span class="btn_pm">
													<input type="button" onCLick="cloneOpt(this, '2');" value=" + ">
													<input type="button" onCLick="removeOpt(this);" value=" - ">
												</span>
											</span>
											<input type="hidden" name="opt_idx" class="opt_idx" value="">
											<input type="hidden" name="opt_name" class="opt_name" value="">
											<input type="hidden" name="opt_price" class="opt_price" value="0">
											<input type="hidden" name="opt_cnt" class="opt_cnt" value="0">
											<input type="hidden" name="opt_total" class="opt_total" value="0">
										</li> 
			 
									</ul>
								</div>
							</div>


							<div class="t_wrap total">
								<span class="tit">합계</span>
								<span class="total"><b id="totalPriceView">0</b>원 <span class="i_txt">(구장대여 <b id="rentCountView">0</b>시간 <b id="rentPriceView">0</b>원 + 옵션선택 <b id="optionPriceView">0</b>원)</span></span>
							</div>
<script>
function togMatchForm(){
	$("#matchForm").toggle();
}
function togMerceForm(){
	$("#merceForm").toggle();
}
</script>
							<div class="t_wrap match">
								<span class="tit"><input type="checkbox" name="match_apply_yn" onClick="togMatchForm();" value="Y"> 매치 등록하기</span>
								<span class="t_help">* 매치를 등록하면 경기를 희망하는 팀의 연락을 받을 수 있습니다.</span> 
								<div id="matchForm" class="match_list" style="display:none;">
									<ul>
										<li>
											<span class="select">
												<label for="mat01">매치형태 선택</label>
												<select id="mat01" name="cm_match_type">
													<option value="">매치형태 선택</option>
													
		<option value="5vs5" >5 vs 5</option>
		
		<option value="6vs6" >6 vs 6</option>
		
												</select>
											</span>
										</li> 
										<li>
											<span class="select">
												<label for="mat03">신청 가능 팀 선택</label>
												<select id="mat03" name="cm_team_count">
													<option value="">신청 가능 팀 선택</option>
													
		<option value="1" >1팀</option>
		
		<option value="2" >2팀</option>
		
												</select>
											</span>
										</li>
										<li>
											<span class="select">
												<label for="select31">팀수준선택</label>
												<select id="select31" name="cm_team_level" class="select_box">
													<option value="">팀수준선택</option>
													
		<option value="1" >상</option>
		
		<option value="2" >중상</option>
		
		<option value="3" >중</option>
		
		<option value="4" >중하</option>
		
		<option value="5" >하</option>
		
												</select>
											</span>
										</li>
										<li>
											<div class="phone">
												<span>유니폼 색상</span>  
												<input type="text"  title="" name="uniform_top" placeholder="상의색" /><span></span>
												<input type="text"  title="" name="uniform_bottom" placeholder="하의색" /><span></span>
												<input type="text"  title="" name="uniform_socks" placeholder="스타킹색"/>
											</div>
										</li>
										<li>
											<div class="textarea">
												<textarea name="cm_info" placeholder="원하는 매칭시간 / 개인 연락처 / 팀 소개등 메모"></textarea>
											</div>
										</li> 
									</ul>
								</div>
							</div>

							<div class="t_wrap match">
								<span class="tit"><input type="checkbox" name="merce_apply_yn" onClick="togMerceForm();" value="Y"> 용병모집 등록하기</span>
								<span class="t_help">* 용병모집을 등록하면 커뮤니티의 용병모집란에 자동 등록 됩니다.</span>
								<div id="merceForm" class="match_list" style="display:none;"> 
									<ul>
										<li>
											<span class="select">
												<label for="mat011">모집인원 선택</label>
												<select id="mat011" name="co_count"> 
													<option value="">모집인원</option>
													
													<option value="1">1명</option>
													
													<option value="2">2명</option>
													
													<option value="3">3명</option>
													
													<option value="4">4명</option>
													
													<option value="5">5명</option>
													
													<option value="6">6명</option>
													
													<option value="7">7명</option>
													
													<option value="8">8명</option>
													
													<option value="9">9명</option>
													
													<option value="10">10명</option>
													
												</select>
											</span>
										</li>
										<li>
											<span class="select">
												<label for="select32">팀수준선택</label>
												<select id="select32" name="co_team_level" class="select_box">
													<option value="">팀수준선택</option>
													
		<option value="1" >상</option>
		
		<option value="2" >중상</option>
		
		<option value="3" >중</option>
		
		<option value="4" >중하</option>
		
		<option value="5" >하</option>
		
												</select>
											</span>
										</li>
										<li>
											<div class="textarea">
												<textarea name="co_info" rows="" cols="" placeholder="원하는 매칭시간 / 개인 연락처 / 팀 소개등 메모"></textarea>
											</div>
										</li>
									</ul>
								</div>
							</div>

							<div class="info_txt">
								<p class="tit">환불규정</p>
								<ul>
									<li><div>1. 단순 대관날짜 변경은 불가하며 예약 취소 및 환불 규정에 의거해 환불 후 신규 대관일을 신청하셔야 합니다.</div><div>2. 대관 당일에는 취소가 불가합니다.</div><div>3. 환불 및 취소는 일일단위로 가능합니다.</div><div>- 30일 ~ 21일 전 : 100% 환불 / 20일 ~ 16일 전 : 80% 환불</div><div>- 15일 ~ 11일 전 : 60% 환불 / 10일 ~ 7일 전 : 50% 환불</div><div>- 6일 ~ 4일 전 : 30% 환불 / 3일 전 ~ 당일 : 환불 불가</div><div><br></div><div>4. 당일 환불은 천<span style="font-size: 10pt;">재지변으로</span><span style="font-size: 10pt;">&nbsp;</span><span style="font-size: 10pt;">인한 경우에만 100% 환불됩니다.</span></div><div>(호우경보, 대설경보, 태풍주의보, 태풍경보만 적용)</div><div><br></div><div>5. 우천시 예약시간 1시간전 기준&nbsp;<span style="color: rgb(255, 0, 0);">시간당 5mm</span> 이상일시 연기 가능</div></li>
								</ul>

								<p class="tit">예약자 확인사항</p>
								<ul>
									<li><p><font color="#ff0000"><span style="font-size: 11pt;"><b>★홈플러스 무료주차 4시간 가능, 차량 등록은 구장에 비치되어 있는 테블릿PC에 직접 입력하셔야 됩니다.(미입력으로 인한 주차비는 구장에서 책임지지 않음)★</b></span></font></p><p><b style="color: rgb(58, 50, 195); font-size: 12pt;">☆코로나19 여파로 대관에 신중을 기해주시기 바랍니다.(환불 규정에 따라 환불, 연기 불가)☆</b></p><p><span style="font-size: 11pt; color: rgb(255, 0, 0);"><b>1. 예약신청 후 2시간 내에 입금되지 않을 시 자동취소 됩니다.</b></span></p><p><span style="font-size: 11pt;">* 예약자와 입금자 이름이 다를 경우 반드시 전화주세요.</span></p><p><span style="font-size: 11pt;">- 입금 계좌 : 경남은행 010-9423-0885 [예금주: 임세혁(하이파이브)]</span></p><p><span style="font-size: 11pt;">2. 문의 전화 : 055-267-0800 / 010-9423-0885 (통화가능시간 : 14:00 ~ 22:00)</span></p><p><span style="font-size: 11pt; color: rgb(255, 0, 0);"><b>3. 전 구역 금연지역입니다.</b></span></p><p><span style="font-size: 11pt; color: rgb(255, 0, 0);"><b>(흡연은 흡연실을 이용해 주세요, 경기장내 흡연 적발 시 대관 취소 및 환불 불가)</b></span></p><p><span style="font-size: 11pt;">4. 경기장 내 음료 및 음식물 반입 금지(코로나19로 인해 물, 음료 이외 취식 불가)</span></p><p><span style="font-size: 11pt;">5. 주차는 경기장 앞 7층 주차장을 이용하시기 바랍니다.(4시간 무료 주차 직접 등록)</span></p><p><span style="font-size: 11pt;">6. 본 풋살파크는 CCTV 촬영되고 있습니다.</span></p><p><span style="font-size: 11pt;">7. 개인장비는 직접 지참하시기 바랍니다.(풋살화 등)</span></p><p><span style="font-size: 11pt;">8. 풋살화 미착용시 구장이용이 제한됩니다.(부상위험 및 잔디보호)</span></p><p><span style="font-size: 11pt;">9. 야간 대관 이용 시 소음 관련 민원이 자주 발생하오니 고성, 욕설 등 삼가해 주시기 바랍니다.</span></p><p><span style="font-size: 11pt; color: rgb(255, 0, 0);"><b>10. 경기장 이용시 발생하는 부상 및 상해, 개인 자산의 손괴 및 분실 등에 대한 책임은 본인에게 있습니다.(개인 및 팀은 의료 실비 보험 필수 가입)</b></span></p></li>
								</ul>
							</div>
						</div>

						<div class="int_wrap">
							<p class="tit">대관 예약자 정보 입력</p>
							<div class="table_wrap">
								<table>
								<caption>대관 예약자 정보 입력 테이블</caption>
								<colgroup>
									<col style="width:25%" />
									<col style="" />
								</colgroup>
								<tbody>
									<tr>
										<th scope="row">신청자</th>
										<td><input type="text"  name="cm_name" placeholder="이름을 입력하세요" style="width:100%"></td>
									</tr>
									<tr>
										<th scope="row">연락처</th>
										<td>
											<div class="phone">
											<input type="text"  name="htel1" maxlength=3 value="" class="numberOnly" /><span>-</span>
											<input type="text"  name="htel2" maxlength=4 value="" class="numberOnly" /><span>-</span>
											<input type="text"  name="htel3" maxlength=4 value="" class="numberOnly" />
											</div>
										</td>
									</tr>
								
									<tr>
										<th scope="row">비밀번호</th>
										<td><input type="password"  name="cm_pwd" placeholder="예약확인시 필요합니다." style="width:100%"></td>
									</tr>
								
									<tr>
										<th scope="row">예약일자</th>
										<td id="dateBottom">2022.06.16</td>
									</tr>
									<tr>
										<th scope="row">선택구장</th>
										<td id="stadiumBottom"></td>
									</tr>
									<tr>
										<th scope="row">예약시간</th>
										<td id="timeBottom">예약시간 선택 없음</td>
									</tr>
									<tr>
										<th scope="row">옵션</th>
										<td id="optionBottom">옵션선택 없음</td>
									</tr>
									<tr>
										<th scope="row">총 결제금액</th>
										<td><span class="price"  id="priceBottom">0</span>원</td>
									</tr>
									<tr>
										<th scope="row">메모</th>
										<td>
											<span class="textarea">
												<textarea name="r_memo" rows="" cols=""></textarea>
											</span>
										</td>
									</tr>
								</tbody>
								</table>
							</div>

							<span class="chk"><input type="checkbox" id="chk01" title="" name="agree" value="Y"><label for="chk01">예약자 정보 및 환불규정/주의사항을 모두 확인 했습니다.</label></span>

							<div class="btn_wrap">
								<button type="button" class="btn_big gray" onClick="ok();"><span>대관예약하기</span></button>
							</div>

					</div>
				</div>
			</div>

		</div>
		<!-- //Contents -->
  
	</section>
</FORM>


<script>
$(function(){
	getCalendar('2022-06-16'); 
	getTime();
});

function addCommas(str){
	str = ""+str+"";
	var retValue = "";
	for(i=0; i<str.length; i++){
		if(i > 0 && (i%3)==0) {
			retValue = str.charAt(str.length - i -1) + "," + retValue;
		}
		else {
			retValue = str.charAt(str.length - i -1) + retValue;
		}
	}
	return retValue;
}

function delCommas(str){
	str = ""+str+"";
	var retValue = "";
	retValue = str.replace(",","");
	retValue = retValue.replace(",",""); 
	return retValue;
}

function getCalendar(v){
	var stadium_code = document.form.stadium_code.value; 
	$.get("ajax_calendar.asp?stadium_code="+stadium_code+"&reqdate="+v , function(r){ 
		$("#calendarDiv").html(r);
	});
}

function getCalendarByStadium(e){
	var stadium_code = e.value;
	var v; 
	v = $("#regdate").text();
	v = v.replace(".","-");
	v = v.replace(".","-"); 
 
	$.get("ajax_calendar.asp?stadium_code="+stadium_code+"&reqdate="+v , function(r){ 
		$("#calendarDiv").html(r);
	});
}

function getTime(){
	var reqdate = document.form.reg_date.value;
	var stadium_code = document.form.stadium_code.value;
	//window.open("ajax_time.asp?reqdate="+reqdate+"&stadium_code="+stadium_code );
	$.get("ajax_time.asp?reqdate="+reqdate+"&stadium_code="+stadium_code+"&branch_code=HM0009", function(r){ 
		$("#timeDiv").html(r);
		calc();
	}); 
} 

function showStadiumName(e){
	$("#stadiumBottom").text($(e).find("option[value='" + $(e).val() + "']").text());
}

function chgDate(e, v){
	var nv = v.replace("-",".");
	nv = nv.replace("-",".");
	$("#regdate").text(nv);
	$("#dateBottom").text(nv);
	document.form.reg_date.value=v;
	getTime(); 
	$(".buts").removeClass("on");
	$(e).parent().children(".buts").addClass("on");
}

function setTime(e){ 
	if ($(e).parent().children(".r_time_no_check").prop("checked"))
	{
		$(e).removeClass("on");
		$(e).parent().children(".r_time_no_check").prop("checked",false);
	}else{
		$(e).addClass("on");
		$(e).parent().children(".r_time_no_check").prop("checked",true);

	}
	calc();
}

function calc(){
	var rent_price = 0 ;
	var rent_count = 0 ;
	var shour
	var timestr = "";
	var optstr = "";

	$(".r_time_no_check:checkbox:checked").each(function(){
		rent_price = rent_price + parseInt($(this).attr("alt"));

		var t = $(this).val().split("|");
		var stime = t[1];
		var etime = t[2];
		timestr = timestr + stime + "~" + etime + "<BR>";

		rent_count ++;
	});

	var option_price = 0 ;
	$(".opt_total").each(function(){
		option_price = option_price + parseInt($(this).val()); 
	});
	
	$(".opt_cnt").each(function(){
		if (parseInt($(this).val())>0)
		{
			optstr = optstr + $(this).parent().children(".opt_name").val() + " : " + $(this).val() + "<BR>"; 
		}
	});

	var total_price = rent_price + option_price;

	$("#rentPriceView").text(addCommas(rent_price));
	$("#rentCountView").text(addCommas(rent_count));
	$("#optionPriceView").text(addCommas(option_price)); 
	$("#totalPriceView").text(addCommas(total_price));

	$("#priceBottom").text(addCommas(total_price));
	$("#timeBottom").html(timestr);
	$("#optionBottom").html(optstr);
	document.form.total_price.value=total_price;
}

function selOpt1(e){
	var c;
	var opts = e.value;  
	var optArr = opts.split("||");
	$(e).parent().parent().children(".opt_idx").val(optArr[0]); 
	$(e).parent().parent().children(".opt_price").val(optArr[1]);  
	$(e).parent().parent().children(".opt_name").val(optArr[2]);  
	var price = parseInt(optArr[1]); 

	var cnt = parseInt($(e).parent().parent().children(".opt_c").val()); 
	$(e).parent().parent().children(".price").children(".priceView").text(addCommas(price*cnt)); 
	$(e).parent().parent().children(".opt_total").val(price*cnt);  

	c = e.text();
	$(e).parent().parent().find("label").text(c);

	calc();
}
function selOpt2(e){
	var cnt = parseInt(e.value);  
	$(e).parent().children(".opt_cnt").val(cnt);  

	var price = parseInt($(e).parent().children(".opt_price").val()); 
	$(e).parent().children(".price").children(".priceView").text(addCommas(price*cnt)); 
	$(e).parent().children(".opt_total").val(price*cnt);  
	
	calc();
}

function cloneOpt(e, v){  
	var a,b;

	a=$(".opt_list").length;
	a++;

	var clon = $(e).parent().parent().parent().clone();

	clon.find("label").attr("for","opt"+a);
	clon.find("select").attr("id","opt"+a);

 	clon.find(".opt_idx").val("");
	clon.find(".opt_name").val("");
	clon.find(".opt_price").val("0");
	clon.find(".opt_cnt").val("0");
	clon.find(".opt_c").val("0"); 
	clon.find(".priceView").text("0"); 

	clon.attr('data-id', 1);

	b = clon.find("select option:eq(0)").text();
	clon.find("select option:eq(0)").prop("selected", true);
	clon.find("label").text(b);

	$(e).parent().parent().parent().parent().append(clon);  
}
function removeOpt(e){
	var a =$(e).parent().parent().parent().attr("data-id");
	if(a > 0) {
		$(e).parent().parent().parent().remove(); 
		calc();
	}
}

function tog(v){
	$("."+v).toggle();
}

function ok(){ 
	document.form.target="HiddenFrame";
	document.form.action="rese_form_ok.asp";
	document.form.submit();
}

</script>
	<!-- Footer -->
	<footer id="footer">
		<div class="footer_wrap">
			<span class="logo"></span>
			<div class="foot_util">
				<ul>
					<li><a href="/member/privacy.asp">개인정보처리방침</a></li>
					<li><a href="/member/tos.asp">이용약관</a></li>
					<li><a href="/member/emailcollection.asp">이메일무단수집거부</a></li>
				</ul>
			</div>
			<p class="info">서울시 성동구 왕십리로 58 FORHU 709호(성수동 1가)<span>TEL : 02-332-7807</span><span>FAX : 02-2061-0373</span></p>
			<p class="copy">COPYRIGHTⓒHNS. ALLRIGHT RESERVED</p>
		</div>
	</footer>
	<!-- //Footer -->
</div>

<iframe name="HiddenFrame" style="display:none;"></iframe>
</body>
</html>