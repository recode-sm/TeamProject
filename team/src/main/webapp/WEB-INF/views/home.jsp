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
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/common/common.js"></script>
	<!-- //공통js -->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/main.css">
	<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-116234591-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-116234591-1');
</script>
<!-- Global site tag (gtag.js) - Google Analytics -->
</head>
<script src="/js/libs/jquery.bxslider.js"></script>
<script language="Javascript">
	$(document).ready(function() {
		$('.bg_wrap .menu').addClass('on');
	});
</script>
<body>
<div id="wrapper">
	<!-- Skip Navigation -->
	<nav class="skip_nav">
		<a href="#container">Skip to content</a>
	</nav>
	<!-- //Skip Navigation -->	<!-- Header -->
	<section id="header">
		<div class="header">
			<h1><a href="/"><span class="hide">HM FUTSAL PARK</span></a></h1>
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
						<li><a href="/rese/rese.asp">대관</a></li>
						<li><a href="/comm/match/match_apply.asp">매치/용병</a></li>
						<li><a href="/hcup/eng/hcup.asp" class="f_hvn"><!--<a href="# "onClick="alert('준비중입니다.')" class="f_hvn">-->H-CUP</a></li>
						<li><a href="/league/league.asp" class="f_hvn">H-LEAGUE</a></li>
						<li><a href="/cust/comm_notice.asp">고객센터</a></li>
						<li><a href="/about/company.asp" class="f_hvn">HNS</a></li>
					</ul>
				</div>
				<div class="util">
					<ul>
						<li class="face"><a href="https://www.facebook.com/HMfutsalpark/" target="_blank"><span class="hide">facebook</span></a></li>
						<li class="insta"><a href="https://www.instagram.com/hmfutsalpark/" target="_blank"><span class="hide">instagram</span></a></li>

						
						<li class="login"><a href="https://hmfutsalpark.com/member/login.asp">MEMBER LOGIN</a></li>
						
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
				<!-- 공지사항 -->
				<div class="notice">
					
						<p><span>NOTICE</span><a href="/cust/comm_notice.asp?cno=25">5vs5 게토레이 2022 H-CUP 중학생 풋살 토너먼트 개최!!</a></p>
					
				</div>
				<!-- //공지사항 -->

				<div class="menu">
					<ul>
						<li><a href="/locate/locate.asp"><span>BRANCH</span><span class="ov">지점</span></a></li>
						<li><a href="<%=request.getContextPath() %>/reservation/reservation"><span>RESERVATION</span><span class="ov">대관</span></a></li>
						<li><a href="/comm/match/match_apply.asp"><span>MATCHING</span><span class="ov">매치/용병</span></a></li>
						<!--<li><a href="# "onClick="alert('준비중입니다.')"><a href="/hcup/hcup.asp"><span>H-CUP</span><span class="ov">H-컵</span></a></li>-->
						<li><a href="/hcup/eng/hcup.asp"><span>H-CUP</span><span class="ov">H-컵</span></a></li>
						<li><a href="/league/league.asp"><span>H-LEAGUE</span><span class="ov">H-리그</span></a></li>
						<li><a href="<%=request.getContextPath() %>/notice/notice"><span>CUSTOMER</span><span class="ov">고객센터</span></a></li>
						<li><a href="/about/company.asp"><span>HNS</span><span class="ov">에이치엔에스</span></a></li>
					</ul>
				</div>

	<div class="t_wrap">
		<span class="hide"></span>
		<span class="hide">그날 리그2020.12.12 ~ 2021.12.31</span>
	</div>

	<!-- 순위 테이블 -->
	<!--<div class="rank_wrap">
		<div class="rank_list">
			<div class="cont">	<p class="tit">시흥점<br/><span>그날 리그 - '그날 LEAGUE 02'</span></p>	<div class="table_wrap">		<table>		<caption>리그순위 테이블</caption>		<colgroup>			<col style="width:40px" />			<col style="" />			<col style="width:40px" />			<col style="width:40px" class=tb/>			<col style="width:40px" class=tb/>			<col style="width:40px" class=tb/>		</colgroup>		<thead>			<tr>				<th scope="col">순위</th>				<th scope="col">팀명</th>				<th scope="col">승점</th>				<th scope="col">승</th>				<th scope="col">무</th>				<th scope="col">패</th>			</tr>		</thead>		<tbody><tr>	<td>1</td>	<td class="emb">		<div class="emb_wrap">			<a href="/league/team_info.asp?tcode=T1802"><span class="emb"><img src="/files/team/emblem_1802.jpg" alt=""></span> <span class="team">비타민FC</span></a>		</div>	</td>	<td>12</td>	<td>4</td>	<td>0</td>	<td>0</td></tr><tr>	<td>2</td>	<td class="emb">		<div class="emb_wrap">			<a href="/league/team_info.asp?tcode=T1214"><span class="emb"><img src="/files/team/emblem_1214.png" alt=""></span> <span class="team">플라이하이</span></a>		</div>	</td>	<td>9</td>	<td>3</td>	<td>0</td>	<td>1</td></tr><tr>	<td>3</td>	<td class="emb">		<div class="emb_wrap">			<a href="/league/team_info.asp?tcode=T1799"><span class="emb"><img src="/files/team/emblem_1799.jpg" alt=""></span> <span class="team">fc빅찌찌</span></a>		</div>	</td>	<td>6</td>	<td>2</td>	<td>0</td>	<td>2</td></tr><tr>	<td>4</td>	<td class="emb">		<div class="emb_wrap">			<a href="/league/team_info.asp?tcode=T1798"><span class="emb"><img src="/files/team/emblem_1798.jpg" alt=""></span> <span class="team">팀 스피드러너</span></a>		</div>	</td>	<td>1</td>	<td>0</td>	<td>1</td>	<td>3</td></tr><tr>	<td>5</td>	<td class="emb">		<div class="emb_wrap">			<a href="/league/team_info.asp?tcode=T1800"><span class="emb"><img src="/files/team/emblem_1800.png" alt=""></span> <span class="team">어쩌다50</span></a>		</div>	</td>	<td>1</td>	<td>0</td>	<td>1</td>	<td>3</td></tr>		</tbody>		</table>	</div></div><div class="cont">	<p class="tit">시흥점<br/><span>그날 리그 - 그날리그 GNL_03</span></p>	<div class="table_wrap">		<table>		<caption>리그순위 테이블</caption>		<colgroup>			<col style="width:40px" />			<col style="" />			<col style="width:40px" />			<col style="width:40px" class=tb/>			<col style="width:40px" class=tb/>			<col style="width:40px" class=tb/>		</colgroup>		<thead>			<tr>				<th scope="col">순위</th>				<th scope="col">팀명</th>				<th scope="col">승점</th>				<th scope="col">승</th>				<th scope="col">무</th>				<th scope="col">패</th>			</tr>		</thead>		<tbody><tr>	<td>1</td>	<td class="emb">		<div class="emb_wrap">			<a href="/league/team_info.asp?tcode=T1808"><span class="emb"><img src="/files/team/emblem_1808.jpg" alt=""></span> <span class="team">시흥유나이티드</span></a>		</div>	</td>	<td>10</td>	<td>3</td>	<td>1</td>	<td>0</td></tr><tr>	<td>2</td>	<td class="emb">		<div class="emb_wrap">			<a href="/league/team_info.asp?tcode=T1806"><span class="emb"><img src="/files/team/emblem_1806.png" alt=""></span> <span class="team">컹스fc</span></a>		</div>	</td>	<td>9</td>	<td>3</td>	<td>0</td>	<td>1</td></tr><tr>	<td>3</td>	<td class="emb">		<div class="emb_wrap">			<a href="/league/team_info.asp?tcode=T1805"><span class="emb"><img src="/files/team/emblem_1805.png" alt=""></span> <span class="team">FC척</span></a>		</div>	</td>	<td>6</td>	<td>2</td>	<td>0</td>	<td>2</td></tr><tr>	<td>4</td>	<td class="emb">		<div class="emb_wrap">			<a href="/league/team_info.asp?tcode=T1809"><span class="emb"><img src="/files/team/emblem_1809.jpg" alt=""></span> <span class="team">JMT</span></a>		</div>	</td>	<td>3</td>	<td>1</td>	<td>0</td>	<td>3</td></tr><tr>	<td>5</td>	<td class="emb">		<div class="emb_wrap">			<a href="/league/team_info.asp?tcode=T1804"><span class="emb"><img src="/files/team/emblem_1804.jpg" alt=""></span> <span class="team">프렌즈FS</span></a>		</div>	</td>	<td>1</td>	<td>0</td>	<td>1</td>	<td>3</td></tr>		</tbody>		</table>	</div></div><div class="cont">	<p class="tit">시흥점<br/><span>그날 리그 - 그날리그 GNL_04</span></p>	<div class="table_wrap">		<table>		<caption>리그순위 테이블</caption>		<colgroup>			<col style="width:40px" />			<col style="" />			<col style="width:40px" />			<col style="width:40px" class=tb/>			<col style="width:40px" class=tb/>			<col style="width:40px" class=tb/>		</colgroup>		<thead>			<tr>				<th scope="col">순위</th>				<th scope="col">팀명</th>				<th scope="col">승점</th>				<th scope="col">승</th>				<th scope="col">무</th>				<th scope="col">패</th>			</tr>		</thead>		<tbody><tr>	<td>1</td>	<td class="emb">		<div class="emb_wrap">			<a href="/league/team_info.asp?tcode=T1817"><span class="emb"><img src="/files/team/emblem_1817.png" alt=""></span> <span class="team">결혼하지마FC</span></a>		</div>	</td>	<td>12</td>	<td>4</td>	<td>0</td>	<td>0</td></tr><tr>	<td>2</td>	<td class="emb">		<div class="emb_wrap">			<a href="/league/team_info.asp?tcode=T1814"><span class="emb"><img src="/files/team/emblem_1814.jpg" alt=""></span> <span class="team">블루웨이브fc</span></a>		</div>	</td>	<td>9</td>	<td>3</td>	<td>0</td>	<td>1</td></tr><tr>	<td>3</td>	<td class="emb">		<div class="emb_wrap">			<a href="/league/team_info.asp?tcode=T1812"><span class="emb"><img src="/files/team/emblem_1812.png" alt=""></span> <span class="team">WITH FC</span></a>		</div>	</td>	<td>6</td>	<td>2</td>	<td>0</td>	<td>2</td></tr><tr>	<td>4</td>	<td class="emb">		<div class="emb_wrap">			<a href="/league/team_info.asp?tcode=T1816"><span class="emb"><img src="/files/team/emblem_1816.png" alt=""></span> <span class="team">스톤 FC</span></a>		</div>	</td>	<td>3</td>	<td>1</td>	<td>0</td>	<td>3</td></tr><tr>	<td>5</td>	<td class="emb">		<div class="emb_wrap">			<a href="/league/team_info.asp?tcode=T1815"><span class="emb"><img src="/files/team/emblem_1815.png" alt=""></span> <span class="team">청월</span></a>		</div>	</td>	<td>0</td>	<td>0</td>	<td>0</td>	<td>4</td></tr>		</tbody>		</table>	</div></div><div class="cont">	<p class="tit">시흥점<br/><span>그날 리그 - 그날리그 GNL_05</span></p>	<div class="table_wrap">		<table>		<caption>리그순위 테이블</caption>		<colgroup>			<col style="width:40px" />			<col style="" />			<col style="width:40px" />			<col style="width:40px" class=tb/>			<col style="width:40px" class=tb/>			<col style="width:40px" class=tb/>		</colgroup>		<thead>			<tr>				<th scope="col">순위</th>				<th scope="col">팀명</th>				<th scope="col">승점</th>				<th scope="col">승</th>				<th scope="col">무</th>				<th scope="col">패</th>			</tr>		</thead>		<tbody><tr>	<td>1</td>	<td class="emb">		<div class="emb_wrap">			<a href="/league/team_info.asp?tcode=T1818"><span class="emb"><img src="/files/team/emblem_1818.jpg" alt=""></span> <span class="team">인연FS</span></a>		</div>	</td>	<td>8</td>	<td>2</td>	<td>2</td>	<td>0</td></tr><tr>	<td>2</td>	<td class="emb">		<div class="emb_wrap">			<a href="/league/team_info.asp?tcode=T1821"><span class="emb"><img src="/files/team/emblem_1821.png" alt=""></span> <span class="team">침착하게 시원하게 fc</span></a>		</div>	</td>	<td>8</td>	<td>2</td>	<td>2</td>	<td>0</td></tr><tr>	<td>3</td>	<td class="emb">		<div class="emb_wrap">			<a href="/league/team_info.asp?tcode=T1214"><span class="emb"><img src="/files/team/emblem_1214.png" alt=""></span> <span class="team">플라이하이</span></a>		</div>	</td>	<td>6</td>	<td>1</td>	<td>3</td>	<td>0</td></tr><tr>	<td>4</td>	<td class="emb">		<div class="emb_wrap">			<a href="/league/team_info.asp?tcode=T1819"><span class="emb"><img src="/files/team/emblem_1819.png" alt=""></span> <span class="team">방관 풋살회</span></a>		</div>	</td>	<td>3</td>	<td>1</td>	<td>0</td>	<td>3</td></tr><tr>	<td>5</td>	<td class="emb">		<div class="emb_wrap">			<a href="/league/team_info.asp?tcode=T1816"><span class="emb"><img src="/files/team/emblem_1816.png" alt=""></span> <span class="team">스톤 FC</span></a>		</div>	</td>	<td>1</td>	<td>0</td>	<td>1</td>	<td>3</td></tr>		</tbody>		</table>	</div></div><div class="cont">	<p class="tit">시흥점<br/><span>그날 리그 - 그날리그 GNL_06</span></p>	<div class="table_wrap">		<table>		<caption>리그순위 테이블</caption>		<colgroup>			<col style="width:40px" />			<col style="" />			<col style="width:40px" />			<col style="width:40px" class=tb/>			<col style="width:40px" class=tb/>			<col style="width:40px" class=tb/>		</colgroup>		<thead>			<tr>				<th scope="col">순위</th>				<th scope="col">팀명</th>				<th scope="col">승점</th>				<th scope="col">승</th>				<th scope="col">무</th>				<th scope="col">패</th>			</tr>		</thead>		<tbody><tr>	<td>1</td>	<td class="emb">		<div class="emb_wrap">			<a href="/league/team_info.asp?tcode=T1798"><span class="emb"><img src="/files/team/emblem_1798.jpg" alt=""></span> <span class="team">팀 스피드러너</span></a>		</div>	</td>	<td>10</td>	<td>3</td>	<td>1</td>	<td>0</td></tr><tr>	<td>2</td>	<td class="emb">		<div class="emb_wrap">			<a href="/league/team_info.asp?tcode=T1821"><span class="emb"><img src="/files/team/emblem_1821.png" alt=""></span> <span class="team">침착하게 시원하게 fc</span></a>		</div>	</td>	<td>8</td>	<td>2</td>	<td>2</td>	<td>0</td></tr><tr>	<td>3</td>	<td class="emb">		<div class="emb_wrap">			<a href="/league/team_info.asp?tcode=T1823"><span class="emb"><img src="/files/team/emblem_1823.png" alt=""></span> <span class="team">FC BeSharps</span></a>		</div>	</td>	<td>6</td>	<td>2</td>	<td>0</td>	<td>2</td></tr><tr>	<td>4</td>	<td class="emb">		<div class="emb_wrap">			<a href="/league/team_info.asp?tcode=T1824"><span class="emb"><img src="/files/team/emblem_1824.png" alt=""></span> <span class="team">서창FS</span></a>		</div>	</td>	<td>3</td>	<td>1</td>	<td>0</td>	<td>3</td></tr><tr>	<td>5</td>	<td class="emb">		<div class="emb_wrap">			<a href="/league/team_info.asp?tcode=T1816"><span class="emb"><img src="/files/team/emblem_1816.png" alt=""></span> <span class="team">스톤 FC</span></a>		</div>	</td>	<td>1</td>	<td>0</td>	<td>1</td>	<td>3</td></tr>		</tbody>		</table>	</div></div><div class="cont">	<p class="tit">시흥점<br/><span>그날 리그 - 그날리그 GNL_07</span></p>	<div class="table_wrap">		<table>		<caption>리그순위 테이블</caption>		<colgroup>			<col style="width:40px" />			<col style="" />			<col style="width:40px" />			<col style="width:40px" class=tb/>			<col style="width:40px" class=tb/>			<col style="width:40px" class=tb/>		</colgroup>		<thead>			<tr>				<th scope="col">순위</th>				<th scope="col">팀명</th>				<th scope="col">승점</th>				<th scope="col">승</th>				<th scope="col">무</th>				<th scope="col">패</th>			</tr>		</thead>		<tbody><tr>	<td>1</td>	<td class="emb">		<div class="emb_wrap">			<a href="/league/team_info.asp?tcode=T1827"><span class="emb"><img src="/files/team/emblem_1827.jpg" alt=""></span> <span class="team">어슬렁fc</span></a>		</div>	</td>	<td>12</td>	<td>4</td>	<td>0</td>	<td>0</td></tr><tr>	<td>2</td>	<td class="emb">		<div class="emb_wrap">			<a href="/league/team_info.asp?tcode=T1821"><span class="emb"><img src="/files/team/emblem_1821.png" alt=""></span> <span class="team">침착하게 시원하게 fc</span></a>		</div>	</td>	<td>9</td>	<td>3</td>	<td>0</td>	<td>1</td></tr><tr>	<td>3</td>	<td class="emb">		<div class="emb_wrap">			<a href="/league/team_info.asp?tcode=T1816"><span class="emb"><img src="/files/team/emblem_1816.png" alt=""></span> <span class="team">스톤 FC</span></a>		</div>	</td>	<td>6</td>	<td>2</td>	<td>0</td>	<td>2</td></tr><tr>	<td>4</td>	<td class="emb">		<div class="emb_wrap">			<a href="/league/team_info.asp?tcode=T1826"><span class="emb"><img src="/files/team/emblem_1826.png" alt=""></span> <span class="team">무야호fc</span></a>		</div>	</td>	<td>3</td>	<td>1</td>	<td>0</td>	<td>3</td></tr><tr>	<td>5</td>	<td class="emb">		<div class="emb_wrap">			<a href="/league/team_info.asp?tcode=T1829"><span class="emb"><img src="/files/team/emblem_1829.png" alt=""></span> <span class="team">YDJ</span></a>		</div>	</td>	<td>0</td>	<td>0</td>	<td>0</td>	<td>4</td></tr>		</tbody>		</table>	</div></div><div class="cont">	<p class="tit">시흥점<br/><span>그날 리그 - 그날리그 GNL_08</span></p>	<div class="table_wrap">		<table>		<caption>리그순위 테이블</caption>		<colgroup>			<col style="width:40px" />			<col style="" />			<col style="width:40px" />			<col style="width:40px" class=tb/>			<col style="width:40px" class=tb/>			<col style="width:40px" class=tb/>		</colgroup>		<thead>			<tr>				<th scope="col">순위</th>				<th scope="col">팀명</th>				<th scope="col">승점</th>				<th scope="col">승</th>				<th scope="col">무</th>				<th scope="col">패</th>			</tr>		</thead>		<tbody><tr>	<td>1</td>	<td class="emb">		<div class="emb_wrap">			<a href="/league/team_info.asp?tcode=T1836"><span class="emb"><img src="/images/content/default_team.png" alt=""></span> <span class="team">Donnerstag </span></a>		</div>	</td>	<td>12</td>	<td>4</td>	<td>0</td>	<td>0</td></tr><tr>	<td>2</td>	<td class="emb">		<div class="emb_wrap">			<a href="/league/team_info.asp?tcode=T1824"><span class="emb"><img src="/files/team/emblem_1824.png" alt=""></span> <span class="team">서창FS</span></a>		</div>	</td>	<td>9</td>	<td>3</td>	<td>0</td>	<td>1</td></tr><tr>	<td>3</td>	<td class="emb">		<div class="emb_wrap">			<a href="/league/team_info.asp?tcode=T1837"><span class="emb"><img src="/files/team/emblem_1837.jpg" alt=""></span> <span class="team">갈색폭격기</span></a>		</div>	</td>	<td>6</td>	<td>2</td>	<td>0</td>	<td>2</td></tr><tr>	<td>4</td>	<td class="emb">		<div class="emb_wrap">			<a href="/league/team_info.asp?tcode=T1825"><span class="emb"><img src="/files/team/emblem_1825.jpg" alt=""></span> <span class="team">Y-friends</span></a>		</div>	</td>	<td>3</td>	<td>1</td>	<td>0</td>	<td>3</td></tr><tr>	<td>5</td>	<td class="emb">		<div class="emb_wrap">			<a href="/league/team_info.asp?tcode=T1816"><span class="emb"><img src="/files/team/emblem_1816.png" alt=""></span> <span class="team">스톤 FC</span></a>		</div>	</td>	<td>0</td>	<td>0</td>	<td>0</td>	<td>4</td></tr>		</tbody>		</table>	</div></div><div class="cont">	<p class="tit">시흥점<br/><span>그날 리그 - 그날리그 GNL_09</span></p>	<div class="table_wrap">		<table>		<caption>리그순위 테이블</caption>		<colgroup>			<col style="width:40px" />			<col style="" />			<col style="width:40px" />			<col style="width:40px" class=tb/>			<col style="width:40px" class=tb/>			<col style="width:40px" class=tb/>		</colgroup>		<thead>			<tr>				<th scope="col">순위</th>				<th scope="col">팀명</th>				<th scope="col">승점</th>				<th scope="col">승</th>				<th scope="col">무</th>				<th scope="col">패</th>			</tr>		</thead>		<tbody><tr>	<td>1</td>	<td class="emb">		<div class="emb_wrap">			<a href="/league/team_info.asp?tcode=T1214"><span class="emb"><img src="/files/team/emblem_1214.png" alt=""></span> <span class="team">플라이하이</span></a>		</div>	</td>	<td>9</td>	<td>3</td>	<td>0</td>	<td>0</td></tr><tr>	<td>2</td>	<td class="emb">		<div class="emb_wrap">			<a href="/league/team_info.asp?tcode=T1816"><span class="emb"><img src="/files/team/emblem_1816.png" alt=""></span> <span class="team">스톤 FC</span></a>		</div>	</td>	<td>6</td>	<td>2</td>	<td>0</td>	<td>1</td></tr><tr>	<td>3</td>	<td class="emb">		<div class="emb_wrap">			<a href="/league/team_info.asp?tcode=T1843"><span class="emb"><img src="/files/team/emblem_1843.jpg" alt=""></span> <span class="team">team 동그라미</span></a>		</div>	</td>	<td>3</td>	<td>1</td>	<td>0</td>	<td>2</td></tr><tr>	<td>4</td>	<td class="emb">		<div class="emb_wrap">			<a href="/league/team_info.asp?tcode=T1798"><span class="emb"><img src="/files/team/emblem_1798.jpg" alt=""></span> <span class="team">팀 스피드러너</span></a>		</div>	</td>	<td>0</td>	<td>0</td>	<td>0</td>	<td>3</td></tr>		</tbody>		</table>	</div></div>
		</div>
	</div>-->
	<!-- //순위 테이블 -->

				<!-- 영상 배경 -->
				<div class="mv">
					
						<video id="video01" class="pblock" autoplay="" playsinline="" muted="" loop="" title=""> 
							<source src="<%=request.getContextPath() %>/resources/files/banner/920220513468113.mp4" type="video/mp4"> 
						</video>
					
						<video id="video02" class="mblock" autoplay="" playsinline="" muted="" loop="" title=""> 
							<source src="<%=request.getContextPath() %>/resources/files/banner/202205075319212.mp4" type="video/mp4"> 
						</video>
					
				</div>
				<!-- //영상 배경 -->
			</div>
		</div>

		 
		<!-- Layer popup -->
		<div class="layer_popup" style="display:none;" id="noticePop1">
			<button type="button" class="btn_closed" onCLick="closeWin1();"><span class="hide">closed</span></button>
			<div class="layer_cont">
				
				
					<span class="img" onCLIck="javscript:window.open('http://hmfutsalpark.com/hcup/eng/hcup.asp','_self');">
				
				<img src="/files/popup/202205266493659.png" alt="" />
				</span>

				<div class="today">
					<span class="chk"><input type="checkbox" id="today" title="" name="" onCLick="noticePop1Close(this);"><label for="today">오늘 하루 열지 않기</label></span>
				</div>
			</div>
		</div>
		<div class="layer_dim"></div>
		<!-- //Layer popup -->

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

 function noticePop1Close(e) {
	  if (e.checked) {
			setCookie("popLayer1", "done", 1);
	  }
		$('html').removeClass('hidden');
		$('.layer_dim').hide();
	  document.getElementById('noticePop1').style.visibility = "hidden";
 }

 function closeWin1() {
		$('html').removeClass('hidden');
		$('.layer_dim').hide();
	  document.getElementById('noticePop1').style.visibility = "hidden";
 }
</script>

		
		<!-- //Contents -->
	</section>
<script language="Javascript">
	$(window).load(function() {
		$(".rank_wrap").css("display","block");
		var slide01 = $('.rank_list').bxSlider({
			controls: false,
			auto: true,
			pager: false,
			speed: 1200,
			pause: 4000,
			infiniteLoop: true,
			responsive: true,
			touchEnabled: true,
			hideControlOnEnd: true
		});
	});
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