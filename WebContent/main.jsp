<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8'>
<title>main</title>
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
	width: 500px;
	height: 400px;
	float: left;
	background-color: lightyellow;
	text-align: center;
}

aside {
	width: 200px;
	height: 400px;
	float: left;
	background-color: orange;
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


</style>
</head>
<body>
	<header>고객관리 ver 1.0</header>
	<nav>
		<ul>
			<ui>
			<a href="write.jsp">고객등록</a></ui>
			<ui>
			<a href="list.jsp" >고객보기</a></ui>
			<ui>
			<a href="main.jsp">홈으로</a></ui>
		</ul>
	</nav>

	<section>최신글보기 영역</section>

	<aside>login</aside>

	<footer>개발자 : 김도윤</footer>
</body>
</html>