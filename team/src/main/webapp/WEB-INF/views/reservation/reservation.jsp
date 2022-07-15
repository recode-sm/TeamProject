<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>BS RESERVATION</title>
   <link href="<%=request.getContextPath() %>/resources/img/logo_1m.png" rel="shortcut icon" type="image/x-icon">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

	<!-- 공통css -->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/common.css">
	<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700" rel="stylesheet">

	<!-- //공통css -->
	<!-- 공통js -->
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/libs/jquery.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/libs/jquery-ui.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/common/common.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/common/form_check.js"></script>
	<!-- //공통js -->
 
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/themes/classic.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/themes/classic.date.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/themes/classic.time.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/content.css?v=201811160138">
	
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script>
	<%
	//JSON 형식으로 달의 날자별 예약현황을 전송받음
// 	JSONArray thisMonthResData = ${dateList };
	
		//예약가능 요일 (일~월, 가능0 불가능1)
		char[] possibleDay = {'0','0','0','0','0','0','0'};
		//예약가능 시간 (start time~end time) end - start = 이용가능시
		int startTime = 8;
		int endTime = 22;
		//총 이용 가능 시간
		int totalUsingTime = endTime - startTime;
		//시간당 가격
// 		int price = 60000;
	%>

	//예약이 가득찬 날들의 배열
// 	var thisMonthFullDateList = new Array();
	// <c:forEach items="${thisMonthFullDateList}" var = "date">
//	 	thisMonthFullDateList.push(${date});
	// </c:forEach>
	// var nextMonthFullDateList = new Array();
	// <c:forEach items="${nextMonthFullDateList}" var = "date">
