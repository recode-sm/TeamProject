<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>BS RESERVATION</title>
   <link href="<%=request.getContextPath() %>/resources/img/logo_1m.png" rel="shortcut icon" type="image/x-icon">
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
	<link rel="apple-touch-icon"  sizes="60x60" href="/favicon/apple-icon-60x60.png">
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
	
	
	
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>

	
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
				<h2>예약확인</h2>
				
					<video id="video01" autoplay="" playsinline="" muted="" loop="" height="460" width="100%" title="video element"> 
						<source src="<%=request.getContextPath() %>/resources/files/banner/reservation1.mp4" type="video/mp4"> 
<!-- 						574 134 -->
					</video>
				
			</div>
			<div class="tab_wrap">
				<ul>
				
					<li><a href="<%=request.getContextPath() %>/reservation/select">대관예약</a></li>
					
					<li class="on"><a href="<%=request.getContextPath() %>/reservation/Check_C">예약확인</a></li>
						
				</ul>
			</div>

						<div class="int_wrap">
							<div class="table_wrap">
								<table>
								<colgroup>
									<col style="width:25%" />
									<col style="" />
								</colgroup>
								<tbody>
									<tr>
										<th scope="row">신청자</th>
										<td id = "memberName">
					
<!-- 										<input type="text"  name="cm_name" placeholder="이름을 입력하세요" style="width:100%"> -->
											<input type="text" name="id" readonly value=${reservList.id } style="border:0 solid black;">
										</td>
									</tr>
									<tr>
										<th scope="row">연락처</th>
										<td id = "memberPhone" >
<!-- 											<div class="phone"> -->
<!-- 											<input type="text"  name="htel1" maxlength=3 value="" class="numberOnly" /><span>-</span> -->
<!-- 											<input type="text"  name="htel2" maxlength=4 value="" class="numberOnly" /><span>-</span> -->
<!-- 											<input type="text"  name="htel3" maxlength=4 value="" class="numberOnly" /> -->
<!-- 											</div> -->
											<input type="text" name="phone" readonly value=${reservList.phone } style="border:0 solid black;">
										</td>
									</tr>
									<tr>
										<th scope="row" >예약일자</th>
										<td>
										<input name="r_date" type="text" id="selectedDate2" value=${reservList.r_date } readonly style="border:0 solid black;">
										
										</td>
										
									</tr>
									<tr>
										<th scope="row" >선택구장</th>
										<td id="stadiumBottom">
										<input type="text" name="f_name" readonly value=${reservList.f_name } style="border:0 solid black;">
										</td>
									</tr>
									<tr>
										<th scope="row">예약시간</th>
										<td><input type="text" id="selectedTime" name="start_time" value=${reservList.time } style="border:0 solid black;"></td>
										
									</tr>
									<tr>
										<th>총 결제금액</th>
										<td>
										<input type="text" name="price" id="price" readonly value="${reservList.price}" style="border:0 solid black;">원</td>
										
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
						</div>
					</div>
			</section>
				</div>
		
			<!-- //Contents -->


<script>
// $(function(){
// 	getCalendar('2022-06-16'); 
// 	getTime();
// });

// function addCommas(str){
// 	str = ""+str+"";
// 	var retValue = "";
// 	for(i=0; i<str.length; i++){
// 		if(i > 0 && (i%3)==0) {
// 			retValue = str.charAt(str.length - i -1) + "," + retValue;
// 		}
// 		else {
// 			retValue = str.charAt(str.length - i -1) + retValue;
// 		}
// 	}
// 	return retValue;
// }

// function delCommas(str){
// 	str = ""+str+"";
// 	var retValue = "";
// 	retValue = str.replace(",","");
// 	retValue = retValue.replace(",",""); 
// 	return retValue;
// }

// function getCalendar(v){
// 	var stadium_code = document.form.stadium_code.value; 
// 	$.get("ajax_calendar.asp?stadium_code="+stadium_code+"&reqdate="+v , function(r){ 
// 		$("#calendarDiv").html(r);
// 	});
// }

// function getCalendarByStadium(e){
// 	var stadium_code = e.value;
// 	var v; 
// 	v = $("#regdate").text();
// 	v = v.replace(".","-");
// 	v = v.replace(".","-"); 
 
// 	$.get("ajax_calendar.asp?stadium_code="+stadium_code+"&reqdate="+v , function(r){ 
// 		$("#calendarDiv").html(r);
// 	});
// }

// function getTime(){
// 	var reqdate = document.form.reg_date.value;
// 	var stadium_code = document.form.stadium_code.value;
// 	//window.open("ajax_time.asp?reqdate="+reqdate+"&stadium_code="+stadium_code );
// 	$.get("ajax_time.asp?reqdate="+reqdate+"&stadium_code="+stadium_code+"&branch_code=HM0009", function(r){ 
// 		$("#timeDiv").html(r);
// 		calc();
// 	}); 
// } 

// function showStadiumName(e){
// 	$("#stadiumBottom").text($(e).find("option[value='" + $(e).val() + "']").text());
// }

