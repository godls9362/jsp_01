<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>

<html>

<head>

<meta charset='utf-8'>

<title>update</title>

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
		<form id="userinputd" action=update.do method=post>
			<table id="userTable" border=1 align="center" width=500px>
				<tr>
				
					<td width=30%>고객번호</td>
					<% String inputNum= (String) request.getParameter("inputNum");%>
					<td><%=inputNum %></td>
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
					<td><input type=checkbox name='ihobby' value='travel'>여행
						<input type=checkbox name='ihobby' value='sports'>스포츠 <input
						type=checkbox name='ihobby' value='money'>재테크 <input
						type=checkbox name='ihobby' value='read'>독서</td>
				</tr>
				<tr>
					<td width=30%>가입일자</td>
					<td><input type=text length=8 name='idate'></td>
				</tr>
				<tr>
					<td colspan=2>
					<input type="submit" value="저장" id="btn"> 
					<input type="reset" value="초기화">
					</td>
				</tr>
			</table>
		</form>
	</section>
	<footer> 개발자 : 김도윤 </footer>
</body>
</html>