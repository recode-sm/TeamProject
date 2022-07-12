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
	<section id="container">
		<!-- Contents -->
		<div class="content">
			<div class="sub_top">
				<h2>고객센터</h2>
				
	<video id="video01" autoplay="" playsinline="" muted="" loop="" height="460" width="100%" title="video element"> 
		<source src="<%=request.getContextPath() %>/resources/files/banner/13202205134697811.mp4" type="video/mp4"> 
	</video>

			</div>

			<div class="tab_wrap">
				<ul class="t03">
					<li><a href="<%=request.getContextPath() %>/notice/notice">공지사항</a></li>
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
								<td class="al_left"><a href="comm_notice_view.asp?cno=25&noti=y&page=" class="tit">5vs5 게토레이 2022 H-CUP 중학생 풋살 토너먼트 개최!!</a></td>
								<td>2022.05.19</td>
								<td class="tb">320</td>
							</tr>
					
							<tr>
								<td>22</td>
								<td class="al_left"><a href="comm_notice_view.asp?cno=24&page=1" class="tit">사회적 거리두기 지침 변경에 따른 HM풋살파크 이용 안내</a></td>
								<td>2021.10.01</td>
								<td class="tb">5,719</td>
							</tr>
					
							<tr>
								<td>21</td>
								<td class="al_left"><a href="comm_notice_view.asp?cno=23&page=1" class="tit">HM풋살파크 시흥 GATORADE SNS 헤쉬테그 EVENT</a></td>
								<td>2021.05.25</td>
								<td class="tb">4,275</td>
							</tr>
					
							<tr>
								<td>20</td>
								<td class="al_left"><a href="comm_notice_view.asp?cno=22&page=1" class="tit">지상으로 떨어진 HM풋살파크</a></td>
								<td>2020.03.02</td>
								<td class="tb">10,548</td>
							</tr>
					
							<tr>
								<td>19</td>
								<td class="al_left"><a href="comm_notice_view.asp?cno=21&page=1" class="tit">제 2희 손흥민을 꿈꿔라! AIA W&P FC 선수 공개테스트 1기 모집</a></td>
								<td>2019.06.05</td>
								<td class="tb">3,032</td>
							</tr>
					
							<tr>
								<td>18</td>
								<td class="al_left"><a href="comm_notice_view.asp?cno=20&page=1" class="tit">[2019 플레이컵 풋살 페스티벌]</a></td>
								<td>2019.04.02</td>
								<td class="tb">8,203</td>
							</tr>
					
							<tr>
								<td>17</td>
								<td class="al_left"><a href="comm_notice_view.asp?cno=19&page=1" class="tit">[울산북구점] 불금 풋살 이벤트!</a></td>
								<td>2019.02.14</td>
								<td class="tb">3,436</td>
							</tr>
					
							<tr>
								<td>16</td>
								<td class="al_left"><a href="comm_notice_view.asp?cno=18&page=1" class="tit">[HM슈퍼메가 이벤트] 제 1회 HMSPORTS배 FIFA 도장깨깃!</a></td>
								<td>2019.01.22</td>
								<td class="tb">2,181</td>
							</tr>
					
							<tr>
								<td>15</td>
								<td class="al_left"><a href="comm_notice_view.asp?cno=17&page=1" class="tit">2019 HM풋살파크 특급 이벤트! </a></td>
								<td>2019.01.07</td>
								<td class="tb">2,712</td>
							</tr>
					
							<tr>
								<td>14</td>
								<td class="al_left"><a href="comm_notice_view.asp?cno=15&page=1" class="tit">안산 실내풋살장 HM'락'풋살파크 오픈!!</a></td>
								<td>2018.12.07</td>
								<td class="tb">3,780</td>
							</tr>
					
							<tr>
								<td>13</td>
								<td class="al_left"><a href="comm_notice_view.asp?cno=14&page=1" class="tit">[챔피언십 성인부]AIA 바이탈리티 2018 H풋살리그 전국 챔피언십 성인부 결과발표!^^</a></td>
								<td>2018.12.04</td>
								<td class="tb">1,925</td>
							</tr>
					
							<tr>
								<td>12</td>
								<td class="al_left"><a href="comm_notice_view.asp?cno=13&page=1" class="tit">[챔피언십 초등부]AIA 바이탈리티 2018 H풋살리그 전국 챔피언십 초등부 결과발표!^^</a></td>
								<td>2018.12.04</td>
								<td class="tb">1,672</td>
							</tr>
					
							<tr>
								<td>11</td>
								<td class="al_left"><a href="comm_notice_view.asp?cno=12&page=1" class="tit"> [챔피언십 성인부]AIA 바이탈리티 2018 H풋살리그 전국 챔피언십 성인부 조편성 및 대진스케줄 발표! </a></td>
								<td>2018.11.28</td>
								<td class="tb">2,712</td>
							</tr>
					
							<tr>
								<td>10</td>
								<td class="al_left"><a href="comm_notice_view.asp?cno=11&page=1" class="tit">[챔피언십 초등부]AIA 바이탈리티 2018 H풋살리그 전국 챔피언십 초등부 조편성 및 대진스케줄 발표!</a></td>
								<td>2018.11.27</td>
								<td class="tb">2,297</td>
							</tr>
					
							<tr>
								<td>9</td>
								<td class="al_left"><a href="comm_notice_view.asp?cno=9&page=1" class="tit">[대전탄방점 성인리그] 폭력 및 비신사적 행위에 따른 양팀 리그 실격패 처리</a></td>
								<td>2018.11.23</td>
								<td class="tb">2,122</td>
							</tr>
					
							<tr>
								<td>8</td>
								<td class="al_left"><a href="comm_notice_view.asp?cno=8&page=1" class="tit">[부산가야 성인리그] 부정선수 출전에 따른 해당 경기 실격패 처리 안내</a></td>
								<td>2018.11.22</td>
								<td class="tb">2,259</td>
							</tr>
					
							<tr>
								<td>7</td>
								<td class="al_left"><a href="comm_notice_view.asp?cno=7&page=1" class="tit">[서수원점 성인리그] 부정선수 출전에 따른 해당 경기 실격패 처리</a></td>
								<td>2018.11.16</td>
								<td class="tb">2,074</td>
							</tr>
					
							<tr>
								<td>6</td>
								<td class="al_left"><a href="comm_notice_view.asp?cno=6&page=1" class="tit">H-LEAGUE 주니어 그룹 부산지역 최종 우승팀 발표</a></td>
								<td>2018.11.14</td>
								<td class="tb">1,770</td>
							</tr>
					
							<tr>
								<td>5</td>
								<td class="al_left"><a href="comm_notice_view.asp?cno=5&page=1" class="tit">AIA바이탈리티 H-LEAGUE 이적시장 오픈!</a></td>
								<td>2018.11.01</td>
								<td class="tb">2,243</td>
							</tr>
					
							<tr>
								<td>4</td>
								<td class="al_left"><a href="comm_notice_view.asp?cno=4&page=1" class="tit">H-LEAGUE 부산가야점 초등부 현장 스케치</a></td>
								<td>2018.10.11</td>
								<td class="tb">2,070</td>
							</tr>
					
							<tr>
								<td>3</td>
								<td class="al_left"><a href="comm_notice_view.asp?cno=3&page=1" class="tit">AIA 바이탈리티 H-LEAGUE 서울지역 리그 대망의 START</a></td>
								<td>2018.10.02</td>
								<td class="tb">2,075</td>
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