//	 	nextMonthFullDateList.push(${date});
	// </c:forEach>

	var thisMonthResDate = new Array();

	//date객체 획득. 가변
	var today = new Date();
	//today 보조. 고정
	var date = new Date();

	var selectedDayCell;
	var selectedTimeCell;

	//오늘에 해당하는 실제 월
	var realMonth = date.getMonth()+1; 
	var realToDay = date.getDate()

	//예약가능 요일 계산해 배열 (일~월, 가능0 불가능1)
	const possibleDay = "<%=possibleDay%>";

	//선택된 월, 일
	var selectedMonth = null;
	var selectedDate = null;

	//전달 달력
	function prevCalendar(){
		if (today.getMonth() < realMonth){
			alert("예약은 금일기준 다음날부터 30일 이후까지만 가능합니다.");	
			return false;
		}
		today = new Date(today.getFullYear(), today.getMonth()-1, today.getDate());
		buildCalendar();
	}

	//다음달 달력
	function nextCalendar(){
		if(today.getMonth()+1 == (realMonth + 1)){
			alert("예약은 금일기준 다음날부터 30일 이후까지만 가능합니다.");
			return false;
		}
		today = new Date(today.getFullYear(), today.getMonth()+1, today.getDate());
		
		buildCalendar();
	}

	//달력 제작 (이번달 기준)
	function buildCalendar(){
		row = null
		cnt = 0;
		var firstDate = new Date(today.getFullYear(), today.getMonth(), 1);
		var lastDate = new Date(today.getFullYear(), today.getMonth()+1, 0);
		
		//현재 참조중인 월 
		var nowMonth = today.getMonth()+1; //nextCalendar()에서 today 변수를 getMonth+1 했으므로 +2가 된 상황
		//이번달이면 0, 다음달이면 1 리턴
		monthEquals = thisMonth(nowMonth, realMonth);
		
		//달력 객체
		var calendarTable = document.getElementById("calendar");
		//달력의 타이틀 객체 획득
		var calendarTableTitle = document.getElementById("calendarTitle");
		//타이틀 수정
		calendarTableTitle.innerHTML = today.getFullYear()+"년"+(today.getMonth()+1)+"월";
		
		//테이블 초기화
		while(calendarTable.rows.length > 2){
			calendarTable.deleteRow(calendarTable.rows.length -1);
		}
		
		//셀 입력을 위해 테이블 개행
		row = calendarTable.insertRow();
		
		console.log(nowMonth); //선택되어있는 달력
		console.log(realMonth);
		
		//달의 첫 날 전까지 빈 셀 생성
		for(i = 0; i < firstDate.getDay(); i++){
			cell = row.insertCell();
			cnt = cnt + 1;
		}

		for(i = 1; i <= lastDate.getDate(); i++){
			
			//예약하지 못하는 조건일경우 +1씩 되므로, noCount가 0일 시에만 클릭함수를 적용
			noCount = 0;
			cell = row.insertCell();
			//cell에 id 부여
			cell.setAttribute('id', i*1);
			cell.innerHTML = i*1;
			cell.align = "center";
			
			//셀 생성 후 count 증가
			cnt = cnt + 1;
			
			//cnt % 7 == 1이면 일요일이므로 빨갛게
		    if (cnt % 7 == 1) {
		    	cell.innerHTML = "<font color=#F79DC2>" + i + "</font>";
		    }
		
		  	//일주일 입력 완료시 개행
		    if (cnt % 7 == 0){
		    	//cnt % 7 == 0이면 토요일이므로 파랗게
		    	cell.innerHTML = "<font color=skyblue>" + i + "</font>";
		    	row = calendar.insertRow();
		    }
		    
// 	         if(today.getFullYear()==date.getFullYear()&&today.getMonth()==date.getMonth()&&i==date.getDate()) 
// 	         {
// 	             cell.bgColor = "#BCF1B1"; //오늘날짜배경색
// 	         }
			
			//예약불가일 색상변경 (오늘 이전 또는 30일 이후) 및 사용자가 직접 지정한 경우
			etp = exchangeToPosibleDay(cnt)*1;
			
			if (nowMonth == realMonth && i < realToDay) {
				noCount = noCount + 1;
	   		} else if (nowMonth > realMonth && i > realToDay) {
	        	noCount = noCount + 1;
	        } else if (possibleDay[etp] == 1){
	        	noCount = noCount + 1;
	        }
			
			if (noCount > 0){
				cell.style.backgroundColor = "#E0E0E0";
				cell.innerHTML = "<font color='#C6C6C6' >" + i + "</font>";
				
			//셀 클릭
			} else {
				//클릭 시 배열 값 thisMonthResDate 저장
				$(cell).on("click", function() {
					thisMonthResDate.splice(0,thisMonthResDate.length);
					$.ajax({
						url:'${pageContext.request.contextPath}/reservation/jsonDate',
						async:false,
						data:{'date' : $("#calendarTitle").text() + this.getAttribute('id') + "일", 'num' : document.getElementById("f_num").value },
						datatype:"json",
						success:function(rdata){
							console.log(rdata);
							$.each(rdata, function(index, element){ 
									thisMonthResDate.push(element.time);
							});
						}
						,error:function(request,status,error){            
							alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);          
						}
					});
					
					//셀 클릭 시 시간 가격 초기화
					selectedTimeAndTotalPriceInit();
					
					//선택된 날의 연, 월, 일 계산 (일자의 경우 id속성 참조)
			    	clickedYear = today.getFullYear(); 
			    	clickedMonth = ( 1 + today.getMonth() );
			    	clickedDate = this.getAttribute('id');
// 			    	clickedDate = clickedDate >= 10 ? clickedDate : '0' + clickedDate;
// 			    	clickedMonth = clickedMonth >= 10 ? clickedMonth : '0' + clickedMonth;
			    	
			    	clickedYMD = clickedYear + "년" + clickedMonth + "월" + clickedDate + "일";
			
			    	//하단에 예약일시 표시
					$("#selectedDate1").text(clickedYMD);

					inputDate = document.getElementById("selectedDate2");
					inputDate.value = clickedYMD;

					//선택된 월, 일 변수 저장
					selectedMonth = today.getMonth() + 1;
					selectedDate = this.getAttribute('id');
					
					//선택되었던 셀 색 변화
					if(selectedDayCell != null){
						selectedDayCell.bgColor = "";
					}
					
					//선택한 셀 색 변화
					selectedDayCell = this;
					this.bgColor = "#fbedaa";
				
					//time table 생성
					timeTableMaker(today.getMonth() + 1,this.getAttribute('id'));
				});
			}
		}
		
		//예약이 가득찬 날인 경우 cell 비활성화 및 색상 변경
