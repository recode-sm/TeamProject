<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
</head>
<body>
<div style="border: 1px solid black; width: auto;   padding: 0px;">
				
					<div class="이미지 등록" style="float: left; margin-right: 200px;" >
						<span style="width: 500px;">
							<img  id="preview" style="width:430px; height:270px;"><br>
						</span>
						<span>
							<label for="input-file">
							  구장사진 등록
							</label>	
										
							<input type="file" id="input-file" onchange="readURL(this);" style="display: none;"> 
						</span>
					</div>
					
					<div class="입력">
						<table style="width: 500px;" class="t_wrap" border="1">
											<tr><th>구장정보</th><th>내용</th></tr>
											<tr><td>구장이름</td><td><input type="text"></td></tr>
											<tr><td>구장종류</td><td><input type="text"></td></tr>
											<tr><td>구(지역)</td><td><input type="text"></td></tr>
											<tr><td>상세주소</td><td><input type="text"></td></tr>
											<tr><td>가격</td><td><input type="text"></td></tr>
											<tr><td colspan="2" style="margin: 0px auto;"><input type="submit" value="등록"></td></tr>
						</table>
					</div>
					
				</div>
</body>
</html>