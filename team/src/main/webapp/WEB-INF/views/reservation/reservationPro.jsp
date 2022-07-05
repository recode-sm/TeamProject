<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/common.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/themes/classic.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/themes/classic.date.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/themes/classic.time.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/content.css?v=201811160138">
<meta charset="UTF-8">
<title>reservationPro</title>
</head>
<body>
<FORM>
	<section id="container">
		<!-- Contents -->
		<div class="content">
			<div class="rese_wrap cal">
				<div class="fl_wrap">
					<div class="fl_right">
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
											<input type="text" name="id" readonloy value="${id}">
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
											<input type="text" name="phone" readonloy value="${memberDTO.phone}">
										</td>
									</tr>
									<tr>
										<th scope="row" >예약일자</th>
										<td>
										<input name="r_date" type="text" id="selectedDate2" value="" readonly>
										
										</td>
										
									</tr>
									<tr>
										<th scope="row" >선택구장</th>
										<td id="stadiumBottom">
										<input type="text" name="f_name" readonly value="${fieldDTO.f_name}">
										</td>
									</tr>
									<tr>
										<th scope="row">예약시간</th>
										<td><input type="text" id="selectedTime" name="start_time" value="선택된 시간이 없습니다"></td>
										
									</tr>
									<tr>
										<th>총 결제금액</th>
										<td>
										<input type="text" name="price" id="price" readonly value="${fieldDTO.price}">원</td>
										
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

							<span class="chk">
								<input type="checkbox" id="chk01" title="" name="agree" value="Y">
								<label for="chk01">예약자 정보 및 환불규정/주의사항을 모두 확인 했습니다.</label>
							</span>

							<div class="btn_wrap">
								<button type="submit" class="btn_big gray">결제하기</button>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
			<!-- //Contents -->
	</section>
</FORM>
</body>
</html>