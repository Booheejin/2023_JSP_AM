<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<h1>회원가입</h1>
	
	<script>
		
		function JoinForm_Submit(form){
			
			form.loginId.value = form.loginId.value.trim();
			form.loginPw.value = form.loginId.value.trim();
			form.loginPwChk.value = form.loginId.value.trim();
			form.name.value = form.loginId.value.trim();
			
			if(form.loginId.value.length == 0){
				alert('아이디를 입력해주세요');
				form.loginId.focus();
				return;
			}
			
			if(form.loginPw.value.length == 0){
				alert('비밀번호를 입력해주세요');
				form.loginPw.focus();
				return;
			}
			
			if(form.loginPwChk.value.length == 0){
				alert('비밀번호 확인을 입력해주세요');
				form.loginPwChk.focus();
				return;
			}
			
			if(form.name.value.length == 0){
				alert('이름을 입력해주세요');
				form.name.focus();
				return;
			}
			if(form.loginPw.value != form.loginPwChk.value){
				alert('비밀번호를 확인해주세요');
				form.loginPw.focus();
				return;
			}
			form.submit();
		}
	</script>

	<form action="dojoin" method="POST" onsubmit="JoinForm_Submit(this); return false;">
		<div>
			로그인 아이디 : <input type="text"  name="loginId" placeholder="아이디을 입력해주세요" autocomplete="off"/>
		</div>
		<div>
			로그인 비밀번호 : <input type="password"  name=loginPw placeholder="비밀번호을 입력해주세요"/>
		</div>
		<div>
			로그인 비밀번호 확인: <input type="password"  name="loginPwChk" placeholder="비밀번호 확인을 입력해주세요"/>
		</div>
		<div>
			이름 : <input type="text"  name="name" placeholder="이름을 입력해주세요"/>
		</div>

		<button>가입</button>
	</form>
	<div>
		<a href="../home/main">취소</a>
	</div>
</body>
</html>