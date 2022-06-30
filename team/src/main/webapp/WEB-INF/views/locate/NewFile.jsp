<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
/* 	*{border: 1px solid black;} */
</style>
<script>
	  function readURL(input) {
		  if (input.files && input.files[0]) {
		    var reader = new FileReader();
		    reader.onload = function(e) {
		      document.getElementById('preview').src = e.target.result;
		    };
		    reader.readAsDataURL(input.files[0]);
		  } else {
		    document.getElementById('preview').src = "";
		  }
		}
</script>
</head>
<body>
<div align="center" style="width: 1020px; height: auto; margin: 0px auto; overflow: auto;" >

	<div style="float: left; margin-right: 20px;" align="center"  >
		<span>
			<img  id="preview" style="width:500px; height:300px; border-radius: 8px;"><br>
		</span>
		<span>
			<label for="input-file"> 
				구장사진 등록
			</label>	
			<input type="file" id="input-file" onchange="readURL(this);" style="display: none;">
			
		</span>
	</div>
	<div style="float: left;">
		<table border="1" style="width: 500px; height: 300px;">
			<tr><th>구장정보</th><th>내용</th></tr>
			<tr><td>구장번호</td><td><input type="text"></td></tr>
			<tr><td>구장이름</td><td><input type="text"></td></tr>
			<tr><td>구장종류</td><td><input type="text"></td></tr>
			<tr><td>구(지역)</td><td><input type="text"></td></tr>
			<tr><td>상세주소</td><td><input type="text"></td></tr>
			<tr><td>가격</td><td><input type="text"></td></tr>			
		</table>
		<input type="submit" value="등록">
	</div>
		<object>
			
		</object>

</div>

</body>
</html>