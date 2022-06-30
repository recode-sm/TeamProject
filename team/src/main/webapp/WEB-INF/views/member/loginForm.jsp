<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	<title>HM FUTSAL PARK</title>
	<meta name="keywords" content="HM FUTSAL PARK">
	<meta name="description" content="�����̾� ǲ���� HMǲ����ũ, ���� 11�� ����, ��� ����, ���� �Ը� �� ��ȸ �� ���� ��ȸ ����">
	<meta property="og:type" content="website">
	<meta property="og:image" content="https://hmfutsalpark.com/images/common/link_profile.png">
	<meta property="og:title" content="HM FUTSAL PARK">
	<meta property="og:description" content="�����̾� ǲ���� HMǲ����ũ">
	<meta property="og:url" content="https://hmfutsalpark.com">
	<meta http-equiv="X-UA-Compatible" content="IE=chrome">

	<!-- ����css -->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/common.css">
	<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700" rel="stylesheet">

	<link rel="apple-touch-icon" sizes="57x57" href="<%=request.getContextPath() %>/resources/loginimg/apple-icon-57x57.png">
	<link rel="apple-touch-icon" sizes="60x60" href="<%=request.getContextPath() %>/resources/loginimg/apple-icon-60x60.png">
	<link rel="apple-touch-icon" sizes="72x72" href="<%=request.getContextPath() %>/resources/loginimg/apple-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="76x76" href="<%=request.getContextPath() %>/resources/loginimg/apple-icon-76x76.png">
	<link rel="apple-touch-icon" sizes="114x114" href="<%=request.getContextPath() %>/resources/loginimg/apple-icon-114x114.png">
	<link rel="apple-touch-icon" sizes="120x120" href="<%=request.getContextPath() %>/resources/loginimg/apple-icon-120x120.png">
	<link rel="apple-touch-icon" sizes="144x144" href="<%=request.getContextPath() %>/resources/loginimg/apple-icon-144x144.png">
	<link rel="apple-touch-icon" sizes="152x152" href="<%=request.getContextPath() %>/resources/loginimg/apple-icon-152x152.png">
	<link rel="apple-touch-icon" sizes="180x180" href="<%=request.getContextPath() %>/resources/loginimg/apple-icon-180x180.png">
	<link rel="icon" type="image/png" sizes="192x192"  href="<%=request.getContextPath() %>/resources/loginimg/android-icon-192x192.png">
	<link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath() %>/resources/loginimg/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="96x96" href="<%=request.getContextPath() %>/resources/loginimg/favicon-96x96.png">
	<link rel="icon" type="image/png" sizes="16x16" href="<%=request.getContextPath() %>/resources/loginimg/favicon-16x16.png">
	<link rel="manifest" href="/favicon/manifest.json">
	<meta name="msapplication-TileColor" content="#2c3c57">
	<meta name="msapplication-TileImage" content="/resources/loginimg/ms-icon-144x144.png">
	<meta name="theme-color" content="#2c3c57">
	<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
	<!--[if lt IE 9]><script type="text/javascript" src="/js/libs/html5.js"></script><![endif]-->
	<!--[if lt IE 9]><script type="text/javascript" src="/js/libs/respond.min.js"></script><![endif]-->

	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/libs/jquery.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/common/common.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/common/form_check.js"></script>
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-116234591-1"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-116234591-1');
	</script>
	<!-- Global site tag (gtag.js) - Google Analytics -->

	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/content.css">
</head>

<script language="Javascript">
	$(document).ready(function() {
		$('html').addClass('memb');
	});
</script>

<body>
<div id="wrapper"> 

	<section id="container">
		<!-- Contents -->
		<form name=frmLogin id="login_ok.asp" action="<%=request.getContextPath() %>/member/loginPro" method="post">
			<input type=hidden name=c_type value="">
		<div class="content">
			<div class="member_wrap">
				<h1 onclick="document.location.href='<%=request.getContextPath() %>/';"><span class="hide">HM SPORTS</span></h1>
				<div class="login_wrap">
					<dl>
						<dt><label for="id">아이디</label></dt>
						<dd><input type=text name='id' value="" size='120' maxlength='120' style='width:100%' placeholder='이메일' tabindex=1></dd>
						<dt><label for="pass">패스워드</label></dt>
						<dd><input type=password name='pass' value="" size='12' maxlength='50' style='width:100%' placeholder='비밀번호' tabindex=2></dd>
					</dl> 
						<span class="chk"><input type="checkbox" name="id_mem" checked id="idsave"><label for="idsave">아이디 저장</label></span>
						<input type="submit" value="로그인" class="btn_middle">
<!-- 						<a href="#" onclick="OLoginM();" class="btn_middle" >로그인</a> -->
					<div class="btn_wrap">
						<a href="insert" class="join">회원가입</a>
					</div>
				</div>
			</div>
		</div>
	</form>
</section>

<script type="text/javascript">
function OLoginM() { 
	var str = EmptyChk(document.frmLogin.id.value);
	var str2 = EmptyChk(document.frmLogin.pass.value);
	if (str < 3) {
		alert("아이디를 입력하여 주십시오.");
		document.frmLogin.id.focus();
		return false;
	}
	else if (str2 < 4) {
		alert("비밀번호를 입력하여 주십시오.");
		document.frmLogin.pass.focus();
		return false; 
	}
	document.frmLogin.target="HiddenFrame";
	document.frmLogin.submit();

}
</script>
	<!-- Footer -->
	<footer id="footer">
		<div class="footer_wrap">
			<span class="logo"></span>
			<p class="info">서울시 성동구 왕십리로 58 FORHU 709호(성수동 1가)<span>TEL : 02-332-7807</span><span>FAX : 02-2061-0373</span></p>
			<p class="copy">COPYRIGHTⓒHNS. ALLRIGHT RESERVED</p>
		</div>
	</footer>
	<!-- //Footer -->
</div>

<iframe name="HiddenFrame" style="display:none;"></iframe>
</body>
</html>