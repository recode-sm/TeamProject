<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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
<!-- 						<input type="text"  name="cm_name" placeholder="이름을 입력하세요" style="width:100%"> -->
							<input type="text" name="id" readonly value="${reservDTO.id }" style="border:0 solid black;">
						</td>
					</tr>
					<tr>
					<th scope="row">연락처</th>
					<td id = "memberPhone" >
						<input type="text" name="phone" readonly value="${reservDTO.phone }" style="border:0 solid black;">
					</td>
					</tr>
					<tr>
					<th scope="row" >예약일자</th>
						<td>
						<input name="r_date" type="text" id="selectedDate2" value="${reservDTO.r_date }" readonly style="border:0 solid black;">
										
						</td>
										
					</tr>
				<tr>
					<th scope="row" >선택구장</th>
						<td id="stadiumBottom">
						<input type="text" name="f_name" readonly value="${reservDTO.f_name }" style="border:0 solid black;">
						</td>
					</tr>
					<tr>
						<th scope="row">예약시간</th>
						<td><input type="text" id="selectedTime" name="start_time" value="${reservDTO.start_time }" style="border:0 solid black;"></td>
										
					</tr>
					<tr>
						<th>총 결제금액</th>
						<td>
						<input type="text" name="price" id="price" readonly value="${reservDTO.total_price}" style="border:0 solid black;">원</td>
										
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
</body>
</html>