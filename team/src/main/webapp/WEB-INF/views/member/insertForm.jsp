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

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/content.css">
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                
       
                var guideTextBox = document.getElementById("guide");
              
            }
        }).open();
    }
    
  </script>
	<script type="text/javascript">
	$(document).ready(function() {
		$('html').addClass('memb');
	});
	
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
			return false;
		}
		var pos2 = frm.id.value.indexOf('@');
		if (pos2 == -1) {
			alert("[이메일]을 형식 입력하세요.");
			frm.id.focus();
			return false;
		}
		
		if (frm.pass.value.length < 4) {
			alert("[비밀번호]는 4이상 입력되어야 합니다.");
			frm.pass.focus();
			return false;
		}
		if (frm.pass.value != frm.pass1.value) {
			alert("[비밀번호]가 일치하지 않습니다.");
			frm.pass1.focus();
			return false;
		}
		if (frm.name.value == "") {
			alert("[이름]을 입력하세요.");
			frm.name.focus();
			return false;
		}
		if (frm.phone.value == "") {
			alert("[핸드폰번호]를 입력하세요.");
			frm.phone.focus();
			return false;
		}
		if (frm.postcode.value==""){
			alert("[주소]를 입력하세요.");
			frm.postcode.focus();
			return false;
		}
		frm.submit();
	}


</script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/jquery-3.6.0.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	// id="dup" 클릭했을때  dupcheck2.jsp 페이지에 id="id" val() 값을 가지고 가서
	// 아이디 중복체크한 출력결과를 가져와서 id="dupdiv"에 출력
	$('#id').keyup(function(){

		$.ajax({
			url:'${pageContext.request.contextPath}/member/dupcheck',
			type:'GET',
			data:{'id':$('#id').val()},
			success:function(rdata){
				if(rdata=="iddup"){
					
					rdata="아이디 중복";
				}else{
					rdata="아이디 사용가능";
					
				}
				$('#dupdiv').html(rdata);
			}
		});
	});
});
</script>

</head>



<body>
<div id="wrapper"> 

	<section id="container">
		<!-- Contents -->
		<div class="content">
			<div class="member_wrap">
				<h1 onclick ="document.location.href='<%=request.getContextPath() %>/';"><span class="hide">HM SPORTS</span></h1>

				<form name="frmJoin" action="<%=request.getContextPath() %>/member/insertPro" method="post" >
				<div class="join_wrap info">
					<dl>
					
						<dt>아이디(이메일) <span>(필수)</span></dt>
						<dd>
							<input type="text"  id="id" name="id" style="width:100%" placeholder="ex) kim@gmail.com, kim@naver.com"/>
							<div id="dupdiv"></div>
	
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
							<input type="text"  name="phone" placeholder="ex) 010-1234-5678" style="width:100%" />
							<span class="t_help">필수 항목 입니다.</span>
						</dd>
						
						<dt>주소 <span>(필수)</span></dt>
						<dd>
							<input type="text" name="postcode" id="sample4_postcode" placeholder="우편번호" style="width:50%">
							<input type="button" value="주소검색" onclick="sample4_execDaumPostcode()" style="width:15%">
						</dd>
						<dd> 
							<input type="text" name="address" id="sample4_roadAddress" style="width:100%">
							<span class="t_help">필수 항목 입니다.</span>
						</dd>
						
						<dt>상세주소 <span>(선택)</span></dt>
						<dd>
							<input type="text"  name="address2" style="width:100%" />
						</dd>
 					</dl>
 					</div>
 					
					<div class="btn_wrap">
						<input type="button" class="btn_middle"  onclick="checkForm()" value="가입하기">
					</div>
					</form>
					
					<div class="bot_info">
						<span class="logo"><em class="hide">HM SPORTS</em></span>
						<p class="copy">COPYRIGHT©  HM SPORTS. ALLRIGHT RESERVED</p>
					</div>
				</div>
			</div>
	</section>
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