<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<title>BS RESERVATION</title>
   <link href="<%=request.getContextPath() %>/resources/img/logo_1m.png" rel="shortcut icon" type="image/x-icon">
<meta charset="UTF-8">
	<title>HM FUTSAL PARK</title>
	<!-- 공통css -->
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/common.css">
	<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700" rel="stylesheet">
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
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-116234591-1');
	  
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
<style>
.but {
	display: inline-block;
	width: 125px;
	height: 40px;
	line-height: 40px;
	text-align: center;
	border-radius: 5px;
	background: #8ba6d5;
	color: #fff;
    font-size: 20px;
    line-height: 40px;
    border: 0px;
}
</style>

<!-- Global site tag (gtag.js) - Google Analytics -->

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
	<h2>구장수정</h2>
	
		<video id="video01" autoplay="" playsinline="" muted="" loop="" height="460" width="100%" title="video element"> 
			<source src="/files/banner/6202205075528114.mp4" type="video/mp4"> 
		</video>
	
</div>

			<div class="locate_wrap">
				
				<!-- 전체지점 보기 -->
				<!-- //전체지점 보기 -->
				
			</div>
				<div>	
					<form action="${pageContext.request.contextPath}/locate/fieldUpdatePro" method="post">
						<div align="center" style="width: 1100px; height: auto; margin: 0px auto; overflow: auto;" >
						
							<div style="float: left; margin-right: 100px;" align="center"  >
								<span>
									<img  id="preview" style="width:500px; height:300px; border-radius: 8px;" 
									src="${pageContext.request.contextPath}/resources/files/images/${fieldDTO.f_img}"><br>
								</span>
<!-- 								<span> -->
<!-- 									<label for="input-file" class="btn_rese">  -->
<!-- 										구장사진 등록 -->
<!-- 									</label>	 -->
<!-- 									<input type="file" name="f_img" id="input-file" onchange="readURL(this);" style="display: none;"> -->
									
<!-- 								</span> -->
							</div>
							<div style="float: left;">
								<table border="1" style="width: 500px; height: 300px;">
									<tr><th>구장정보</th><th>내용</th></tr>
									<tr><td>구장번호</td><td><input type="text" name="f_num" style="width: 100%; border: none;" value="${fieldDTO.f_num }"></td></tr>
									<tr><td>구장이름</td><td><input type="text" name="f_name" style="width: 100%; border: none;" value="${fieldDTO.f_name }" readonly></td></tr>
									<tr><td>주소(구)</td><td><input type="text" name="district" style="width: 100%; border: none;" value="${fieldDTO.district }" readonly></td></tr>
									<tr><td>상세주소</td><td><input type="text" name="f_address" style="width: 100%;" value="${fieldDTO.f_address }"></td></tr>
									<tr><td>약관</td><td><textarea rows="" cols="" name="terms" style="width: 100%;">${fieldDTO.terms }</textarea></td></tr>
									<tr><td>가격</td><td><input type="text" name="price" style="width: 100%; border: none;" value="${fieldDTO.price }" readonly></td></tr>			
								</table>
								<input type="submit" value="수정" class="but" style="margin-right: 130px; float: right;">
							</div>																											
						</div>	
					</form>					
				</div>
			
			
			

		</div>
		<!-- //Contents -->
	</section>
	<!-- Footer -->
		<jsp:include page="../include/footer.jsp"></jsp:include>
	<!-- //Footer -->
</div>

<iframe name="HiddenFrame" style="display:none;"></iframe>
</body>
</html>