//	 	checkMonth = thisMonth(nowMonth, realMonth); 의문
// 		fullDate = [];
//	 	if(checkMonth == 0){
//	 		fullDate = thisMonthFullDateList;
//	 	}
//	 	if(checkMonth == 1){
//	 		fullDate = nextMonthFullDateList;;
//	 	}
// 		for (var i = 0; i < fullDate.length; i++){
// 			console.log("꽉 찬날 : " + fullDate[i]);
// 			cell = document.getElementById(fullDate[i]);
// 			console.log("꽉 찬날 : " + cell.innerHTML);
// 			cell.style.backgroundColor = "#E0E0E0";
// 			cell.style.color = '#C6C6C6';
// 			cell.onclick = function(){};
// 		}
		
	//달의 마지막날 뒤 행의 빈 공간을 셀로 채우기
		if(cnt % 7 != 0){
			for(i = 0; i < 7 - (cnt % 7); i++){
				cell = row.insertCell();
			}
		}
	}
		
	//사용자가 입력한 예약불가능 일자와 대조하기 위해 0~7의 환형 계산구조
	//char 타입 배열의 0, 1값을 int로 사용하기 위해 바꾼 것인듯
	function exchangeToPosibleDay(num){
		result = num % 7;
		result -= 1;
		if (result == -1) {
			result = 6;
		}
		return result; 
	}
	
	//이번달이면 0 리턴, 다음달이면 1 리턴
	function thisMonth(todayMonth, dateMonth){
		console.log("todayMonth : " + todayMonth + ", dateMonth : " + dateMonth);
		if (todayMonth*1 == dateMonth*1){
			return 0;
		} 
		return 1;
	}

	// ---------------- time table --------------------------

