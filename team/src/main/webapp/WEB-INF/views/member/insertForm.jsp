<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 
<meta charset="UTF-8">
<title>회원 가입</title>
<script type="text/javascript">

function insertForm(){
	
	var id = $("#id").val();
	var pass = $("#pass").val();
	var passCheck = $("#passCheck").val();
	var name = $("#name").val();
	var phone = $("#phone").val();
	var address = $("#address").val();

	
	if(!id){
		alert("아이디 입력은 필수입니다.");
		$("#id").focus();
	}else if(!pass){
		alert("비밀번호 입력은 필수입니다.");
		$("#pass").focus();
	}else if(!passCheck){
		alert("비밀번호 확인 입력은 필수입니다.");
		$("#passCheck").focus();
	}else if(pass != passCheck){
		alert("비밀번호가 맞지 않습니다.");
		$("#passCheck").focus();		
	}else if(!name){
		alert("이름 입력은 필수입니다.");
		$("#name").focus();
	}else if(!phone){
		alert("전화번호 입력은 필수입니다.");
		$("#phone").focus();
	}else if(!address){
		alert("주소 입력은 필수입니다.");
		$("#address").focus();
	}else {
		loginForm()
	}
	
}

function insertForm(){
	
	$.ajax({
		
		url : "/jquery/signUp",
		type:'POST',
		data :  $("#registerform").serialize(),
		success:function(data){
			if(data == 1){
				alert("회원가입이 완료됐습니다.^^");
				location.href = "/member/loginForm"
			}else if(data == 2){
				alert("이미 존재하는 아이디입니다.");
				return false;
			}else if(data == 3){
				alert("이미 존재하는 닉네임입니다.");
				return false;
			}
		}
		
	})
}

</script>
</head>
<body style="background-color:#f0f5f3">
<form action="<%=request.getContextPath() %>/member/insertPro" method="post">
        <div class="fieldlabel"><label for="id">*아이디</label></div>
        <div class="formfield"><input type="text" id="id" name="id" maxlength="20" value=""></div>
        
        <div class="fieldlabel"><label for="pass">*패스워드</label></div>
        <div class="formfield">
<input type="password" id="pass" name="pass" maxlength="20" autocomplete="off">
</div>

        <div class="fieldlabel"><label for="passCheck">패스워드확인</label></div>
        <div class="formfield">
        
<input type="password" id="passCheck" name="passCheck" maxlength="20" autocomplete="off">
</div>
<!-- 닉네임 → 이름으로 수정 -->
        <div class="fieldlabel"><label for="name">*이름</label></div>
        <div class="formfield"><input type="text" id="name" name="name" maxlength="20" value=""></div>

<!-- 전화번호, 소속팀, 우편번호, 주소 추가 -->
<!-- 필수 요건 : +전화번호, -email, +주소  -->
		<div class="fieldlabel"><label for="phone">*전화번호</label></div>
		<div class="formfield"><input type="text" id="phone" name="phone" maxlength="20" value=""></div>
	
		<div class="fieldlabel"><label for="team">소속팀</label></div>
		<div class="formfield"><input type="text" id="team" name="team" maxlength="20" value=""></div>
        
        <div class="fieldlabel"><label for="email">이메일</label></div>
        <div class="formfield"><input type="text" id="email" name="email" size="20" maxlength="20" 
             value="" autocomplete="off"><span>@</span>
            <input id="domain" list="domains" name="domain" placeholder="도메인입력/선택">
            <datalist id="domains">
                <option value="naver.com">
                <option value="daum.net">
                <option value="gmail.com">
                <option value="yahoo.co.kr">
            </datalist>
        </div>
        
        <div class="fieldlabel"><label for="postcode">우편번호</label></div>
        <div class="formfield"><input type="text" id="postcode" name="postcode" size="20" maxlength="20" value=""></div>    
        <div class="fieldlabel"><label for="address">*주소</label></div>
        <div class="formfield"><input type="text" id="address" name="address" size="20" maxlength="40"  value=""></div>
       
        <div class="btnfield">
            <input type="submit" onclick="insertForm()" value="회원가입">
        </div>
    </form>
</body>
</html>