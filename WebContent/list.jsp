<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>

<html>

<head>

<meta charset='utf-8'>
<title>Insert title here</title>
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
	function search(String number){
		
	}
	function update(String number){
		
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
		<h2 align="center">고객보기</h2>
		<form id="userinputd" action=plist.do method=post>
			<table id="userTable" border=1 align="center" width=600px>
				<tr>
					<td>고객번호</td>
					<td>고객명</td>
					<td>전화번호</td>
					<td>주소</td>
					<td>유형</td>
					<td>취미</td>
					<td>가입일자</td>
					<td>수정</td>
					<td>삭제</td>
				</tr>
				<c:forEach var="m" items="${mlist}" >
					<tr>
						<td><input type="submit" value="${m.number}" name="number"></td>
						<td>${m.name}</td>
						<td>${m.tel }</td>
						<td>${m.addr}</td>
						<td>${m.type}</td>
						<td>${m.hobby }</td>
						<td>${m.date}</td>
						<td><a href="list.do?no=${m.number}">수정하기</a></td>
						<td><a href="list.do?num=${m.number}">삭제하기</a></td>
					</tr>
				</c:forEach>
			</table>
		</form>
	</section>
	<footer> 개발자 : 김도윤 </footer>
</body>
</html>