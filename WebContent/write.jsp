<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>

<html>

<head>

<meta charset='utf-8'>

<title>write</title>

<style>
html, body {
	width: 700px;
	height: 900px;
	font-size: 20px;
}

header {
	display: inline-block;
	width: 700px;
	height: 60px;
	float: left;
	background-color: lightpink;
	text-align: center;
}

nav {
	display: inline-block;
	width: 700px;
	height: 50px;
	float: left;
	background-color: lightgray;
	text-align: left;
}

section {
	display: inline-block;
	width: 700px;
	height: 400px;
	float: left;
	background-color: lightyellow;
	text-align: center;
}

footer {
	display: inline-block;
	width: 700px;
	height: 70px;
	float: left;
	background-color: lightgray;
	text-align: center;
}

#userTable td {
	text-align: center;
	margin: 0 auto;
	backGround-color: beige;
}
</style>
<script>
	function check() {

		//정규식 ....
		var regnumber = /^[0-9]{4}$/;
		var regname = /^[가-힣]{2,}$/; //한글만 고객명 
		var regphone = /^01(?:0|1|0)-(?:\d{4})-\d{4}$/; //전화번호 with 하이픈 

		var inputForm = document.getElementById("userinputd");
		//정규식 ....

		if (inputForm.iname.value == "") {
			alert("이름을 입력하세요");
			inputForm.iname.focus();
		} else {
			if (regname.test(inputForm.iname.value)) {
				if (regphone.test(inputForm.itel.value)) {
					alert("정상입니다.");
					inputForm.submit();

				} else {
					alert("전화번호는 010-xxxx-xxxx로 이루어져야합니다.");
					inputForm.itel.focus();
				}
			} else {

				alert("한글만 입력하세요.");
				inputForm.iname.value = "";
				inputForm.iname.focus();
			}
		}

	}
</script>

</head>
<body>
	<header> 고객관리 ver 1.0 </header>
	<nav>
		<ul>
			<ui> <a href="write.jsp">고객등록</a></ui>
			<ui> <a href="list.jsp">고객보기</a></ui>
			<ui> <a href="main.jsp">홈으로</a></ui>
		</ul>
	</nav>
	<section>
		<h2 align="center">고객등록</h2>
		<form id="userinputd" action=input.do method=post>
			<table id="userTable" border=1 align="center" width=500px>
				<tr>
					<td width=30%>고객번호</td>
					<td><input type=text length=8 name='inumber' id='inumber'></td>
				</tr>
				<tr>
					<td width=30%>고객명</td>
					<td><input type=text length=8 name='iname' id='iname'>
					</td>
				</tr>
				<tr>
					<td width=30%>전화번호</td>
					<td><input type=text length=8 name='itel'></td>
				</tr>
				<tr>
					<td width=30%>주소</td>
					<td><input type=text length=8 name='iaddr'></td>
				</tr>

				<tr>
					<td width=30%>유형</td>
					<td><input type=text length=8 name='itype'></td>
				</tr>
				<tr>
					<td width=20%>취미</td>
					<td><input type=checkbox name='userhobby' value='travel'>여행
						<input type=checkbox name='userhobby' value='sports'>스포츠 <input
						type=checkbox name='userhobby' value='money'>재테크 <input
						type=checkbox name='userhobby' value='read'>독서</td>
				</tr>
				<tr>
					<td width=30%>가입일자</td>
					<td><input type=text length=8 name='idate'></td>
				</tr>
				<tr>
					<td colspan=2><input type="submit" value="저장" id="btn"
						> <input type="reset" value="초기화">
					</td>
				</tr>
			</table>
		</form>
	</section>
	<footer> 개발자 : 김도윤 </footer>
</body>
</html>