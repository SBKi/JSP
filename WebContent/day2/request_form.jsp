<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>JSP1 프로젝트[5]</title>
</head>
<body>
	<h3>Request Parameter 연습</h3>
	<hr>
	<h5> method= "get"</h5>
	<form action="request_parameter.jsp" method="get">
		<input type="text" name="name" placeholder="이름을 입력하세요">
		<input type="number" name="age" placeholder="나이을 입력하세요">
		<input type="text" name="location" placeholder="지역을 입력하세요">
		<input type="submit" value="전송">
	</form>
	
	<h5> method= "post"</h5>
		<form action="request_parameter.jsp" method="post">
		<input type="text" name="name" placeholder="이름을 입력하세요">
		<input type="number" name="age" placeholder="나이을 입력하세요">
		<input type="text" name="location" placeholder="지역을 입력하세요">
		<input type="submit" value="전송">
	</form>
</body>
</html>