// 	var price = document.getElementById('tPrice').value();
	var startTime = "0";
	var endTime = "22";
	
	//선택된 시간중 가장 빠른/늦은 시간;
	var selectedFirstTime = 24*1;
	var selectedFinalTime = 0*1;

	console.log(thisMonthResDate);

	//예약시간표를 만들 table객체 획득
	//달력 onclick function => timeTableMaker(today.getMonth() + 1,this.getAttribute('id'));
	function timeTableMaker(selectedMonth, selectedDate){
		row = null
		cnt = 0;

		var timeTable = document.getElementById("timeTable");
		
		row = timeTable.insertRow();
		
		//테이블 초기화 => 실시하지 않으면 시간 테이블이 여러개 생성
		while(timeTable.rows.length > 1){
			timeTable.deleteRow(timeTable.rows.length-1);
		}
		
		//표시된 월과 실제 월 비교, 같으면 0값
		var nowMonth = today.getMonth()+1;
		checkMonth = thisMonth(nowMonth, realMonth);
		console.log(checkMonth);

		for(i = 0; i < endTime - startTime; i=i+2){
			//곱해서 숫자타입으로 변환, 시작시간
			cellTime = startTime*1 + i;		
			
			cellStartTimeText = cellTime + ":00";
			cellEndTimeText = (cellTime + 2) + ":00";
			inputCellText = cellStartTimeText + " ~ " +  cellEndTimeText;

			
			//오늘날짜 = 선택한날짜 
			if(date.getDate() == selectedDate && checkMonth == 0){
				//현재시간이 < 시작시간
				if(date.getHours() < cellTime){
					//해당 row의 셀 생성
					cell = row.insertCell();

					//cell에 cellTime 값을 가진 id 부여
					cell.setAttribute('id', cellTime);
					//셀에 입력
					cell.innerHTML = inputCellText;
		 			cell.align = "center";
			
					//셀 생성 후 count 증가
					cnt = cnt + 1;
		 			
				  	//3줄 입력 완료시 개행
				    if (cnt % 3 == 0){
				    	row = timeTable.insertRow();
				    }
				  	
				  	//클릭이벤
					$(cell).on("click", function() {
						
						cellTime = this.getAttribute('id'); //cellTime 값을 cellTime 변수에 저장
						cellTime = cellTime*1;
						
					  	//선택된 셀 색 변화
						if(selectedTimeCell != null){
							selectedTimeCell.bgColor = "";
						}
			 			
						selectedTimeCell = this;
						this.bgColor = "#fbedaa";
		
						//하단의 예약일시에 시간 표시
						selectedTime = cellTime + ":00 ~ " + (cellTime + 2) + ":00";
						
						inputTime = document.getElementById("selectedTime");
						inputTime.value = selectedTime;
					});
				  	
					//예약된 시간인 경우 셀 비활성화 및 색상 변경
					for (var s = 0; s < thisMonthResDate.length; s++){
						
						if(inputCellText == thisMonthResDate[s]){
							cell.style.backgroundColor = "#E0E0E0";
							cell.style.color = '#C6C6C6';
			 				$(cell).off("click");
						}
					}
				}		
			}else{
				//해당 row의 셀 생성
				cell = row.insertCell();
	 		
				//cell에 cellTime 값을 가진 id 부여
				cell.setAttribute('id', cellTime);
				
				//셀에 입력
				cell.innerHTML = inputCellText;
	 			cell.align = "center";
		
				//셀 생성 후 count 증가
				cnt = cnt + 1;
	 			
			  	//3줄 입력 완료시 개행
			    if (cnt % 3 == 0){
			    	row = timeTable.insertRow();
			    }

				//클릭이벤
			    $(cell).on("click", function() {
					
					cellTime = this.getAttribute('id'); //cellTime 값을 cellTime 변수에 저장
					cellTime = cellTime*1;
					
				  	//선택된 셀 색 변화
					if(selectedTimeCell != null){
						selectedTimeCell.bgColor = "";
					}
		 			
					selectedTimeCell = this;
					this.bgColor = "#fbedaa";
	
					//하단의 예약일시에 시간 표시
					selectedTime = cellTime + ":00 ~ " + (cellTime + 2) + ":00";
					
					inputTime = document.getElementById("selectedTime");
					inputTime.value = selectedTime;
					
					console.log(selectedTime);
					console.log(thisMonthResDate);
				});
				
				//예약된 시간인 경우 셀 비활성화 및 색상 변경
				for (var s = 0; s < thisMonthResDate.length; s++){
					
					if(inputCellText == thisMonthResDate[s]){
						cell.style.backgroundColor = "#E0E0E0";
						cell.style.color = '#C6C6C6';
		 				$(cell).off("click");
					}
				}
			}
		}
	}

	//날짜 클릭시 예약시간 및 결제정보 초기화
	function selectedTimeAndTotalPriceInit(){
		//날짜초기화
		$("#selectedDate1").text("");
		inputDate = document.getElementById("selectedDate2");
		inputDate.value = "";
		//시간초기화
		inputTime = document.getElementById("selectedTime");
		inputTime.value = "";
		//시간테이블 초기화
		$("#timeTable").text("");
		
		selectedFirstTime = 24*1;
		selectedFinalTime = 0*1;
	}

	//다음달 달력 표시시 시간표 초기화
	function tableinit(){
		selectedTimeAndTotalPriceInit();
		buildCalendar();
	}
	</script>

	
</head> 

<body>

<div id="wrapper">

	<!-- Skip Navigation -->
	<nav class="skip_nav">
		<a href="#container">Skip to content</a>
	</nav>
	<!-- //Skip Navigation -->
	<!-- Header -->
		<jsp:include page="../include/header.jsp"></jsp:include>
	<!-- //Header -->
<FORM name="form" method="post" action="<%=request.getContextPath() %>/reservation/reservationPro">
<input type="hidden" id="f_num" name="f_num" value="${fieldDTO.f_num }">
<input type="hidden" name="reg_date" value="2022-06-16">


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
						<source src="<%=request.getContextPath() %>/resources/files/banner/reservation1.mp4" type="video/mp4"> 