// function chgDate(e, v){
// 	var nv = v.replace("-",".");
// 	nv = nv.replace("-",".");
// 	$("#regdate").text(nv);
// 	$("#dateBottom").text(nv);
// 	document.form.reg_date.value=v;
// 	getTime(); 
// 	$(".buts").removeClass("on");
// 	$(e).parent().children(".buts").addClass("on");
// }

// function setTime(e){ 
// 	if ($(e).parent().children(".r_time_no_check").prop("checked"))
// 	{
// 		$(e).removeClass("on");
// 		$(e).parent().children(".r_time_no_check").prop("checked",false);
// 	}else{
// 		$(e).addClass("on");
// 		$(e).parent().children(".r_time_no_check").prop("checked",true);

// 	}
// 	calc();
// }

// function calc(){
// 	var rent_price = 0 ;
// 	var rent_count = 0 ;
// 	var shour
// 	var timestr = "";
// 	var optstr = "";

// 	$(".r_time_no_check:checkbox:checked").each(function(){
// 		rent_price = rent_price + parseInt($(this).attr("alt"));

// 		var t = $(this).val().split("|");
// 		var stime = t[1];
// 		var etime = t[2];
// 		timestr = timestr + stime + "~" + etime + "<BR>";

// 		rent_count ++;
// 	});

// 	var option_price = 0 ;
// 	$(".opt_total").each(function(){
// 		option_price = option_price + parseInt($(this).val()); 
// 	});
	
// 	$(".opt_cnt").each(function(){
// 		if (parseInt($(this).val())>0)
// 		{
// 			optstr = optstr + $(this).parent().children(".opt_name").val() + " : " + $(this).val() + "<BR>"; 
// 		}
// 	});

// 	var total_price = rent_price + option_price;

// 	$("#rentPriceView").text(addCommas(rent_price));
// 	$("#rentCountView").text(addCommas(rent_count));
// 	$("#optionPriceView").text(addCommas(option_price)); 
// 	$("#totalPriceView").text(addCommas(total_price));

// 	$("#priceBottom").text(addCommas(total_price));
// 	$("#timeBottom").html(timestr);
// 	$("#optionBottom").html(optstr);
// 	document.form.total_price.value=total_price;
// }

// function selOpt1(e){
// 	var c;
// 	var opts = e.value;  
// 	var optArr = opts.split("||");
// 	$(e).parent().parent().children(".opt_idx").val(optArr[0]); 
// 	$(e).parent().parent().children(".opt_price").val(optArr[1]);  
// 	$(e).parent().parent().children(".opt_name").val(optArr[2]);  
// 	var price = parseInt(optArr[1]); 

// 	var cnt = parseInt($(e).parent().parent().children(".opt_c").val()); 
// 	$(e).parent().parent().children(".price").children(".priceView").text(addCommas(price*cnt)); 
// 	$(e).parent().parent().children(".opt_total").val(price*cnt);  

// 	c = e.text();
// 	$(e).parent().parent().find("label").text(c);

// 	calc();
// }
// function selOpt2(e){
// 	var cnt = parseInt(e.value);  
// 	$(e).parent().children(".opt_cnt").val(cnt);  

// 	var price = parseInt($(e).parent().children(".opt_price").val()); 
// 	$(e).parent().children(".price").children(".priceView").text(addCommas(price*cnt)); 
// 	$(e).parent().children(".opt_total").val(price*cnt);  
	
// 	calc();
// }

// function cloneOpt(e, v){  
// 	var a,b;

// 	a=$(".opt_list").length;
// 	a++;

// 	var clon = $(e).parent().parent().parent().clone();

// 	clon.find("label").attr("for","opt"+a);
// 	clon.find("select").attr("id","opt"+a);

//  	clon.find(".opt_idx").val("");
// 	clon.find(".opt_name").val("");
// 	clon.find(".opt_price").val("0");
// 	clon.find(".opt_cnt").val("0");
// 	clon.find(".opt_c").val("0"); 
// 	clon.find(".priceView").text("0"); 

// 	clon.attr('data-id', 1);

// 	b = clon.find("select option:eq(0)").text();
// 	clon.find("select option:eq(0)").prop("selected", true);
// 	clon.find("label").text(b);

// 	$(e).parent().parent().parent().parent().append(clon);  
// }
// function removeOpt(e){
// 	var a =$(e).parent().parent().parent().attr("data-id");
// 	if(a > 0) {
// 		$(e).parent().parent().parent().remove(); 
// 		calc();
// 	}
// }

// function tog(v){
// 	$("."+v).toggle();
// }

// function ok(){ 
// 	document.form.target="HiddenFrame";
// 	document.form.action="rese_form_ok.asp";
// 	document.form.submit();
// }

</script>
	<!-- Footer -->
		<jsp:include page="../include/footer.jsp"></jsp:include>
	<!-- //Footer -->
</div>

<iframe name="HiddenFrame" style="display:none;"></iframe>
</body>
</html>