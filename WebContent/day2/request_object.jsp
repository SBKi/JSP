<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP1 프로젝트[3]</title>
</head>
<body>

	<h3>Request 객체의 정보</h3>
	<hr>
	<ul>
		<li>문자 인코딩 형식 : <%= request.getCharacterEncoding() %></li>
		<li>요청 URL : <%= request.getRequestURL() %></li>
		<li>요청 URI : <%= request.getRequestURI() %></li>
		<li>서버  <%= request.getLocalAddr() %></li>
		<li>클라이언트 : <%= request.getRemoteAddr() %></li>
		<li>요청 URI : <%= request.getRequestURI() %></li>
	</ul>
	<form action="request_parameter.jsp">
		<input type="text" name="name">
		<input type="number" name="age">
		<input type="text" name="location">
		<button type="submit">submit</button>
	</form>
</body>
</html>