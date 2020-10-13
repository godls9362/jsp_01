<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>

<html>

<head>

<meta charset='utf-8'>

<title>write_temp</title>

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
	background-color:  lightgray;
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
		<ul >
			<ui> <a href="write.jsp">고객등록</a></ui>
			<ui> <a href="input.do" >고객보기</a></ui>
			<ui> <a href="main.jsp">홈으로</a></ui>
		</ul>
	</nav>
	<section>
		<h2 align="center">고객보기</h2>
		<form id="userinputd" action=input.do method=post>
			<table id="userTable" border=1 align="center" width=500px> 
				<tr>
					<td width=30%>고객번호</td>
					<c:forEach var="m" items="${Mlist}">
					 <td>${m.number}</td>
					</c:forEach>
				</tr>
				<tr>
					<td width=30%>고객명</td>
					<c:forEach var="m" items="${Mlist}">
					 <td>${m.name}</td>
					</c:forEach>
				
				</tr>
					<tr>
					<td width=30%>고객번호</td>
					<c:forEach var="m" items="${Mlist}">
					 <td>${m.tel}</td>
					</c:forEach>
				</tr>
				<tr>
					<td width=30%>주소</td>
					<c:forEach var="m" items="${Mlist}">
					 <td>${m.addr}</td>
					</c:forEach>
				</tr>
				<tr>
					<td width=30%>유형</td>
					<c:forEach var="m" items="${Mlist}">
					 <td>${m.type}</td>
					</c:forEach>
				</tr>
					<tr>
					<td width=30%>취미</td>
					<c:forEach var="m" items="${Mlist}">
					 <td>${m.hobby}</td>
					</c:forEach>
				</tr>
				<tr>
					<td width=30%>가입일자</td>
					<c:forEach var="m" items="${Mlist}">
					 <td>${m.date}</td>
					</c:forEach>
				</tr>
		
			</table>
		</form>
	</section>
	<footer> 개발자 : 김도윤 </footer>
</body>
</html>