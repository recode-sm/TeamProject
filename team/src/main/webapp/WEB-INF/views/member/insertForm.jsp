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
	<meta name="msapplication-TileImage" content="<%=request.getContextPath() %>/resources/loginimg/ms-icon-144x144.png">
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

	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>resources/css/content.css">
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
		<div class="content">
			<div class="member_wrap">
				<h1 onclick = "document.location.href='<%=request.getContextPath() %>/';"><span class="hide">HM SPORTS</span></h1>

				<form name="frmJoin" action="<%=request.getContextPath() %>/member/insertPro" method="post" >
				<div class="join_wrap info">
					<dl>
						<dt>아이디(이메일) <span>(필수)</span></dt>
						<dd>
							<input type="text"  name="id" style="width:100%" />
							<span class="t_help">이미 사용중이거나 탈퇴한 이메일 입니다.</span>
						</dd>
						<dt>비밀번호 <span>(필수)</span></dt>
						<dd>
							<input type="password"  name="pass" style="width:100%" />
							<span class="t_help">필수 항목 입니다.</span>
						</dd>
						<dt>비밀번호 재확인 <span>(필수)</span></dt>
						<dd>
							<input type="password"  name="pass1" style="width:100%" />
							<span class="t_help">비밀번호는 숫자, 영문, 특수문자 조합으로 8~12자리를 사용해야 합니다.</span>
						</dd>
						<dt>이름 <span>(필수)</span></dt>
						<dd>
							<input type="text"  name="name" style="width:100%" />
							<span class="t_help">필수 항목 입니다.</span>
						</dd>
						<dt>휴대전화 <span>(필수)</span></dt>
						<dd> 
							<div class="phone">
							<input type="text"  name="htel1" maxlength=3 class="numberOnly" /><span>-</span>
							<input type="text"  name="htel2" maxlength=4 class="numberOnly" /><span>-</span>
							<input type="text"  name="htel3" maxlength=4 class="numberOnly" />
							<span class="t_help">필수 항목 입니다.</span>
							</div>
							<div class="auth_wrap2"> 
								<span>휴대전화 인증번호 전송</span> <button id="cnfm1" type="button" class="btn_middle" onClick="cnfm_sms();">전송</button> 
							</div>
						</dd>
						<dt>본인 문자 인증 <span>(필수)</span></dt>
						<dd>
							<div class="auth_wrap">
								<input type="text" id="sms_cnfm" title="" name="sms_cnfm" placeholder="인증번호 입력"/> 
								<button id="cnfm2" type="button" class="btn_middle" onClick="cnfm_sms_no();" >인증</button>
								<span id="mail_cnfm_success" class="succes">인증성공!</span> 
								<span id="mail_send_success" class="t_help">본인확인용 인증번호를 문자로 발송했습니다.(유효시간 30분)<br />인증번호가 오지 않으면 입력하신 정보가 정확한지 확인하여 주세요.</span>
							</div>
						</dd>
 					</dl>
<script>
function cnfm_sms(){ 
	var frm = document.frmJoin;
 
	if (frm.htel1.value == "") {
		alert("[휴대전화]을 입력하세요.");
		frm.htel1.focus();
		return;
	} 

	if (frm.htel2.value == "") {
		alert("[휴대전화]을 입력하세요.");
		frm.htel2.focus();
		return;
	} 

	if (frm.htel3.value == "") {
		alert("[휴대전화]을 입력하세요.");
		frm.htel3.focus();
		return;
	} 
	var htel = frm.htel1.value+frm.htel2.value+frm.htel3.value
	window.open("join_confirm_sms_send.asp?htel="+htel,"HiddenFrame");
}
function cnfm_sms_no(e){ 
	var frm = document.frmJoin;
 
	if (frm.sms_cnfm.value == "") {
		alert("[문자 인증 수신번호]을 입력하세요.");
		frm.sms_cnfm.focus();
		return;
	}  

	window.open("join_confirm_sms_ok.asp?sms_cnfm="+frm.sms_cnfm.value  ,"HiddenFrame");
} 

function not_sms_cnfmed(){
	$("#sms_cnfm").val('');
	$("#sms_cnfm").focus();
}
</script>
					<div class="btn_wrap">
<<<<<<< HEAD
						<input type="button" class="btn_middle"  onclick="checkForm()" value="가입하기">
=======
						<input type="button" class="btn_middle" onCLick="checkForm();" value="가입하기">
>>>>>>> a5e61538dcbcb65e7938992fd593f2bfdd1fd8eb
					</div>
					
					</form>

					<div class="bot_info">
						<span class="logo"><em class="hide">HM SPORTS</em></span>
						<p class="copy">COPYRIGHT©  HM SPORTS. ALLRIGHT RESERVED</p>
					</div>


				</div>
			</div>

			<!-- Layer popup - 가입완료 -->
			<div class="layer_popup find" id="">
				<div class="layer_cont">
					<div class="find_comp comp">
						<p><em>흠스포</em>님 회원가입을 축하합니다.<br />회원님의 아이디는 <span>hmsports1</span> 입니다.</p>

						<div class="btn_wrap">
							<button type="button" class="btn_middle">확인</button>
						</div>
					</div>
				</div>
			</div>
			<!-- //Layer popup - 가입완료 -->

			<div class="layer_dim"></div>

		</div>
		<!-- //Contents -->
	</section>

 
<SCRIPT>
function CheckEmail(mStr){
	var frm = document.frmJoin;
	if (mStr !== "etc") {
		frm.email2.readOnly = true;
		frm.email2.value = mStr;
	} else {
		frm.email2.value = "";
		frm.email2.readOnly = false;
		frm.email2.focus();
	}
}

function checkForm(){
	var frm = document.frmJoin;
 
	if (frm.id.value == "") {
		alert("[이메일]을 입력하세요.");
		frm.id.focus();
		return;
	}
	if (EmptyChk(frm.pass.value) < 4) {
		alert("[비밀번호]는 4이상 입력되어야 합니다.");
		frm.pass.focus();
		return;
	}
	if (EmptyChk(frm.pass.value) < 4) {
		alert("[비밀번호]는 4이상 입력되어야 합니다.");
		frm.pass.focus();
		return;
	}
	if (frm.pass.value !== frm.pass1.value) {
		alert("[비밀번호]가 일치하지 않습니다.");
		frm.pass1.focus();
		return;
	}
	if (frm.name.value == "") {
		alert("[이름]을 입력하세요.");
		frm.name.focus();
		return;
	}  
	if (frm.htel1.value == "") {
		alert("[핸드폰번호]를 입력하세요.");
		frm.htel1.focus();
		return;
	}
	if (frm.htel2.value == "") {
		alert("[핸드폰번호]를 입력하세요.");
		frm.htel2.focus();
		return;
	}
	if (frm.htel3.value == "") {
		alert("[핸드폰번호]를 입력하세요.");
		frm.htel3.focus();
		return;
	} 
	/*
	if (CheckEmailTail(frm.email1.value) == false) {
		alert("[이메일] 형식이 맞지 않습니다.");
		frm.email1.value = "";
		frm.email1.focus();
		return;
	}
	if (CheckEmailTail(frm.email2.value) == false) {
		alert("[이메일] 형식이 맞지 않습니다.");
		frm.email2.value = "";
		frm.email2.focus();
		return;
	}
	*/
 
	frm.target="HiddenFrame";
	frm.submit();
}
//-->
</SCRIPT>

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