<!-- 						574 134 -->
					</video>
				
			</div>

			<div class="tab_wrap">
				<ul>
				
					<li class="on"><a href="<%=request.getContextPath() %>/reservation/select">대관예약</a></li>
					
						<li><a href="<%=request.getContextPath() %>/reservation/Check_C">예약확인</a></li>
						
				</ul>
			</div>

			<div class="rese_wrap cal">
				<h3 class="h_tit">대관예약</h3>

				<div class="fl_wrap">
					<div class="fl_left">
						<div class="thumb">
							<span class="img"><img src="<%=request.getContextPath() %>/resources/files/images/${fieldDTO.f_img }" alt="" /></span>
							<div class="tag">
							</div>
							<p class="name">${fieldDTO.f_name }</p>
						</div>

						<div class="info">
							<p class="tit">유의사항</p>
							<ul>
								<li><p><font color="#ff0000"><span style="font-size: 11pt;">
<!-- 								<b>★홈플러스 무료주차 4시간 가능, 차량 등록은 구장에 비치되어 있는 테블릿PC에 직접 입력하셔야 됩니다.(미입력으로 인한 주차비는 구장에서 책임지지 않음)★</b> -->
								</span>
								</font></p><p><b style="color: rgb(58, 50, 195); font-size: 12pt;">1. 공연이 있을 경우 공연법제11조(재해예방조치), 공연법시행령 제9조 및 재난 및 안전관리 기본법 제66조 및 동법 시행령 제73조의 9에 의거 반드시 행사개시 21일 전까지 관할구청에 재해대처계획신고를 한 후 행사를 진행하시기 바랍니다.</b></p>
								<p><span style="font-size: 11pt; color: rgb(255, 0, 0);"><b>2. 행사관련 시설사용(전기, 통신, 부속시설 등), 행사장 설치, 광고물 게재(현수막·애드벌룬 등) 등은 사전에 협의하여 주시기 바라며, 협의되지 않은 사항은 일체 할 수 없습니다.</b></span></p>
								<p><span style="font-size: 11pt;">3. 행사진행 및 경기장 출입 등 행사 참가자의 안전과 관련하여 반드시 전문 운영 및 안전요원을 배치하여야 하며, 경기장 시설설치, 비상대비 안전계획 및 주차· 차량질서 유도요원의 배치계획 등을 포함한 행사진행 세부계획서를 제출하여 주시 고, 또한 공연과 관련하여 발생하는 안전사고는 행사 주최 측에 책임이 있음을 알 려드리니 만약의 안전사고에 대비하여 행사에 따른 배상(대인· 대물)보험에 반드 시 가입하시고 가입증서를 행사 5일전까지 제출하여주시기 바랍니다.</span></p>	
								<p><span style="font-size: 11pt; color: rgb(255, 0, 0);"><b>4. 행사와 관련하여 실내체육관 내·외부를 훼손하는 일이 없도록 제반조치를 강구하여 주시고, 행사관련 시설설치(철거) 및 부속시설 지원에 관한 사항은 반드시 협의 하에 진행하시되, 시설 등 훼손 시에는 원상복구 및 변상하여야 합니다.</b></span></p>
								<p><span style="font-size: 11pt;">5. 무대설치 등은 담당부서와 협의를 거친 후 진행하시고, 시설물 훼손 또는 파손시 원상복구 및 변상하여야 합니다.</span></p>
								<p><span style="font-size: 11pt; color: rgb(255, 0, 0);"><b>6. 행사시 폭죽(휴대용 불꽃류, 불기둥, 연막라인로켓 등) 등 시설물 파손 및 경기장 관리에 지장을 주는 장비 및 물품의 사용을 금지하며, 체육시설 내에서 흡연, 화기 사용, 유류반입, 음식물 및 물품의 판매행위를 금지합니다.</b></span></p>
								<p><span style="font-size: 11pt;">6. 행사기간 중 안전을 위해 무대 등 행사관련 임시설치 시설물에 대한 지속적이고 철 저한 시설물 점검(특히, 행사 전· 후)을 하셔야 합니다.</span></p>
								<p><span style="font-size: 11pt; color: rgb(255, 0, 0);"><b>7. 행사 참가자의 안전과 관련하여 실내체육관 주경기장 관람석 수용인원을 초과하지 않도록 행사계획을 철저히 수립하여 사전에 인원통제에 만전을 기하여 주시고 행 사장 입장계획(이동 동선) 수립과 함께행사장 입장 시 그룹별 입장 유도, 입장 대기선을 만드는 등 입장 시 안전에 각별한 주의를 하셔야 합니다.</b></span></p>
								</ul>
						</div> 
					</div>

					<div class="fl_right">
						<!-- 달력 -->
						<div class="calendar_wrap">
						<div id="calendarDiv"> 
							<table id="calendar" align="center">
								<tr>
									<td align="center"><label onclick="javascript:prevCalendar(); tableinit();"> ◀ </label></td>
									<td colspan="5" align="center" id="calendarTitle">yyyy년 mm월</td>
									<td align="center"><label onclick="javascript:nextCalendar(); tableinit();"> ▶ </label></td>
								</tr>
								<tr>
									<td align="center"><font color ="#F79DC2">일</td>
									<td align="center">월</td>
									<td align="center">화</td>
									<td align="center">수</td>
									<td align="center">목</td>
									<td align="center">금</td>
									<td align="center"><font color ="skyblue">토</td>
								</tr>
								<script>buildCalendar();</script>
							</table>
						</div>
						</div>
						<!-- //달력 -->

						<div class="info_wrap">
							<div class="t_wrap">
								<span class="tit">날짜 선택</span>
								<span class="t_help"><font color=red>*날짜를 선택해주세요.</font></span>
								<span class="date" id="selectedDate1"></span>
							</div>
							
							<div class="t_wrap">
								<div>
									<span class="tit">시간 선택</span>
									<span class="t_help"><font color=red>*기본 2시간, 다중 선택은 불가능합니다.</font></span>
								</div>
									<table id="timeTable" align="center"></table>
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
										<td id = "memberName">
