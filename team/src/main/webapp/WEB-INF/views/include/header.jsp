<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%String id=(String)session.getAttribute("id"); %>
	<section id="header">
		<div class="header">
			<h1><a href="<%=request.getContextPath() %>"><span class="hide">HM FUTSAL PARK</span></a></h1>
			<button type="button" class="btn_nav"><span class="hide">Nav button</span></button>
<!-- 		nav 상단바 제일 끝으로 고정 수정해줌 -->
			<nav>
				<div class="nav_wrap">
					<ul>
						<li>
							<!--<a href="https://www.aia.co.kr/ko/index.html" class="aia" target="_blank"><span class="hide">AIA Vitaliity</span></a>-->
<!-- 							<a href="https://www.facebook.com/HMfutsalpark/" class="face" target="_blank"><span class="hide">facebook</span> </a> -->
<!-- 							<a href="https://www.instagram.com/hmfutsalpark/" class="insta" target="_blank"><span class="hide">instagram</span></a> -->
						</li>
						<li><a href="<%=request.getContextPath() %>/locate/locate">지점</a></li>
						<li><a href="<%=request.getContextPath() %>/reservation/select">대관</a></li>
<!-- 						<li><a href="/comm/match/match_apply.asp">매치/용병</a></li> -->
<!-- 						<li><a href="/league/league.asp" class="f_hvn">H-LEAGUE</a></li> -->
						<li><a href="<%=request.getContextPath() %>/notice/notice">고객센터</a></li>
<!-- 						<li><a href="/about/company.asp" class="f_hvn">HNS</a></li> -->
					</ul>
				</div>
				<div class="util">
					<ul>
						<c:if test="${ empty sessionScope.id }">
						<li class="login"><a href="<%=request.getContextPath() %>/member/login">MEMBER LOGIN</a> |</li>
						<li class="logout"><a href="<%=request.getContextPath() %>/member/insert">MEMBER JOIN</a> |</li>
						</c:if>
						<c:if test="${! empty sessionScope.id }">
						<li class="login"><a href="<%=request.getContextPath() %>/member/info">MEMBER INFO</a> |</li>
						<li class="logout"><a href="<%=request.getContextPath() %>/member/logout">MEMBER LOGOUT</a> |</li>
						</c:if>
<!-- 							<li class="login"> -->
						
						
<%-- 							<a href="<%=request.getContextPath() %>/member/login">MEMBER LOGIN</a> | --%>
<%-- 							<a href="<%=request.getContextPath() %>/member/logout">MEMBER LOGOUT</a> | --%>
<%-- 							<a href="<%=request.getContextPath() %>/member/info">MEMBER INFO</a></li> --%>
						
					</ul>
				</div>
			</nav>
		</div>
	</section>