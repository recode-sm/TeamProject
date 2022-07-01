<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<section id="header">
		<div class="header">

			<nav>
				<div class="nav_wrap">
					<ul>
						<li><a href="<%=request.getContextPath() %>/locate/locate">지점</a></li>
						<li><a href="<%=request.getContextPath() %>/reservation/reservation">대관</a></li>
						<li><a href="/comm/match/match_apply.asp">매치/용병</a></li>				
						<li><a href="/league/league.asp" class="f_hvn">H-LEAGUE</a></li>
						<li><a href="<%=request.getContextPath() %>/notice/notice">고객센터</a></li>
						<li><a href="/about/company.asp" class="f_hvn">HNS</a></li>
					</ul>
				</div>
				<div class="util">
					<ul>

						<li class="login"><a href="<%=request.getContextPath() %>/member/login">MEMBER LOGIN</a></li>
						
					</ul>
				</div>
			</nav>
		</div>
	</section>