<!-- 										<input type="text"  name="cm_name" placeholder="이름을 입력하세요" style="width:100%"> -->
											<input type="text" name="id" readonly value="${id }" style="width:70%; border:0px;">
										</td>
									</tr>
									<tr>
										<th scope="row">연락처</th>
										<td id = "memberPhone" >
											<input type="text" name="phone" readonly value="${memberDTO.phone }" style="width:70%; border:0px;">
										</td>
									</tr>
									<tr>
										<th scope="row" >예약일자</th>
										<td>
										<input name="r_date" type="text" id="selectedDate2" value="" placeholder="선택된 날짜가 없습니다" readonly style="width:70%; border:0px;">
										
										</td>
										
									</tr>
									<tr>
										<th scope="row" >선택구장</th>
										<td id="stadiumBottom">
										<input type="text" name="f_name" readonly value="${fieldDTO.f_name }" style="width:70%; border:0px;">
										</td>
									</tr>
									<tr>
										<th scope="row">예약시간</th>
										<td><input type="text" id="selectedTime" name="time" value="" placeholder="선택된 시간이 없습니다" readonly style="width:70%; border:0px;"></td>
									</tr>
									<tr>
										<th>총 결제금액</th>
										<td>
										<input type="text" name="price" id="price" readonly value="${fieldDTO.price}" style="width:70%; border:0px;"></td>
										
									</tr>
								</tbody>
								</table>
							</div>

							<span class="chk">
								<input type="checkbox" id="chk01" title="" name="agree" value="Y">
								<label for="chk01">예약자 정보 및 환불규정/주의사항을 모두 확인 했습니다.</label>
							</span>

							<div class="btn_wrap">
								<button type="submit" class="btn_big gray">대관예약하기</button>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
			<!-- //Contents -->
	</section>
</FORM>

	<!-- Footer -->
		<jsp:include page="../include/footer.jsp"></jsp:include>
	<!-- //Footer -->
</div>

<iframe name="HiddenFrame" style="display:none;"></iframe>
</body>
</html>